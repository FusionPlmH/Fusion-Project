package com.topjohnwu.magisk.tasks

import com.topjohnwu.magisk.Const
import com.topjohnwu.magisk.data.database.RepoDao
import com.topjohnwu.magisk.data.network.GithubApiServices
import com.topjohnwu.magisk.model.entity.module.Repo
import io.reactivex.Flowable
import io.reactivex.Single
import io.reactivex.rxkotlin.toFlowable
import io.reactivex.schedulers.Schedulers
import se.ansman.kotshi.JsonSerializable
import timber.log.Timber
import java.net.HttpURLConnection
import java.text.SimpleDateFormat
import java.util.*
import kotlin.collections.HashSet

class RepoUpdater(
    private val api: GithubApiServices,
    private val repoDB: RepoDao
) {

    private fun loadRepos(repos: List<GithubRepoInfo>, cached: MutableSet<String>) =
            repos.toFlowable().parallel().runOn(Schedulers.io()).map {
                // Skip submission
                if (it.id == "submission")
                    return@map
                (repoDB.getRepo(it.id)?.apply { cached.remove(it.id) } ?:
                Repo(it.id)).runCatching {
                    update(it.pushDate)
                    repoDB.addRepo(this)
                }.getOrElse { Timber.e(it) }
            }.sequential()

    private fun loadPage(
        cached: MutableSet<String>,
        page: Int = 1,
        etag: String = ""
    ): Flowable<Unit> = api.fetchRepos(page, etag).flatMap {
        it.error()?.also { throw it }
        it.response()?.run {
            if (code() == HttpURLConnection.HTTP_NOT_MODIFIED)
                return@run Flowable.error<Unit>(CachedException)

            if (page == 1)
                repoDB.etagKey = headers()[Const.Key.ETAG_KEY].orEmpty().trimEtag()

            val flow = loadRepos(body()!!, cached)
            if (headers()[Const.Key.LINK_KEY].orEmpty().contains("next")) {
                flow.mergeWith(loadPage(cached, page + 1))
            } else {
                flow
            }
        }
    }

    private fun forcedReload(cached: MutableSet<String>) =
            cached.toFlowable().parallel().runOn(Schedulers.io()).map {
                runCatching {
                    Repo(it).update()
                }.getOrElse { Timber.e(it) }
            }.sequential()

    private fun String.trimEtag() = substring(indexOf('\"'), lastIndexOf('\"') + 1)

    operator fun invoke(forced: Boolean = false) : Single<Unit> {
        val cached = Collections.synchronizedSet(HashSet(repoDB.repoIDList))
        return loadPage(cached, etag = repoDB.etagKey).doOnComplete {
            repoDB.removeRepos(cached)
        }.onErrorResumeNext { it: Throwable ->
            if (it is CachedException) {
                if (forced)
                    return@onErrorResumeNext forcedReload(cached)
            } else {
                Timber.e(it)
            }
            Flowable.empty()
        }.ignoreElements().toSingleDefault(Unit)
    }

    object CachedException : Exception()
}

private val dateFormat: SimpleDateFormat =
        SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US).apply {
            timeZone = TimeZone.getTimeZone("UTC")
        }

@JsonSerializable
data class GithubRepoInfo(
    val name: String,
    val pushed_at: String
) {
    val id get() = name

    @Transient
    val pushDate = dateFormat.parse(pushed_at)!!
}
