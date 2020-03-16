.class public Lcom/leo/salt/fragment/ReturnKeyFragment;
.super Lcom/leo/salt/base/BasePreferenceFragment;
.source "ReturnKeyFragment.java"


# instance fields
.field USEFUL_FEATURE_MAIN_SETTINGS:Lcom/leo/salt/preference/MyPreferenceAlerts;


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

    iget-object p1, p0, Lcom/leo/salt/fragment/ReturnKeyFragment;->mContext:Landroid/content/Context;

    const-string v0, "keys_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/ReturnKeyFragment;->BasePreferenceFragment(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    const-string p1, "USEFUL_FEATURE_MAIN_SETTINGS"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/ReturnKeyFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/MyPreferenceAlerts;

    iput-object p1, p0, Lcom/leo/salt/fragment/ReturnKeyFragment;->USEFUL_FEATURE_MAIN_SETTINGS:Lcom/leo/salt/preference/MyPreferenceAlerts;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ReturnKeyFragment;->onPauseFragment()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/ReturnKeyFragment;->USEFUL_FEATURE_MAIN_SETTINGS:Lcom/leo/salt/preference/MyPreferenceAlerts;

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.settings.USEFUL_FEATURE_MAIN_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/fragment/ReturnKeyFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/leo/salt/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ReturnKeyFragment;->onResumeFragment()V

    return-void
.end method
