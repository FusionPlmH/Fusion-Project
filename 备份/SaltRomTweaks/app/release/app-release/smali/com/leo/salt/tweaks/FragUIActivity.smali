.class public Lcom/leo/salt/tweaks/FragUIActivity;
.super Lcom/leo/salt/tweaks/base/BaseSettingActivity;
.source "FragUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;-><init>()V

    return-void
.end method

.method private addContent(Landroid/app/Fragment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragUIActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900bd

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private getFragmentByType(Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;)Landroid/app/Fragment;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/FragUIActivity$1;->$SwitchMap$com$leo$salt$tweaks$FragUIActivity$FragmentType:[I

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    new-instance p1, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/leo/salt/fragment/StatusBarTempFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarTempFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/leo/salt/fragment/BatterybarFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/BatterybarFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcom/leo/salt/fragment/StatusBarCarrierFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarCarrierFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lcom/leo/salt/fragment/StatusBarNetworkTrafficFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarNetworkTrafficFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lcom/leo/salt/fragment/StatusBarLogoFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance p1, Lcom/leo/salt/fragment/StatusBarClockFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarClockFragment;-><init>()V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090039

    return v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c002c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragUIActivity;->setLeoTheme()V

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/tweaks/FragUIActivity;->KEY_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->mResTitle:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tweaks/FragUIActivity;->setupToolBar(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/FragUIActivity;->getFragmentByType(Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;)Landroid/app/Fragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/FragUIActivity;->addContent(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public setLeoTheme()V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragUIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/PrefUtils;->DayNight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f11000a

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/FragUIActivity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f11000c

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/FragUIActivity;->setTheme(I)V

    :goto_0
    return-void
.end method
