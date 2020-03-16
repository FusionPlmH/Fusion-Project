.class public Lcom/leo/salt/fragment/PowerMenuFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "PowerMenuFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PowerMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/leo/salt/fragment/PowerMenuFragment;->mContext:Landroid/content/Context;

    const-string v0, "power_menu_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/PowerMenuFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/PowerMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->SafetyDonateDialogView(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
