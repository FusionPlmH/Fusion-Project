package com.topjohnwu.magisk

import android.app.Application
import android.content.Context
import android.content.res.Configuration
import androidx.appcompat.app.AppCompatDelegate
import androidx.multidex.MultiDex
import androidx.room.Room
import androidx.work.WorkManager
import androidx.work.impl.WorkDatabase
import androidx.work.impl.WorkDatabase_Impl
import com.topjohnwu.magisk.data.database.RepoDatabase
import com.topjohnwu.magisk.data.database.RepoDatabase_Impl
import com.topjohnwu.magisk.di.ActivityTracker
import com.topjohnwu.magisk.di.koinModules
import com.topjohnwu.magisk.extensions.get
import com.topjohnwu.magisk.extensions.unwrap
import com.topjohnwu.magisk.utils.RootInit
import com.topjohnwu.magisk.utils.updateConfig
import com.topjohnwu.superuser.Shell
import org.koin.android.ext.koin.androidContext
import org.koin.core.context.startKoin
import timber.log.Timber

open class App() : Application() {

    constructor(o: Any) : this() {
        Info.stub = DynAPK.load(o)
    }

    init {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        Shell.Config.setFlags(Shell.FLAG_MOUNT_MASTER or Shell.FLAG_USE_MAGISK_BUSYBOX)
        Shell.Config.verboseLogging(BuildConfig.DEBUG)
        Shell.Config.addInitializers(RootInit::class.java)
        Shell.Config.setTimeout(2)
        Room.setFactory {
            when (it) {
                WorkDatabase::class.java -> WorkDatabase_Impl()
                RepoDatabase::class.java -> RepoDatabase_Impl()
                else -> null
            }
        }
    }

    override fun attachBaseContext(base: Context) {
        // Basic setup
        if (BuildConfig.DEBUG)
            MultiDex.install(base)
        Timber.plant(Timber.DebugTree())

        // Some context magic
        val app: Application
        val impl: Context
        if (base is Application) {
            app = base
            impl = base.baseContext
        } else {
            app = this
            impl = base
        }
        val wrapped = impl.wrap()
        super.attachBaseContext(wrapped)

        // Normal startup
        startKoin {
            androidContext(wrapped)
            modules(koinModules)
        }
        ResourceMgr.init(impl)
        app.registerActivityLifecycleCallbacks(get<ActivityTracker>())
        WorkManager.initialize(impl.wrapJob(), androidx.work.Configuration.Builder().build())
    }

    // This is required as some platforms expect ContextImpl
    override fun getBaseContext(): Context {
        return super.getBaseContext().unwrap()
    }

    override fun onConfigurationChanged(newConfig: Configuration) {
        resources.updateConfig(newConfig)
        if (!isRunningAsStub)
            super.onConfigurationChanged(newConfig)
    }
}
