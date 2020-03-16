package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import android.content.Context;
import android.util.Log;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.features.FeatureFactory;
import com.android.fusionleo.leoglobalactions.presentation.view.ResourceFactory;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.SecGlobalActionsAnalytics;
import com.android.fusionleo.leoglobalactions.util.UtilFactory;

import static com.android.fusionleo.global.LeoGlobalValues.AUTHOR;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;




public class DefaultActionViewModelFactory implements ActionViewModelFactory {
    private final ConditionChecker mConditionChecker;
    FeatureFactory mFeatureFactory;
    private final ResourceFactory mResourceFactory;
    private final SecGlobalActionsAnalytics mSAnalytics;
    UtilFactory mUtilFactory;




    public void setLeoPowerMenutoggle() {
        LeoStatusSettings(((Context) this.mUtilFactory.get(Context.class)));

    }



    public DefaultActionViewModelFactory(ResourceFactory resourceFactory, ConditionChecker conditionChecker, SecGlobalActionsAnalytics secGlobalActionsAnalytics) {

      mResourceFactory = resourceFactory;
       mConditionChecker = conditionChecker;
     mSAnalytics = secGlobalActionsAnalytics;
        setLeoPowerMenutoggle();
    }

    public com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModel createActionViewModel(com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions r17, java.lang.String r18) {
        /*
        r16 = this;
        r0 = r16;
        r10 = r17;
        r11 = r18;
        r1 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionInfo;
        r1.<init>();
        r12 = r1;
        r1 = r0.mConditionChecker;
        r2 = com.android.fusionleo.leoglobalactions.util.SystemConditions.IS_TABLET_DEVICE;
        r13 = r1.isEnabled(r2);
        r14 = 0;
        r1 = r18.hashCode();
        r2 = -1;
        switch(r1) {
            case -1223347878: goto L_0x007e;
            case -1131224299: goto L_0x0073;
            case -562960116: goto L_0x0067;
            case -363578088: goto L_0x005d;
            case 106858757: goto L_0x0052;
            case 730862401: goto L_0x0048;
            case 1097506319: goto L_0x003d;
            case 1629013393: goto L_0x0033;
            case 2092525919: goto L_0x0029;
            case 2146922627: goto L_0x001f;
            default: goto L_0x001d;
        };
    L_0x001d:
        goto L_0x0089;
    L_0x001f:
        r1 = "force_restart_message";
        r1 = r11.equals(r1);
        if (r1 == 0) goto L_0x0089;
    L_0x0027:
        r1 = 5;
        goto L_0x008a;
    L_0x0029:
        r1 = "bug_report";
        r1 = r11.equals(r1);
        if (r1 == 0) goto L_0x0089;
    L_0x0031:
        r1 = 4;
        goto L_0x008a;
    L_0x0033:
        r1 = "emergency";
        r1 = r11.equals(r1);
        if (r1 == 0) goto L_0x0089;
    L_0x003b:
        r1 = 3;
        goto L_0x008a;
    L_0x003d:
        r1 = "restart";
        r1 = r11.equals(r1);
        if (r1 == 0) goto L_0x0089;
    L_0x0046:
        r1 = 2;
        goto L_0x008a;
    L_0x0048:
        r1 = "bike_mode";
        r1 = r11.equals(r1);
        if (r1 == 0) goto L_0x0089;
    L_0x0050:
        r1 = 6;
        goto L_0x008a;
    L_0x0052:
        r1 = "power";
        r1 = r11.equals(r1);
        if (r1 == 0) goto L_0x0089;
    L_0x005b:
        r1 = 0;
        goto L_0x008a;
    L_0x005d:
        r1 = "data_mode";
        r1 = r11.equals(r1);
        if (r1 == 0) goto L_0x0089;
    L_0x0065:
        r1 = 7;
        goto L_0x008a;
    L_0x0067:
        r1 = "lock_down_mode";
        r1 = r11.equals(r1);
        if (r1 == 0) goto L_0x0089;
    L_0x0070:
        r1 = 8;
        goto L_0x008a;
    L_0x0073:
        r1 = "safe_mode";
        r1 = r11.equals(r1);
        if (r1 == 0) goto L_0x0089;
    L_0x007c:
        r1 = 1;
        goto L_0x008a;
    L_0x007e:
        r1 = "bixby_settings";
        r1 = r11.equals(r1);
        if (r1 == 0) goto L_0x0089;
    L_0x0086:
        r1 = 9;
        goto L_0x008a;
    L_0x0089:
        r1 = r2;
    L_0x008a:
        switch(r1) {
            case 0: goto L_0x0366;
            case 1: goto L_0x02fa;
            case 2: goto L_0x028c;
            case 3: goto L_0x022f;
            case 4: goto L_0x01ea;
            case 5: goto L_0x01c1;
            case 6: goto L_0x0164;
            case 7: goto L_0x0112;
            case 8: goto L_0x00dc;
            case 9: goto L_0x008f;
            default: goto L_0x008d;
        };
    L_0x008d:
        r1 = 0;
        return r1;
    L_0x008f:
        r7 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.BixbySettingsActionViewModel;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.BixbyHandler.class;
        r1 = r1.get(r2);
        r3 = r1;
        r3 = (com.android.fusionleo.leoglobalactions.util.BixbyHandler) r3;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.SettingsWrapper.class;
        r1 = r1.get(r2);
        r4 = r1;
        r4 = (com.android.fusionleo.leoglobalactions.util.SettingsWrapper) r4;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ThemeChecker.class;
        r1 = r1.get(r2);
        r5 = r1;
        r5 = (com.android.fusionleo.leoglobalactions.util.ThemeChecker) r5;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.LogWrapper.class;
        r1 = r1.get(r2);
        r6 = r1;
        r6 = (com.android.fusionleo.leoglobalactions.util.LogWrapper) r6;
        r1 = r7;
        r2 = r10;
        r1.<init>(r2, r3, r4, r5, r6);
        r2 = "bixby_settings";
        r12.setName(r2);
        r2 = r0.mResourceFactory;
        r3 = "tw_ic_do_settings_mtrl";
        r2 = r2.getResourceID(r3);
        r12.setIcon(r2);
        r2 = com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType.TOP_VIEW;
        r12.setViewType(r2);
        r1.setActionInfo(r12);
        return r1;
    L_0x00dc:
        r1 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.LockdownModeActionViewModel;
        r2 = r0.mSAnalytics;
        r3 = r0.mUtilFactory;
        r4 = com.android.fusionleo.leoglobalactions.util.LockPatternUtilsWrapper.class;
        r3 = r3.get(r4);
        r3 = (com.android.fusionleo.leoglobalactions.util.LockPatternUtilsWrapper) r3;
        r1.<init>(r2, r3, r10);
        r2 = "lock_down_mode";
        r12.setName(r2);
        r2 = 17040299; // 0x10403ab float:2.4247203E-38 double:8.4190263E-317;
        r2 = r0.getResString(r2);
        r12.setLabel(r2);
        r2 = r0.mResourceFactory;
        r3 = "tw_ic_do_lockdown";
        r2 = r2.getResourceID(r3);
        r12.setIcon(r2);
        r2 = com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType.CENTER_ICON_5P_VIEW;
        r12.setViewType(r2);
        r1.setActionInfo(r12);
        return r1;
    L_0x0112:
        r9 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.DataModeActionViewModel;
        r3 = r0.mConditionChecker;
        r4 = r0.mSAnalytics;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.SystemController.class;
        r1 = r1.get(r2);
        r5 = r1;
        r5 = (com.android.fusionleo.leoglobalactions.util.SystemController) r5;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.AlertDialogFactory.class;
        r1 = r1.get(r2);
        r6 = r1;
        r6 = (com.android.fusionleo.leoglobalactions.util.AlertDialogFactory) r6;
        r7 = r0.mFeatureFactory;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ResourcesWrapper.class;
        r1 = r1.get(r2);
        r8 = r1;
        r8 = (com.android.fusionleo.leoglobalactions.util.ResourcesWrapper) r8;
        r1 = r9;
        r2 = r10;
        r1.<init>(r2, r3, r4, r5, r6, r7, r8);
        r2 = "data_mode";
        r12.setName(r2);
        r2 = 17040318; // 0x10403be float:2.4247256E-38 double:8.4190357E-317;
        r2 = r0.getResString(r2);
        r12.setLabel(r2);
        r2 = r0.mResourceFactory;
        r3 = "tw_ic_do_mobiledata";
        r2 = r2.getResourceID(r3);
        r12.setIcon(r2);
        r2 = com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType.CENTER_ICON_2P_VIEW;
        r12.setViewType(r2);
        r1.setActionInfo(r12);
        return r1;
    L_0x0164:
        r15 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.BikeModeActionViewModel;
        r3 = r0.mConditionChecker;
        r4 = r0.mSAnalytics;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.AlertDialogFactory.class;
        r1 = r1.get(r2);
        r5 = r1;
        r5 = (com.android.fusionleo.leoglobalactions.util.AlertDialogFactory) r5;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.SystemController.class;
        r1 = r1.get(r2);
        r6 = r1;
        r6 = (com.android.fusionleo.leoglobalactions.util.SystemController) r6;
        r7 = r0.mFeatureFactory;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ToastController.class;
        r1 = r1.get(r2);
        r8 = r1;
        r8 = (com.android.fusionleo.leoglobalactions.util.ToastController) r8;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ResourcesWrapper.class;
        r1 = r1.get(r2);
        r9 = r1;
        r9 = (com.android.fusionleo.leoglobalactions.util.ResourcesWrapper) r9;
        r1 = r15;
        r2 = r10;
        r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9);
        r2 = "bike_mode";
        r12.setName(r2);
        r2 = 17040271; // 0x104038f float:2.4247124E-38 double:8.4190125E-317;
        r2 = r0.getResString(r2);
        r12.setLabel(r2);
        r2 = com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType.CENTER_ICON_8P_VIEW;
        r12.setViewType(r2);
        r2 = r0.mResourceFactory;
        r3 = "tw_ic_do_bikemode_square";
        r2 = r2.getResourceID(r3);
        r12.setIcon(r2);
        r1.setActionInfo(r12);
        return r1;
    L_0x01c1:
        r1 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.SimpleTextActionViewModel;
        r1.<init>();
        r3 = "force_restart_message";
        r12.setName(r3);
        r3 = 17040294; // 0x10403a6 float:2.424719E-38 double:8.419024E-317;
        r4 = r0.mResourceFactory;
        r5 = "sec_global_actions_force_restart_time";
        r4 = r4.getResourceID(r5);
        r3 = r0.getResString(r3, r4);
        r12.setStateLabel(r3);
        r12.setIcon(r2);
        r2 = com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType.BOTTOM_SIMPLE_TEXT_VIEW;
        r12.setViewType(r2);
        r1.setActionInfo(r12);
        return r1;
    L_0x01ea:
        r1 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.BugReportActionViewModel;
        r3 = r0.mUtilFactory;
        r4 = com.android.fusionleo.leoglobalactions.util.SystemController.class;
        r3 = r3.get(r4);
        r3 = (com.android.fusionleo.leoglobalactions.util.SystemController) r3;
        r4 = r0.mUtilFactory;
        r5 = com.android.fusionleo.leoglobalactions.util.ResourcesWrapper.class;
        r4 = r4.get(r5);
        r4 = (com.android.fusionleo.leoglobalactions.util.ResourcesWrapper) r4;
        r1.<init>(r10, r3, r4);
        r3 = "bug_report";
        r12.setName(r3);
        r3 = 17039731; // 0x1040173 float:2.424561E-38 double:8.4187457E-317;
        r3 = r0.getResString(r3);
        r12.setLabel(r3);
        r3 = r0.mUtilFactory;
        r4 = com.android.fusionleo.leoglobalactions.util.SystemPropertiesWrapper.class;
        r3 = r3.get(r4);
        r3 = (com.android.fusionleo.leoglobalactions.util.SystemPropertiesWrapper) r3;
        r3 = r3.getBugReportStatus();
        r12.setStateLabel(r3);
        r12.setIcon(r2);
        r2 = com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType.BOTTOM_TEXT_VIEW;
        r12.setViewType(r2);
        r1.setActionInfo(r12);
        return r1;
    L_0x022f:
        r15 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.EmergencyActionViewModel;
        r3 = r0.mConditionChecker;
        r4 = r0.mSAnalytics;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.SystemController.class;
        r1 = r1.get(r2);
        r5 = r1;
        r5 = (com.android.fusionleo.leoglobalactions.util.SystemController) r5;
        r6 = r0.mFeatureFactory;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper.class;
        r1 = r1.get(r2);
        r7 = r1;
        r7 = (com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper) r7;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ToastController.class;
        r1 = r1.get(r2);
        r8 = r1;
        r8 = (com.android.fusionleo.leoglobalactions.util.ToastController) r8;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ResourcesWrapper.class;
        r1 = r1.get(r2);
        r9 = r1;
        r9 = (com.android.fusionleo.leoglobalactions.util.ResourcesWrapper) r9;
        r1 = r15;
        r2 = r10;
        r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9);
        r2 = "emergency";
        r12.setName(r2);
        r2 = 17040319; // 0x10403bf float:2.424726E-38 double:8.419036E-317;
        r2 = r0.getResString(r2);
        r12.setLabel(r2);
        r2 = r0.mResourceFactory;
        r3 = "tw_ic_do_emergencymode";
        r2 = r2.getResourceID(r3);
        r12.setIcon(r2);
        r2 = com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType.CENTER_ICON_4P_VIEW;
        r12.setViewType(r2);
        r1.setActionInfo(r12);
        return r1;
    L_0x028c:
        r15 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.RestartActionViewModel;
        r3 = r0.mConditionChecker;
        r4 = r0.mSAnalytics;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager.class;
        r1 = r1.get(r2);
        r5 = r1;
        r5 = (com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager) r5;
        r6 = r0.mFeatureFactory;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ToastController.class;
        r1 = r1.get(r2);
        r7 = r1;
        r7 = (com.android.fusionleo.leoglobalactions.util.ToastController) r7;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper.class;
        r1 = r1.get(r2);
        r8 = r1;
        r8 = (com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper) r8;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ResourcesWrapper.class;
        r1 = r1.get(r2);
        r9 = r1;
        r9 = (com.android.fusionleo.leoglobalactions.util.ResourcesWrapper) r9;
        r1 = r15;
        r2 = r10;
        r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9);
        r2 = "restart";
        r12.setName(r2);
        r2 = 17040307; // 0x10403b3 float:2.4247225E-38 double:8.4190303E-317;
        r2 = r0.getResString(r2);
        r12.setLabel(r2);
        if (r13 == 0) goto L_0x02db;
    L_0x02d7:
        r2 = 17040286; // 0x104039e float:2.4247166E-38 double:8.41902E-317;
        goto L_0x02de;
    L_0x02db:
        r2 = 17040285; // 0x104039d float:2.4247163E-38 double:8.4190194E-317;
    L_0x02de:
        r3 = r0.getResString(r2);
        r12.setDescription(r3);
        r3 = r0.mResourceFactory;
        r4 = "tw_ic_do_restart";
        r3 = r3.getResourceID(r4);
        r12.setIcon(r3);
        r3 = com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType.CENTER_ICON_3P_VIEW;
        r12.setViewType(r3);
        r1.setActionInfo(r12);
        return r1;
    L_0x02fa:
        r9 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.SafeModeActionViewModel;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager.class;
        r1 = r1.get(r2);
        r3 = r1;
        r3 = (com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager) r3;
        r4 = r0.mConditionChecker;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper.class;
        r1 = r1.get(r2);
        r5 = r1;
        r5 = (com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper) r5;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ResourcesWrapper.class;
        r1 = r1.get(r2);
        r6 = r1;
        r6 = (com.android.fusionleo.leoglobalactions.util.ResourcesWrapper) r6;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ToastController.class;
        r1 = r1.get(r2);
        r7 = r1;
        r7 = (com.android.fusionleo.leoglobalactions.util.ToastController) r7;
        r8 = r0.mSAnalytics;
        r1 = r9;
        r2 = r10;
        r1.<init>(r2, r3, r4, r5, r6, r7, r8);
        r2 = "safe_mode";
        r12.setName(r2);
        r2 = 17040308; // 0x10403b4 float:2.4247228E-38 double:8.419031E-317;
        r2 = r0.getResString(r2);
        r12.setLabel(r2);
        if (r13 == 0) goto L_0x0347;
    L_0x0343:
        r2 = 17040288; // 0x10403a0 float:2.4247172E-38 double:8.419021E-317;
        goto L_0x034a;
    L_0x0347:
        r2 = 17040287; // 0x104039f float:2.424717E-38 double:8.4190204E-317;
    L_0x034a:
        r3 = r0.getResString(r2);
        r12.setDescription(r3);
        r3 = r0.mResourceFactory;
        r4 = "tw_ic_do_safemode";
        r3 = r3.getResourceID(r4);
        r12.setIcon(r3);
        r3 = com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType.CENTER_ICON_1P_VIEW;
        r12.setViewType(r3);
        r1.setActionInfo(r12);
        return r1;
    L_0x0366:
        r15 = new com.android.fusionleo.leoglobalactions.presentation.viewmodel.PowerActionViewModel;
        r3 = r0.mConditionChecker;
        r4 = r0.mSAnalytics;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager.class;
        r1 = r1.get(r2);
        r5 = r1;
        r5 = (com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager) r5;
        r6 = r0.mFeatureFactory;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ToastController.class;
        r1 = r1.get(r2);
        r7 = r1;
        r7 = (com.android.fusionleo.leoglobalactions.util.ToastController) r7;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper.class;
        r1 = r1.get(r2);
        r8 = r1;
        r8 = (com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper) r8;
        r1 = r0.mUtilFactory;
        r2 = com.android.fusionleo.leoglobalactions.util.ResourcesWrapper.class;
        r1 = r1.get(r2);
        r9 = r1;
        r9 = (com.android.fusionleo.leoglobalactions.util.ResourcesWrapper) r9;
        r1 = r15;
        r2 = r10;
        r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9);
        r2 = "power";
        r12.setName(r2);
        r2 = 17040301; // 0x10403ad float:2.4247208E-38 double:8.4190273E-317;
        r2 = r0.getResString(r2);
        r12.setLabel(r2);
        if (r13 == 0) goto L_0x03b5;
    L_0x03b1:
        r2 = 17040284; // 0x104039c float:2.424716E-38 double:8.419019E-317;
        goto L_0x03b8;
    L_0x03b5:
        r2 = 17040283; // 0x104039b float:2.4247158E-38 double:8.4190184E-317;
    L_0x03b8:
        r3 = r0.getResString(r2);
        r12.setDescription(r3);
        r3 = r0.mResourceFactory;
        r4 = "tw_ic_do_poweroff";
        r3 = r3.getResourceID(r4);
        r12.setIcon(r3);
        r3 = com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType.CENTER_ICON_1P_VIEW;
        r12.setViewType(r3);
        r1.setActionInfo(r12);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.fusionleo.leoglobalactions.presentation.viewmodel.DefaultActionViewModelFactory.createActionViewModel(com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions, java.lang.String):com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModel");
    }

    public String getResString(int i) {
        return null;
    }

    public String getResString(int i, int i2) {
      // / int integer = ((Context) this.mUtilFactory.get(Context.class)).getResources().getInteger(i2);
      // / return ((Context) this.mUtilFactory.get(Context.class)).getResources().getString(i, new Object[]{Integer.valueOf(integer)});
        return null;
    }

    public void setFeatureFactory(FeatureFactory featureFactory) {
        this.mFeatureFactory = featureFactory;
    }
}
