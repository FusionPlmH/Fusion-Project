.class public Lcom/leo/salt/fragment/StatusBarIconFragment;
.super Lcom/leo/salt/base/BasePreferenceFragment;
.source "StatusBarIconFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public SIGNAL:Ljava/lang/String;

.field private mMods:Lcom/leo/salt/preference/MyPreferenceAlerts;

.field private mSignal:Lcom/leo/salt/preference/MyListPreference;

.field public mod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/base/BasePreferenceFragment;-><init>()V

    const-string v0, "leo_tweaks_statusbar_signal_single_icon"

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->SIGNAL:Ljava/lang/String;

    const-string v0, "leo_tweaks_update_mods"

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mod:Ljava/lang/String;

    return-void
.end method

.method private ICON(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_0

    const-string v0, "\u56fe\u6807\u8bbe\u7f6e\u63d0\u793a"

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_3

    const-string v0, "<font color=\"#FF0000\">\u5728\u81ea\u5b9a\u4e49\u4fe1\u53f7\u56fe\u6807\u4f60\u9700\u8981\u6ce8\u610f:</font> <br />1.\u5f00\u542f\u4fe1\u53f7WIFI\u56fe\u6807\u5f00\u5173<br />2.\u9009\u62e9\u559c\u6b22\u7684\u56fe\u6807<br />3.\u70b9\u51fb<\u4fe1\u53f7\u56fe\u6807\u66f4\u65b0\u8bbe\u7f6e>,\u4ee5\u8ba9\u4f60\u7684\u8bbe\u7f6e\u751f\u6548"

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "Icon setting prompt"

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    const-string v0, "<font color=\"#FF0000\">In the custom signal icon you need to pay attention:</font> <br /><br />1. Turn on the signal WIFI icon switch<br />2. Choose the icon you like <br />3. Click <Signal Icon Update Settings> to make your settings take effect"

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public disablePreferences()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "leo_tweaks_update_mods"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_status_bar_sim_icon"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_status_bar_wifi_arrow"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_status_bar_wifi_icon"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "leo_tweaks_update_mods"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_status_bar_sim_icon"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_status_bar_wifi_arrow"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_status_bar_wifi_icon"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public isProKeyInstalled(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mContext:Landroid/content/Context;

    const-string v0, "statusbar_icon_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->BasePreferenceFragment(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->SIGNAL:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->SIGNAL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/MyListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignal:Lcom/leo/salt/preference/MyListPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignal:Lcom/leo/salt/preference/MyListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/MyListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignal:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/MyListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignal:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/MyListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mod:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarIconFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/MyPreferenceAlerts;

    iput-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mMods:Lcom/leo/salt/preference/MyPreferenceAlerts;

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->ICON(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/leo/salt/fragment/StatusBarIconFragment;->ICON(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "leo_icon_can"

    invoke-static {p1, v0, v1, v2}, Lcom/leo/salt/widget/DialogUtil;->cautionMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarIconFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LeoRom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange----->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignal:Lcom/leo/salt/preference/MyListPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_4

    const-string p1, "0"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getchipname()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MSM8998"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v3}, Lcom/leo/salt/utils/root/Helpers$Companion;->SignalCode(ILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v3}, Lcom/leo/salt/utils/root/Helpers$Companion;->SignalCode(ILandroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getchipname()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MSM8998"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v3}, Lcom/leo/salt/utils/root/Helpers$Companion;->SignalCode(ILandroid/content/Context;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Lcom/leo/salt/utils/root/Helpers$Companion;->SignalCode(ILandroid/content/Context;)V

    :cond_3
    :goto_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignal:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->SIGNAL:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mSignal:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarIconFragment;->mMods:Lcom/leo/salt/preference/MyPreferenceAlerts;

    if-ne p2, v0, :cond_0

    const-string p1, "com.android.systemui"

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->killPackage(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/leo/salt/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onResume()V

    return-void
.end method
