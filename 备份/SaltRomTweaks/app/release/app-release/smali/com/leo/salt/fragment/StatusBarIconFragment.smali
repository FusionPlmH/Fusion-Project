.class public Lcom/leo/salt/fragment/StatusBarIconFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "StatusBarIconFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field SignalIcon:[Landroid/graphics/drawable/Drawable;

.field WIFIIcon:[Landroid/graphics/drawable/Drawable;

.field private mSignalPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

.field private mWIFIPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

.field private systemui:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const/16 v1, 0x10

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    const-string v3, "stat_sys_wifi"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "stat_sys_wifi_signal_a_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "stat_sys_wifi_signal_b_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "stat_sys_wifi_signal_c_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "stat_sys_wifi_signal_d_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "stat_sys_wifi_signal_e_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    const-string v3, "stat_sys_wifi_signal_f_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const-string v3, "stat_sys_wifi_signal_g_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v2, v11

    const-string v3, "stat_sys_wifi_signal_h_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v12, 0x8

    aput-object v3, v2, v12

    const-string v3, "stat_sys_wifi_signal_i_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v13, 0x9

    aput-object v3, v2, v13

    const-string v3, "stat_sys_wifi_signal_j_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v14, 0xa

    aput-object v3, v2, v14

    const-string v3, "stat_sys_wifi_signal_k_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v15, 0xb

    aput-object v3, v2, v15

    const-string v3, "stat_sys_wifi_signal_l_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v16, 0xc

    aput-object v3, v2, v16

    const-string v3, "stat_sys_wifi_signal_m_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v17, 0xd

    aput-object v3, v2, v17

    const-string v3, "stat_sys_wifi_signal_n_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v18, 0xe

    aput-object v3, v2, v18

    const-string v3, "stat_sys_wifi_signal_o_4"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v18, 0xf

    aput-object v3, v2, v18

    iput-object v2, v0, Lcom/leo/salt/fragment/StatusBarIconFragment;->WIFIIcon:[Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x13

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const-string v3, "stat_sys_signal"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "stat_sys_signal_a_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "stat_sys_signal_b_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "stat_sys_signal_c_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "stat_sys_signal_d_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "stat_sys_signal_e_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "stat_sys_signal_f_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "stat_sys_signal_g_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v11

    const-string v3, "stat_sys_signal_h_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v12

    const-string v3, "stat_sys_signal_i_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v13

    const-string v3, "stat_sys_signal_j_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v14

    const-string v3, "stat_sys_signal_k_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v15

    const-string v3, "stat_sys_signal_l_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v16

    const-string v3, "stat_sys_signal_m_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v17

    const-string v3, "stat_sys_signal_n_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v2, v4

    const-string v3, "stat_sys_signal_o_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string v3, "stat_sys_signal_p_5_auto_rotate"

    invoke-virtual {v0, v3}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "stat_sys_signal_q_5_auto_rotate"

    invoke-virtual {v0, v1}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v2, v3

    const-string v1, "stat_sys_signal_r_5_auto_rotate"

    invoke-virtual {v0, v1}, Lcom/leo/salt/fragment/StatusBarIconFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/leo/salt/fragment/StatusBarIconFragment;->SignalIcon:[Landroid/graphics/drawable/Drawable;

    const-string v1, "com.android.systemui"

    iput-object v1, v0, Lcom/leo/salt/fragment/StatusBarIconFragment;->systemui:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public Lte(Z)V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/csc/others.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "sed -i \'/CscFeature_SystemUI_ConfigOverrideDataIcon/s/4G/LTE/g\' /system/csc/others.xml;"

    goto :goto_0

    :cond_0
    const-string p1, "sed -i \'/CscFeature_SystemUI_ConfigOverrideDataIcon/s/4G/LTE/g\' /system/csc/cscfeature.xml;"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "sed -i \'/CscFeature_SystemUI_ConfigOverrideDataIcon/s/LTE/4G/g\' /system/csc/others.xml;"

    goto :goto_0

    :cond_2
    const-string p1, "sed -i \'/CscFeature_SystemUI_ConfigOverrideDataIcon/s/LTE/4G/g\' /system/csc/cscfeature.xml;"

    :goto_0
    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->systemui:Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->killPackage(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public disablePreferences()V
    .locals 5

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    const-string v1, "statusbar_icon_padding_enabled"

    const-string v2, "statusbar_signal_enabled"

    const-string v3, "statusbar_signal_wifi_enabled"

    const-string v4, "statusbar_signal_orientation"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f130023

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarIconFragment;->addPreferencesFromResource(I)V

    const-string p1, "statusbar_signal_wifi_style"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarIconFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mWIFIPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mWIFIPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    const-string v0, "wifi_style"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mWIFIPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    const-string v0, "wifi_style_values"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mWIFIPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->WIFIIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setDrawableArray([Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mWIFIPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "icon_select"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mWIFIPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "statusbar_signal_style"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarIconFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignalPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignalPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    const-string v0, "signal_style"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignalPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    const-string v0, "signal_style_values"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignalPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->SignalIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setDrawableArray([Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignalPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignalPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarIconFragment;->isProKeyInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->disablePreferences()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
