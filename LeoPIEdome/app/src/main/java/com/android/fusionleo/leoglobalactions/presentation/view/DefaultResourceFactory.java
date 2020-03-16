package com.android.fusionleo.leoglobalactions.presentation.view;

public class DefaultResourceFactory implements ResourceFactory {
    public int getResourceID(java.lang.String r3) {
        /*
        r2 = this;
        r0 = r3.hashCode();
        r1 = 0;
        switch(r0) {
            case -2133098395: goto L_0x0170;
            case -1989416051: goto L_0x0164;
            case -1939542288: goto L_0x0159;
            case -1918295039: goto L_0x014d;
            case -1657633399: goto L_0x0142;
            case -1552064343: goto L_0x0136;
            case -1552048317: goto L_0x012a;
            case -1412396854: goto L_0x011e;
            case -1369345445: goto L_0x0113;
            case -1352660819: goto L_0x0108;
            case -1097839917: goto L_0x00fb;
            case -914188011: goto L_0x00ee;
            case -866656060: goto L_0x00e1;
            case -859625887: goto L_0x00d4;
            case -856695782: goto L_0x00c8;
            case -851784090: goto L_0x00bb;
            case -642144425: goto L_0x00ae;
            case -573788334: goto L_0x00a2;
            case -536425620: goto L_0x0095;
            case -510523520: goto L_0x0089;
            case -320895287: goto L_0x007c;
            case -7718533: goto L_0x006f;
            case 137046808: goto L_0x0062;
            case 217139660: goto L_0x0055;
            case 319469719: goto L_0x0049;
            case 809153731: goto L_0x003d;
            case 1414656646: goto L_0x0030;
            case 1426191296: goto L_0x0023;
            case 1594509796: goto L_0x0016;
            case 2025894485: goto L_0x000a;
            default: goto L_0x0008;
        };
    L_0x0008:
        goto L_0x017b;
    L_0x000a:
        r0 = "sec_global_actions_wrapped";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0013:
        r0 = 4;
        goto L_0x017c;
    L_0x0016:
        r0 = "tw_ic_do_restart";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x001f:
        r0 = 20;
        goto L_0x017c;
    L_0x0023:
        r0 = "sec_global_actions_description_text";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x002c:
        r0 = 13;
        goto L_0x017c;
    L_0x0030:
        r0 = "sec_global_actions_icon_ripple";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0039:
        r0 = 26;
        goto L_0x017c;
    L_0x003d:
        r0 = "device_ic_clover_view_cover";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0045:
        r0 = 15;
        goto L_0x017c;
    L_0x0049:
        r0 = "device_ic_dark_theme_samsung";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0051:
        r0 = 16;
        goto L_0x017c;
    L_0x0055:
        r0 = "sec_global_actions_description";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x005e:
        r0 = 10;
        goto L_0x017c;
    L_0x0062:
        r0 = "tw_ic_do_lockdown";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x006b:
        r0 = 22;
        goto L_0x017c;
    L_0x006f:
        r0 = "tw_ic_do_safemode";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0078:
        r0 = 19;
        goto L_0x017c;
    L_0x007c:
        r0 = "tw_ic_do_emergencymode";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0085:
        r0 = 21;
        goto L_0x017c;
    L_0x0089:
        r0 = "sec_global_actions_bottomview";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0092:
        r0 = 5;
        goto L_0x017c;
    L_0x0095:
        r0 = "sec_global_actions_bottomtextview_bottom_margin_landscape";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x009e:
        r0 = 29;
        goto L_0x017c;
    L_0x00a2:
        r0 = "device_ic_white_theme_samsung";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x00aa:
        r0 = 17;
        goto L_0x017c;
    L_0x00ae:
        r0 = "tw_ic_do_mobiledata";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x00b7:
        r0 = 23;
        goto L_0x017c;
    L_0x00bb:
        r0 = "sec_global_actions_icon_label_view";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x00c4:
        r0 = 11;
        goto L_0x017c;
    L_0x00c8:
        r0 = "sec_global_actions_item_list";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x00d1:
        r0 = r1;
        goto L_0x017c;
    L_0x00d4:
        r0 = "sec_global_actions_state";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x00dd:
        r0 = 9;
        goto L_0x017c;
    L_0x00e1:
        r0 = "sec_global_actions_label";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x00ea:
        r0 = 12;
        goto L_0x017c;
    L_0x00ee:
        r0 = "tw_ic_do_poweroff";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x00f7:
        r0 = 18;
        goto L_0x017c;
    L_0x00fb:
        r0 = "sec_global_actions_icon_bg_focused";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0104:
        r0 = 25;
        goto L_0x017c;
    L_0x0108:
        r0 = "sec_global_actions_bottomtextview";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0111:
        r0 = 7;
        goto L_0x017c;
    L_0x0113:
        r0 = "sec_global_actions_bottom";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x011c:
        r0 = 2;
        goto L_0x017c;
    L_0x011e:
        r0 = "sec_global_actions_bottomtextview_bottom_margin_portrait";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0127:
        r0 = 28;
        goto L_0x017c;
    L_0x012a:
        r0 = "sec_global_actions_item";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0133:
        r0 = 8;
        goto L_0x017c;
    L_0x0136:
        r0 = "sec_global_actions_icon";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x013f:
        r0 = 14;
        goto L_0x017c;
    L_0x0142:
        r0 = "sec_global_actions_bottompetview";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x014b:
        r0 = 6;
        goto L_0x017c;
    L_0x014d:
        r0 = "sec_global_actions_force_restart_time";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0156:
        r0 = 27;
        goto L_0x017c;
    L_0x0159:
        r0 = "sec_global_actions_item_list_land";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0162:
        r0 = 1;
        goto L_0x017c;
    L_0x0164:
        r0 = "tw_ic_do_bikemode_square";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x016d:
        r0 = 24;
        goto L_0x017c;
    L_0x0170:
        r0 = "sec_global_actions_confirmation";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017b;
    L_0x0179:
        r0 = 3;
        goto L_0x017c;
    L_0x017b:
        r0 = -1;
    L_0x017c:
        switch(r0) {
            case 0: goto L_0x01f4;
            case 1: goto L_0x01f0;
            case 2: goto L_0x01ec;
            case 3: goto L_0x01e8;
            case 4: goto L_0x01e4;
            case 5: goto L_0x01e0;
            case 6: goto L_0x01dc;
            case 7: goto L_0x01d8;
            case 8: goto L_0x01d4;
            case 9: goto L_0x01d0;
            case 10: goto L_0x01cc;
            case 11: goto L_0x01c8;
            case 12: goto L_0x01c4;
            case 13: goto L_0x01c0;
            case 14: goto L_0x01bc;
            case 15: goto L_0x01b8;
            case 16: goto L_0x01b4;
            case 17: goto L_0x01b0;
            case 18: goto L_0x01ac;
            case 19: goto L_0x01a8;
            case 20: goto L_0x01a4;
            case 21: goto L_0x01a0;
            case 22: goto L_0x019c;
            case 23: goto L_0x0198;
            case 24: goto L_0x0194;
            case 25: goto L_0x0190;
            case 26: goto L_0x018c;
            case 27: goto L_0x0188;
            case 28: goto L_0x0184;
            case 29: goto L_0x0180;
            default: goto L_0x017f;
        };
    L_0x017f:
        return r1;
    L_0x0180:
        r0 = 17105452; // 0x105022c float:2.44298E-38 double:8.451216E-317;
        return r0;
    L_0x0184:
        r0 = 17105453; // 0x105022d float:2.4429803E-38 double:8.4512167E-317;
        return r0;
    L_0x0188:
        r0 = 17695024; // 0x10e0130 float:2.6082133E-38 double:8.7425035E-317;
        return r0;
    L_0x018c:
        r0 = 17303568; // 0x1080810 float:2.498504E-38 double:8.5490985E-317;
        return r0;
    L_0x0190:
        r0 = 17303567; // 0x108080f float:2.4985037E-38 double:8.549098E-317;
        return r0;
    L_0x0194:
        r0 = 17304394; // 0x1080b4a float:2.4987354E-38 double:8.5495066E-317;
        return r0;
    L_0x0198:
        r0 = 17304402; // 0x1080b52 float:2.4987377E-38 double:8.5495106E-317;
        return r0;
    L_0x019c:
        r0 = 17304401; // 0x1080b51 float:2.4987374E-38 double:8.54951E-317;
        return r0;
    L_0x01a0:
        r0 = 17304398; // 0x1080b4e float:2.4987366E-38 double:8.5495086E-317;
        return r0;
    L_0x01a4:
        r0 = 17304407; // 0x1080b57 float:2.498739E-38 double:8.549513E-317;
        return r0;
    L_0x01a8:
        r0 = 17304412; // 0x1080b5c float:2.4987405E-38 double:8.5495155E-317;
        return r0;
    L_0x01ac:
        r0 = 17304403; // 0x1080b53 float:2.498738E-38 double:8.549511E-317;
        return r0;
    L_0x01b0:
        r0 = 17302197; // 0x10802b5 float:2.4981197E-38 double:8.548421E-317;
        return r0;
    L_0x01b4:
        r0 = 17302195; // 0x10802b3 float:2.4981192E-38 double:8.54842E-317;
        return r0;
    L_0x01b8:
        r0 = 17302194; // 0x10802b2 float:2.498119E-38 double:8.5484197E-317;
        return r0;
    L_0x01bc:
        r0 = 16909472; // 0x10204a0 float:2.3880547E-38 double:8.354389E-317;
        return r0;
    L_0x01c0:
        r0 = 16909471; // 0x102049f float:2.3880544E-38 double:8.3543887E-317;
        return r0;
    L_0x01c4:
        r0 = 16909476; // 0x10204a4 float:2.3880558E-38 double:8.354391E-317;
        return r0;
    L_0x01c8:
        r0 = 16909473; // 0x10204a1 float:2.388055E-38 double:8.3543897E-317;
        return r0;
    L_0x01cc:
        r0 = 16909470; // 0x102049e float:2.3880542E-38 double:8.354388E-317;
        return r0;
    L_0x01d0:
        r0 = 16909477; // 0x10204a5 float:2.388056E-38 double:8.3543917E-317;
        return r0;
    L_0x01d4:
        r0 = 17367296; // 0x1090100 float:2.5163643E-38 double:8.5805843E-317;
        return r0;
    L_0x01d8:
        r0 = 17367294; // 0x10900fe float:2.5163638E-38 double:8.5805833E-317;
        return r0;
    L_0x01dc:
        r0 = 17367293; // 0x10900fd float:2.5163635E-38 double:8.580583E-317;
        return r0;
    L_0x01e0:
        r0 = 17367295; // 0x10900ff float:2.516364E-38 double:8.580584E-317;
        return r0;
    L_0x01e4:
        r0 = 17367297; // 0x1090101 float:2.5163646E-38 double:8.580585E-317;
        return r0;
    L_0x01e8:
        r0 = 16909469; // 0x102049d float:2.388054E-38 double:8.3543877E-317;
        return r0;
    L_0x01ec:
        r0 = 16909467; // 0x102049b float:2.3880533E-38 double:8.3543867E-317;
        return r0;
    L_0x01f0:
        r0 = 16909475; // 0x10204a3 float:2.3880556E-38 double:8.3543907E-317;
        return r0;
    L_0x01f4:
        r0 = 16909474; // 0x10204a2 float:2.3880553E-38 double:8.35439E-317;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.fusionleo.leoglobalactions.presentation.view.DefaultResourceFactory.getResourceID(java.lang.String):int");
    }
}
