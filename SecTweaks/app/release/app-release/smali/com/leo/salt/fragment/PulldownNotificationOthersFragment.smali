.class public Lcom/leo/salt/fragment/PulldownNotificationOthersFragment;
.super Lcom/leo/salt/base/BasePreferenceFragment;
.source "PulldownNotificationOthersFragment.java"


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

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownNotificationOthersFragment;->mContext:Landroid/content/Context;

    const-string v0, "pulldown_notificationothers_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/PulldownNotificationOthersFragment;->BasePreferenceFragment(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    const-string p1, "LEO_Double_sim"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/PulldownNotificationOthersFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/MyPreferenceAlerts;

    iput-object p1, p0, Lcom/leo/salt/fragment/PulldownNotificationOthersFragment;->USEFUL_FEATURE_MAIN_SETTINGS:Lcom/leo/salt/preference/MyPreferenceAlerts;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownNotificationOthersFragment;->USEFUL_FEATURE_MAIN_SETTINGS:Lcom/leo/salt/preference/MyPreferenceAlerts;

    if-ne p2, v0, :cond_0

    const-string v0, "com.android.systemui"

    invoke-static {v0}, Lcom/leo/salt/utils/Utils;->killPackage(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/leo/salt/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownNotificationOthersFragment;->onResumeFragment()V

    return-void
.end method
