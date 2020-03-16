package com.android.server.statusbar;

import android.content.ComponentName;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ShellCommand;
import java.io.PrintWriter;

public class StatusBarShellCommand extends ShellCommand {
    private static final IBinder sToken = new StatusBarShellCommandToken();
    private final Context mContext;
    private final StatusBarManagerService mInterface;

    private static final class StatusBarShellCommandToken extends Binder {
        private StatusBarShellCommandToken() {
        }
    }

    public StatusBarShellCommand(StatusBarManagerService statusBarManagerService, Context context) {
        this.mInterface = statusBarManagerService;
        this.mContext = context;
    }

    private int runAddTile() throws RemoteException {
        StatusBarManagerService statusBarManagerService = this.mInterface;
        String nextArgRequired = getNextArgRequired();
        if (nextArgRequired == null) {
        }
        statusBarManagerService.addTile(ComponentName.unflattenFromString(nextArgRequired));
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

    private int runDisableForSetup() {
        String nextArgRequired = getNextArgRequired();
        if (nextArgRequired != null) {
        }
        String packageName = this.mContext.getPackageName();
        if (packageName != null) {
        }
        if (Boolean.parseBoolean(nextArgRequired)) {
            this.mInterface.disable(61145088, sToken, packageName);
            this.mInterface.disable2(16, sToken, packageName);
        } else {
            this.mInterface.disable(0, sToken, packageName);
            this.mInterface.disable2(0, sToken, packageName);
        }
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

    private int runGetStatusIcons() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        for (String println : this.mInterface.getStatusBarIcons()) {
            outPrintWriter.println(println);
        }
        return 0;
    }

    private int runRemoveTile() throws RemoteException {
        StatusBarManagerService statusBarManagerService = this.mInterface;
        ComponentName unflattenFromString = ComponentName.unflattenFromString(getNextArgRequired());
        if (unflattenFromString == null) {
        }
        statusBarManagerService.remTile(unflattenFromString);
        return 0;
    }

    /* JADX WARNING: Missing block: B:21:0x0058, code skipped:
            if (r4.equals("search") != false) goto L_0x005c;
     */
    private int runSendDisableFlag() {
        /*
        r12 = this;
        r0 = r12.mContext;
        r0 = r0.getPackageName();
        if (r0 == 0) goto L_0x0008;
    L_0x0008:
        r1 = 0;
        r2 = 0;
        r3 = new android.app.StatusBarManager$DisableInfo;
        r3.<init>();
        r4 = r12.getNextArg();
        if (r4 != 0) goto L_0x0015;
    L_0x0015:
        r5 = 0;
        if (r4 == 0) goto L_0x0082;
    L_0x0018:
        r6 = -1;
        r7 = r4.hashCode();
        r8 = 4;
        r9 = 3;
        r10 = 2;
        r11 = 1;
        switch(r7) {
            case -906336856: goto L_0x0051;
            case -755976775: goto L_0x0046;
            case 3208415: goto L_0x003b;
            case 1011652819: goto L_0x0030;
            case 1082295672: goto L_0x0025;
            default: goto L_0x0024;
        };
    L_0x0024:
        goto L_0x005b;
    L_0x0025:
        r5 = "recents";
        r5 = r4.equals(r5);
        if (r5 == 0) goto L_0x0024;
    L_0x002e:
        r5 = r10;
        goto L_0x005c;
    L_0x0030:
        r5 = "statusbar-expansion";
        r5 = r4.equals(r5);
        if (r5 == 0) goto L_0x0024;
    L_0x0039:
        r5 = r8;
        goto L_0x005c;
    L_0x003b:
        r5 = "home";
        r5 = r4.equals(r5);
        if (r5 == 0) goto L_0x0024;
    L_0x0044:
        r5 = r11;
        goto L_0x005c;
    L_0x0046:
        r5 = "notification-alerts";
        r5 = r4.equals(r5);
        if (r5 == 0) goto L_0x0024;
    L_0x004f:
        r5 = r9;
        goto L_0x005c;
    L_0x0051:
        r7 = "search";
        r7 = r4.equals(r7);
        if (r7 == 0) goto L_0x0024;
    L_0x005a:
        goto L_0x005c;
    L_0x005b:
        r5 = r6;
    L_0x005c:
        if (r5 == 0) goto L_0x0077;
    L_0x005e:
        if (r5 == r11) goto L_0x0073;
    L_0x0060:
        if (r5 == r10) goto L_0x006f;
    L_0x0062:
        if (r5 == r9) goto L_0x006b;
    L_0x0064:
        if (r5 == r8) goto L_0x0067;
    L_0x0066:
        goto L_0x007b;
    L_0x0067:
        r3.setStatusBarExpansionDisabled(r11);
        goto L_0x007b;
    L_0x006b:
        r3.setNotificationPeekingDisabled(r11);
        goto L_0x007b;
    L_0x006f:
        r3.setRecentsDisabled(r11);
        goto L_0x007b;
    L_0x0073:
        r3.setNagivationHomeDisabled(r11);
        goto L_0x007b;
    L_0x0077:
        r3.setSearchDisabled(r11);
    L_0x007b:
        r4 = r12.getNextArg();
        if (r4 != 0) goto L_0x0081;
    L_0x0081:
        goto L_0x0015;
    L_0x0082:
        r6 = r3.toFlags();
        if (r6 != 0) goto L_0x0088;
    L_0x0088:
        r7 = r12.mInterface;
        r8 = r6.first;
        r8 = (java.lang.Integer) r8;
        r8 = r8.intValue();
        r9 = sToken;
        r7.disable(r8, r9, r0);
        r7 = r12.mInterface;
        r8 = r6.second;
        r8 = (java.lang.Integer) r8;
        r8 = r8.intValue();
        r9 = sToken;
        r7.disable2(r8, r9, r0);
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.statusbar.StatusBarShellCommand.runSendDisableFlag():int");
    }

    public int onCommand(java.lang.String r6) {
        /*
        r5 = this;
        if (r6 != 0) goto L_0x0007;
    L_0x0002:
        r0 = r5.handleDefaultCommands(r6);
        return r0;
    L_0x0007:
        r0 = -1;
        r1 = r6.hashCode();	 Catch:{ RemoteException -> 0x00c5 }
        r2 = 0;
        switch(r1) {
            case -1282000806: goto L_0x0070;
            case -1239176554: goto L_0x0066;
            case -1052548778: goto L_0x005a;
            case -823073837: goto L_0x0050;
            case -632085587: goto L_0x0046;
            case -339726761: goto L_0x003b;
            case 901899220: goto L_0x0030;
            case 1612300298: goto L_0x0026;
            case 1629310709: goto L_0x001c;
            case 1672031734: goto L_0x0012;
            default: goto L_0x0010;
        };	 Catch:{ RemoteException -> 0x00c5 }
    L_0x0010:
        goto L_0x007a;
    L_0x0012:
        r1 = "expand-settings";
        r1 = r6.equals(r1);	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 == 0) goto L_0x0010;
    L_0x001a:
        r1 = 1;
        goto L_0x007b;
    L_0x001c:
        r1 = "expand-notifications";
        r1 = r6.equals(r1);	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 == 0) goto L_0x0010;
    L_0x0024:
        r1 = r2;
        goto L_0x007b;
    L_0x0026:
        r1 = "check-support";
        r1 = r6.equals(r1);	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 == 0) goto L_0x0010;
    L_0x002e:
        r1 = 6;
        goto L_0x007b;
    L_0x0030:
        r1 = "disable-for-setup";
        r1 = r6.equals(r1);	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 == 0) goto L_0x0010;
    L_0x0038:
        r1 = 8;
        goto L_0x007b;
    L_0x003b:
        r1 = "remove-tile";
        r1 = r6.equals(r1);	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 == 0) goto L_0x0010;
    L_0x0044:
        r1 = 4;
        goto L_0x007b;
    L_0x0046:
        r1 = "collapse";
        r1 = r6.equals(r1);	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 == 0) goto L_0x0010;
    L_0x004e:
        r1 = 2;
        goto L_0x007b;
    L_0x0050:
        r1 = "click-tile";
        r1 = r6.equals(r1);	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 == 0) goto L_0x0010;
    L_0x0058:
        r1 = 5;
        goto L_0x007b;
    L_0x005a:
        r1 = "send-disable-flag";
        r1 = r6.equals(r1);	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 == 0) goto L_0x0010;
    L_0x0063:
        r1 = 9;
        goto L_0x007b;
    L_0x0066:
        r1 = "get-status-icons";
        r1 = r6.equals(r1);	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 == 0) goto L_0x0010;
    L_0x006e:
        r1 = 7;
        goto L_0x007b;
    L_0x0070:
        r1 = "add-tile";
        r1 = r6.equals(r1);	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 == 0) goto L_0x0010;
    L_0x0078:
        r1 = 3;
        goto L_0x007b;
    L_0x007a:
        r1 = r0;
    L_0x007b:
        switch(r1) {
            case 0: goto L_0x00bf;
            case 1: goto L_0x00ba;
            case 2: goto L_0x00b5;
            case 3: goto L_0x00b0;
            case 4: goto L_0x00ab;
            case 5: goto L_0x00a6;
            case 6: goto L_0x0092;
            case 7: goto L_0x008d;
            case 8: goto L_0x0088;
            case 9: goto L_0x0083;
            default: goto L_0x007e;
        };	 Catch:{ RemoteException -> 0x00c5 }
    L_0x007e:
        r0 = r5.handleDefaultCommands(r6);	 Catch:{ RemoteException -> 0x00c5 }
        goto L_0x00c4;
    L_0x0083:
        r0 = r5.runSendDisableFlag();	 Catch:{ RemoteException -> 0x00c5 }
        return r0;
    L_0x0088:
        r0 = r5.runDisableForSetup();	 Catch:{ RemoteException -> 0x00c5 }
        return r0;
    L_0x008d:
        r0 = r5.runGetStatusIcons();	 Catch:{ RemoteException -> 0x00c5 }
        return r0;
    L_0x0092:
        r1 = r5.getOutPrintWriter();	 Catch:{ RemoteException -> 0x00c5 }
        if (r1 != 0) goto L_0x0098;
    L_0x0098:
        r3 = android.service.quicksettings.TileService.isQuickSettingsSupported();	 Catch:{ RemoteException -> 0x00c5 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ RemoteException -> 0x00c5 }
        if (r3 == 0) goto L_0x00a2;
    L_0x00a2:
        r1.println(r3);	 Catch:{ RemoteException -> 0x00c5 }
        return r2;
    L_0x00a6:
        r0 = r5.runClickTile();	 Catch:{ RemoteException -> 0x00c5 }
        return r0;
    L_0x00ab:
        r0 = r5.runRemoveTile();	 Catch:{ RemoteException -> 0x00c5 }
        return r0;
    L_0x00b0:
        r0 = r5.runAddTile();	 Catch:{ RemoteException -> 0x00c5 }
        return r0;
    L_0x00b5:
        r0 = r5.runCollapse();	 Catch:{ RemoteException -> 0x00c5 }
        return r0;
    L_0x00ba:
        r0 = r5.runExpandSettings();	 Catch:{ RemoteException -> 0x00c5 }
        return r0;
    L_0x00bf:
        r0 = r5.runExpandNotifications();	 Catch:{ RemoteException -> 0x00c5 }
        return r0;
    L_0x00c4:
        return r0;
    L_0x00c5:
        r1 = move-exception;
        r2 = r5.getOutPrintWriter();
        if (r2 == 0) goto L_0x00cc;
    L_0x00cc:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Remote exception: ";
        r3.append(r4);
        r3.append(r1);
        r3 = r3.toString();
        r2.println(r3);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.statusbar.StatusBarShellCommand.onCommand(java.lang.String):int");
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        if (outPrintWriter != null) {
        }
        outPrintWriter.println("Status bar commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help text.");
        String str = "";
        outPrintWriter.println(str);
        outPrintWriter.println("  expand-notifications");
        outPrintWriter.println("    Open the notifications panel.");
        outPrintWriter.println(str);
        outPrintWriter.println("  expand-settings");
        outPrintWriter.println("    Open the notifications panel and expand quick settings if present.");
        outPrintWriter.println(str);
        outPrintWriter.println("  collapse");
        outPrintWriter.println("    Collapse the notifications and settings panel.");
        outPrintWriter.println(str);
        outPrintWriter.println("  add-tile COMPONENT");
        outPrintWriter.println("    Add a TileService of the specified component");
        outPrintWriter.println(str);
        outPrintWriter.println("  remove-tile COMPONENT");
        outPrintWriter.println("    Remove a TileService of the specified component");
        outPrintWriter.println(str);
        outPrintWriter.println("  click-tile COMPONENT");
        outPrintWriter.println("    Click on a TileService of the specified component");
        outPrintWriter.println(str);
        outPrintWriter.println("  check-support");
        outPrintWriter.println("    Check if this device supports QS + APIs");
        outPrintWriter.println(str);
        outPrintWriter.println("  get-status-icons");
        outPrintWriter.println("    Print the list of status bar icons and the order they appear in");
        outPrintWriter.println(str);
        outPrintWriter.println("  disable-for-setup DISABLE");
        outPrintWriter.println("    If true, disable status bar components unsuitable for device setup");
        outPrintWriter.println(str);
        outPrintWriter.println("  send-disable-flag FLAG...");
        outPrintWriter.println("    Send zero or more disable flags (parsed individually) to StatusBarManager");
        outPrintWriter.println("    Valid options:");
        outPrintWriter.println("        <blank>             - equivalent to \"none\"");
        outPrintWriter.println("        none                - re-enables all components");
        outPrintWriter.println("        search              - disable search");
        outPrintWriter.println("        home                - disable naviagation home");
        outPrintWriter.println("        recents             - disable recents/overview");
        outPrintWriter.println("        notification-peek   - disable notification peeking");
        outPrintWriter.println("        statusbar-expansion - disable status bar expansion");
        outPrintWriter.println(str);
    }
}
