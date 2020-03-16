.class public Lcom/leo/salt/fragment/PowerMeunFragment;
.super Lcom/leo/salt/base/BasePreferenceFragment;
.source "PowerMeunFragment.java"


# static fields
.field public static final DownloadBattery:Ljava/lang/String; = "leo_tweaks_powermenu_stock_bg"


# instance fields
.field mDownloadBattery:Lcom/leo/salt/preference/MyPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/base/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/leo/salt/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PowerMeunFragment;->mContext:Landroid/content/Context;

    const-string v0, "power_meun_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/PowerMeunFragment;->BasePreferenceFragment(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    const-string p1, "leo_tweaks_powermenu_stock_bg"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/PowerMeunFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/MyPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/PowerMeunFragment;->mDownloadBattery:Lcom/leo/salt/preference/MyPreference;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PowerMeunFragment;->onPauseFragment()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/fragment/PowerMeunFragment;->mDownloadBattery:Lcom/leo/salt/preference/MyPreference;

    if-ne p2, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/fragment/PowerMeunFragment;->mContext:Landroid/content/Context;

    const-class v0, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p2, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {p2}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/leo/salt/activity/SubActivity$FragmentType;->stockpowerBG:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/fragment/PowerMeunFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PowerMeunFragment;->onResumeFragment()V

    return-void
.end method
