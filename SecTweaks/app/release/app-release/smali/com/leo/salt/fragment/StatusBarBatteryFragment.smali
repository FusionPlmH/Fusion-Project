.class public Lcom/leo/salt/fragment/StatusBarBatteryFragment;
.super Lcom/leo/salt/base/BasePreferenceFragment;
.source "StatusBarBatteryFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final DB_MAIN_BATTERY:Ljava/lang/String; = "leo_battery_help"

.field public static final DB_MAIN_BATTERY_MODE:Ljava/lang/String; = "leo_tweaks_battery_custom"

.field public static final DownloadBattery:Ljava/lang/String; = "leo_DownloadBattery"


# instance fields
.field public BatterName:Ljava/lang/String;

.field public BatterNameEN:Ljava/lang/String;

.field public Batteryurl:Ljava/lang/String;

.field public Batteryurlen:Ljava/lang/String;

.field mCheckCustomBattery:Landroid/preference/Preference;

.field mCustomBatteryPreference:Lcom/leo/salt/preference/CustomBatteryPreference;

.field mDownloadBattery:Lcom/leo/salt/preference/MyPreference;

.field private mIsOnCreate:Z

.field mMainBatteryMode:Lcom/leo/salt/preference/MyListPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/leo/salt/base/BasePreferenceFragment;-><init>()V

    const-string v0, "Leo battery"

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->BatterNameEN:Ljava/lang/String;

    const-string v0, "Leo\u7535\u6c60\u6a21\u7ec4"

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->BatterName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->PPPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LeoRom_battery.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->Batteryurl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->PPPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LeoRom_battery_en.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->Batteryurlen:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mIsOnCreate:Z

    return-void
.end method

.method private checkIfCustomBattery(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mCustomBatteryPreference:Lcom/leo/salt/preference/CustomBatteryPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/CustomBatteryPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mCustomBatteryPreference:Lcom/leo/salt/preference/CustomBatteryPreference;

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/CustomBatteryPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mContext:Landroid/content/Context;

    const-string v1, "statusbar_battery_prefs"

    invoke-virtual {p0, v0, p0, v1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->BasePreferenceFragment(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    const-string v0, "main_battery"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/MyListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mMainBatteryMode:Lcom/leo/salt/preference/MyListPreference;

    const-string v0, "leo_tweaks_battery_custom"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mMainBatteryMode:Lcom/leo/salt/preference/MyListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/MyListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mMainBatteryMode:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/MyListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mMainBatteryMode:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/MyListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mMainBatteryMode:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/MyListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "check_custombat"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mCheckCustomBattery:Landroid/preference/Preference;

    const-string v0, "custombattery_preference"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/CustomBatteryPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mCustomBatteryPreference:Lcom/leo/salt/preference/CustomBatteryPreference;

    invoke-direct {p0, p1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->checkIfCustomBattery(I)V

    const-string p1, "leo_DownloadBattery"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/MyPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mDownloadBattery:Lcom/leo/salt/preference/MyPreference;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mMainBatteryMode:Lcom/leo/salt/preference/MyListPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result p1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->BatterName:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->Batteryurl:Ljava/lang/String;

    move-object v5, p1

    move-object v6, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->BatterNameEN:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->Batteryurlen:Ljava/lang/String;

    move-object v5, p1

    move-object v6, v1

    :goto_0
    new-instance v3, Lcom/leo/salt/widget/WebDialog;

    iget-object v4, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mContext:Landroid/content/Context;

    const-string v7, "leo_battery_help"

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/leo/salt/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mMainBatteryMode:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    const-string v1, "leo_tweaks_battery_custom"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mMainBatteryMode:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->checkIfCustomBattery(I)V

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "leo_tweaks_battery_custom"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->checkIfCustomBattery(I)V

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mDownloadBattery:Lcom/leo/salt/preference/MyPreference;

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/leo/salt/widget/LogDialog;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mContext:Landroid/content/Context;

    const-string v1, "http://os.leorom.cc/battery/batterydownload_cn.html"

    const-string v2, "\u7535\u6c60\u56fe\u6807\u4e0b\u8f7d"

    invoke-direct {p1, v0, v1, v2}, Lcom/leo/salt/widget/LogDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/leo/salt/widget/LogDialog;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mContext:Landroid/content/Context;

    const-string v1, "http://os.leorom.cc/battery/batterydownload_en.html"

    const-string v2, "Battery icon download"

    invoke-direct {p1, v0, v1, v2}, Lcom/leo/salt/widget/LogDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/leo/salt/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onResume()V

    iget-boolean v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mIsOnCreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mCustomBatteryPreference:Lcom/leo/salt/preference/CustomBatteryPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/CustomBatteryPreference;->dismissDialog()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mIsOnCreate:Z

    return-void
.end method
