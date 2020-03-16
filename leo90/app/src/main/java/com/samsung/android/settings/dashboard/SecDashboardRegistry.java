package com.samsung.android.settings.dashboard;

import android.content.Context;
import android.util.ArrayMap;
import java.util.Map;

public class SecDashboardRegistry {
    private static final Map<String, OrderInfo> DASHBOARD_ORDERING_INFO_MAP = new ArrayMap();
    private static final Map<String, OrderInfo> POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP = new ArrayMap();

    private static class LazyHolder {
        public static final SecDashboardRegistry INSTANCE = new SecDashboardRegistry();
    }

    public static class OrderInfo {
        public String groupName;
        public int priority;
    }

    private SecDashboardRegistry() {
    }

    public static SecDashboardRegistry getInstance(Context context) {
        if (context != null && DASHBOARD_ORDERING_INFO_MAP.isEmpty()) {
            init(context);
        }
        if (context != null && POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.isEmpty()) {
            initForPowerSaving(context);
        }
        return LazyHolder.INSTANCE;
    }

    private static void init(Context context) {
        String str = "group1";
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.priority = 2400;
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("leo_personalized_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = 2300;
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("leo_ota_settings", orderInfo);
        str = "group2";
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428121);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("samsung_dex_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428119);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("connections_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428138);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("t_roaming_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428134);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("gigalte_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428127);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("operator_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428137);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("notification_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428132);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("app_notifications_1depth", orderInfo);
        str = "group3";
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428122);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("display_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428140);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("wallpapers_themes_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428129);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("lockscreen_settings", orderInfo);
        str = "group4";
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428115);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("biometrics_and_security_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428139);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("t_security_skt_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428118);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("cloud_account_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428123);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("docomoservice_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428114);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("au_settings_menu", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428125);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("google_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428142);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("workspace_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428111);
        orderInfo.groupName = "group5";
        DASHBOARD_ORDERING_INFO_MAP.put("header_useful_feature", orderInfo);
        str = "group6";
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428107);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("digital_wellbeing_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428130);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("maintenance_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428113);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("application_manager_settings", orderInfo);
        str = "group7";
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428124);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("general_device_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428110);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("accessibility_settings2", orderInfo);
        str = "group8";
        orderInfo = new OrderInfo();
        orderInfo.priority = 300;
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("leo_system_update", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority =200;
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("online_help", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428109);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("about_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428109);
        orderInfo.groupName = str;
        DASHBOARD_ORDERING_INFO_MAP.put("development_settings", orderInfo);
    }

    private static void initForPowerSaving(Context context) {
        String str = "group1";
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428141);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("wifi_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428116);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("bluetooth_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428112);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("airplane_mode", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428131);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("mobile_networks", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428131);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("vzw_provision_volte", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428128);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("location_settings", orderInfo);
        str = "group2";
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428136);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("notification_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428117);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("display_settings", orderInfo);
        str = "group3";
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428106);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("battery_settings", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428133);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("accessibility_settings2", orderInfo);
        orderInfo = new OrderInfo();
        orderInfo.priority = context.getResources().getInteger(2131428108);
        orderInfo.groupName = str;
        POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.put("key_vzw_emergency_alert", orderInfo);
    }

    public OrderInfo getMenuOrderInfo(String str, boolean z) {
        return z ? (OrderInfo) POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP.get(str) : (OrderInfo) DASHBOARD_ORDERING_INFO_MAP.get(str);
    }
}
