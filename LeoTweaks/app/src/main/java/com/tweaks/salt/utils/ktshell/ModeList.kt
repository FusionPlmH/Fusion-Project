package com.tweaks.salt.utils.ktshell

import android.content.Context



/**
 * Created by Hello on 2018/06/03.
 */

open class ModeList {
    internal var DEFAULT = "balance";
    internal var POWERSAVE = "powersave";
    internal var PERFORMANCE = "performance";
    internal var FAST = "fast";
    internal var BALANCE = "balance";
    internal var IGONED = "igoned";
    internal var keepShell: KeepShell? = null
    private var context: Context? = null
    private var currentPowercfg: String = ""
    private var currentPowercfgApp: String = ""

    constructor() {
    }

    constructor(context: Context) {
        this.context = context
    }

    internal fun getModName(mode: String): String {
        when (mode) {
            POWERSAVE -> return "省电模式"
            PERFORMANCE -> return "性能模式"
            FAST -> return "极速模式"
            BALANCE -> return "均衡模式"
            else -> return "未知模式"
        }
    }




    internal fun getCurrentPowerMode(): String? {
        if (!this.currentPowercfg.isEmpty()) {
            return this.currentPowercfg
        }
        return Platform.Props.getProp("leo.powercfg")
    }

    internal fun getCurrentPowermodeApp(): String? {
        if (!this.currentPowercfgApp.isEmpty()) {
            return this.currentPowercfgApp
        }
        return Platform.Props.getProp("leo.powercfg_app")
    }

    internal fun setCurrent(powerCfg: String, app: String): ModeList {
        setCurrentPowercfg(powerCfg)
        setCurrentPowercfgApp(app)
        return this
    }

    internal fun setCurrentPowercfg(powerCfg: String): ModeList {
        currentPowercfg = powerCfg
        Platform.Props.setPorp("leo.powercfg", powerCfg)
        return this
    }

    internal fun setCurrentPowercfgApp(app: String): ModeList {
        currentPowercfgApp = app
        Platform.Props.setPorp("leo.powercfg_app", app)
        return this
    }

    internal fun keepShellExec(cmd: String) {
        /*
        if (keepShell == null) {
            keepShell = KeepShell(context)
        }
        keepShell!!.doCmd(cmd)
        */
        KeepShellSync.doCmdSync(cmd)
    }

    internal fun executePowercfgMode(mode: String): ModeList {
        keepShellExec("sh ${Consts.POWER_CFG_PATH} " + mode)
        setCurrentPowercfg(mode)
        return this
    }

    internal fun executePowercfgMode(mode: String, app: String): ModeList {
        executePowercfgMode(mode)
        setCurrentPowercfgApp(app)
        return this
    }

    internal fun densityKeepShell(): ModeList {
        if (keepShell != null) {
            keepShell!!.tryExit()
            keepShell = null
        }
        return this
    }


    internal fun executePowercfgModeOnce(mode: String): ModeList {
        KeepShellSync.doCmdSync("sh ${Consts.POWER_CFG_PATH} " + mode)
        setCurrentPowercfg(mode)
        return this
    }

    internal fun executePowercfgModeOnce(mode: String, app: String): ModeList {
        KeepShellSync.doCmdSync("sh ${Consts.POWER_CFG_PATH} " + mode)
        setCurrent(mode, app)
        return this
    }
}
