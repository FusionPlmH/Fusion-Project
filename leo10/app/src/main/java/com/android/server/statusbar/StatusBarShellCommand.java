package com.android.server.statusbar;

import android.content.ComponentName;
import android.os.RemoteException;
import android.os.ShellCommand;
import android.service.quicksettings.TileService;
import com.android.internal.statusbar.IStatusBarService;
import java.io.PrintWriter;

public class StatusBarShellCommand extends ShellCommand {
    private final IStatusBarService mInterface;

    public StatusBarShellCommand(StatusBarManagerService statusBarManagerService) {
        this.mInterface = statusBarManagerService;
    }

    private int runAddTile() throws RemoteException {
        this.mInterface.addTile(ComponentName.unflattenFromString(getNextArgRequired()));
        return 0;
    }

    private int runClickTile() throws RemoteException {
        this.mInterface.clickTile(ComponentName.unflattenFromString(getNextArgRequired()));
        return 0;
    }

    private int runCollapse() throws RemoteException {
        this.mInterface.collapsePanels();
        return 0;
    }

    private int runExpandNotifications() throws RemoteException {
        this.mInterface.expandNotificationsPanel();
        return 0;
    }

    private int runExpandSettings() throws RemoteException {
        this.mInterface.expandSettingsPanel(null);
        return 0;
    }

    private int runRemoveTile() throws RemoteException {
        this.mInterface.remTile(ComponentName.unflattenFromString(getNextArgRequired()));
        return 0;
    }

    public int onCommand(String str) {
        if (str == null) {
            return handleDefaultCommands(str);
        }
        try {
            if (str.equals("expand-notifications")) {
                return runExpandNotifications();
            }
            if (str.equals("expand-settings")) {
                return runExpandSettings();
            }
            if (str.equals("collapse")) {
                return runCollapse();
            }
            if (str.equals("add-tile")) {
                return runAddTile();
            }
            if (str.equals("remove-tile")) {
                return runRemoveTile();
            }
            if (str.equals("click-tile")) {
                return runClickTile();
            }
            if (!str.equals("check-support")) {
                return handleDefaultCommands(str);
            }
            //getOutPrintWriter().println(String.valueOf(TileService.isQuickSettingsSupported()));
            return 0;
        } catch (RemoteException e) {
            getOutPrintWriter().println("Remote exception: " + e);
            return -1;
        }
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("Status bar commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println("");
        outPrintWriter.println("  expand-notifications");
        outPrintWriter.println("    Open the notifications panel.");
        outPrintWriter.println("");
        outPrintWriter.println("  expand-settings");
        outPrintWriter.println("    Open the notifications panel and expand quick settings if present.");
        outPrintWriter.println("");
        outPrintWriter.println("  collapse");
        outPrintWriter.println("    Collapse the notifications and settings panel.");
        outPrintWriter.println("");
        outPrintWriter.println("  add-tile COMPONENT");
        outPrintWriter.println("    Add a TileService of the specified component");
        outPrintWriter.println("");
        outPrintWriter.println("  remove-tile COMPONENT");
        outPrintWriter.println("    Remove a TileService of the specified component");
        outPrintWriter.println("");
        outPrintWriter.println("  click-tile COMPONENT");
        outPrintWriter.println("    Click on a TileService of the specified component");
        outPrintWriter.println("");
        outPrintWriter.println("  check-support");
        outPrintWriter.println("    Check if this device supports QS + APIs");
        outPrintWriter.println("");
    }
}
