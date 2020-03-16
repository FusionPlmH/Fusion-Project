.class public Lcom/leo/salt/fragment/LockScreenOthersFragment;
.super Lcom/leo/salt/base/BasePreferenceFragment;
.source "LockScreenOthersFragment.java"


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

    iget-object p1, p0, Lcom/leo/salt/fragment/LockScreenOthersFragment;->mContext:Landroid/content/Context;

    const-string v0, "lockscreen_other_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/LockScreenOthersFragment;->BasePreferenceFragment(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/LockScreenOthersFragment;->onPauseFragment()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/LockScreenOthersFragment;->onResumeFragment()V

    return-void
.end method
