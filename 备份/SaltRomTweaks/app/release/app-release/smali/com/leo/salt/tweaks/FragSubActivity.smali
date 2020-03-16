.class public Lcom/leo/salt/tweaks/FragSubActivity;
.super Lcom/leo/salt/tweaks/base/BaseSubActivity;
.source "FragSubActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseSubActivity;-><init>()V

    return-void
.end method

.method private addContent(Landroid/app/Fragment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragSubActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900bd

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private getFragmentByType(Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)Landroid/app/Fragment;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/FragSubActivity$1;->$SwitchMap$com$leo$salt$tweaks$FragSubActivity$FragmentType:[I

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Lcom/leo/salt/fragment/EdgeFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/EdgeFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Lcom/leo/salt/fragment/SystemUninstall;

    invoke-direct {p1}, Lcom/leo/salt/fragment/SystemUninstall;-><init>()V

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lcom/leo/salt/fragment/PulldownDataUsageBarFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownDataUsageBarFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lcom/leo/salt/fragment/KeyguardActionFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/KeyguardActionFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lcom/leo/salt/fragment/KeyguardAlarmFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/KeyguardAlarmFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance p1, Lcom/leo/salt/fragment/KeyguardWeatherFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/KeyguardWeatherFragment;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance p1, Lcom/leo/salt/fragment/PulldownCarrierFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownCarrierFragment;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance p1, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance p1, Lcom/leo/salt/fragment/HomeFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/HomeFragment;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance p1, Lcom/leo/salt/fragment/FingerprintFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/FingerprintFragment;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance p1, Lcom/leo/salt/fragment/PowerFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PowerFragment;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance p1, Lcom/leo/salt/fragment/BixbyFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/BixbyFragment;-><init>()V

    goto :goto_0

    :pswitch_d
    new-instance p1, Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/LogThatShitFragment;-><init>()V

    goto :goto_0

    :pswitch_e
    new-instance p1, Lcom/leo/salt/fragment/SystemSoundFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/SystemSoundFragment;-><init>()V

    goto :goto_0

    :pswitch_f
    new-instance p1, Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-direct {p1}, Lcom/leo/salt/tools/apps/ImgFragment;-><init>()V

    goto :goto_0

    :pswitch_10
    new-instance p1, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-direct {p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;-><init>()V

    goto :goto_0

    :pswitch_11
    new-instance p1, Lcom/leo/salt/fragment/ContactMeFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/ContactMeFragment;-><init>()V

    goto :goto_0

    :pswitch_12
    new-instance p1, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;

    invoke-direct {p1}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;-><init>()V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    const v0, 0x7f0c0024

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragSubActivity;->setLeoTheme()V

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragSubActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/tweaks/FragSubActivity;->KEY_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->mResTitle:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tweaks/FragSubActivity;->setupToolBar(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/FragSubActivity;->getFragmentByType(Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)Landroid/app/Fragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/FragSubActivity;->addContent(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public setLeoTheme()V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragSubActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/PrefUtils;->DayNight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f11000a

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/FragSubActivity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f110009

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/FragSubActivity;->setTheme(I)V

    :goto_0
    return-void
.end method
