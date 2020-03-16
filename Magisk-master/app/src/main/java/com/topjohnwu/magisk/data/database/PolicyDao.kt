package com.topjohnwu.magisk.data.database

import android.content.Context
import android.content.pm.PackageManager
import com.topjohnwu.magisk.Const
import com.topjohnwu.magisk.data.database.base.*
import com.topjohnwu.magisk.extensions.now
import com.topjohnwu.magisk.model.entity.MagiskPolicy
import com.topjohnwu.magisk.model.entity.toMap
import com.topjohnwu.magisk.model.entity.toPolicy
import timber.log.Timber
import java.util.concurrent.TimeUnit


class PolicyDao(
    private val context: Context
) : BaseDao() {

    override val table: String = DatabaseDefinition.Table.POLICY

    fun deleteOutdated(
        nowSeconds: Long = TimeUnit.MILLISECONDS.toSeconds(now)
    ) = query<Delete> {
        condition {
            greaterThan("until", "0")
            and {
                lessThan("until", nowSeconds.toString())
            }
            or {
                lessThan("until", "0")
            }
        }
    }.ignoreElement()

    fun delete(packageName: String) = query<Delete> {
        condition {
            equals("package_name", packageName)
        }
    }.ignoreElement()

    fun delete(uid: Int) = query<Delete> {
        condition {
            equals("uid", uid)
        }
    }.ignoreElement()

    fun fetch(uid: Int) = query<Select> {
        condition {
            equals("uid", uid)
        }
    }.map { it.first().toPolicySafe() }

    fun update(policy: MagiskPolicy) = query<Replace> {
        values(policy.toMap())
    }.ignoreElement()

    fun fetchAll() = query<Select> {
        condition {
            equals("uid/100000", Const.USER_ID)
        }
    }.map { it.mapNotNull { it.toPolicySafe() } }


    private fun Map<String, String>.toPolicySafe(): MagiskPolicy? {
        return runCatching { toPolicy(context.packageManager) }.getOrElse {
            Timber.e(it)
            if (it is PackageManager.NameNotFoundException) {
                val uid = getOrElse("uid") { null } ?: return null
                delete(uid).subscribe()
            }
            null
        }
    }

}