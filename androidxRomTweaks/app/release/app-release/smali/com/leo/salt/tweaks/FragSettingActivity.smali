.class public Lcom/leo/salt/tweaks/FragSettingActivity;
.super Lcom/leo/salt/tweaks/base/BaseSettingActivity;
.source "FragSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;
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

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090101

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private getFragmentByType(Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)Landroid/app/Fragment;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$1;->$SwitchMap$com$leo$salt$tweaks$FragSettingActivity$FragmentType:[I

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Lcom/leo/salt/gridView/CarrierTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/gridView/CarrierTabLayoutFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-direct {p1}, Lcom/leo/salt/tools/apps/FragmentApps;-><init>()V

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_4
    new-instance p1, Lcom/leo/salt/fragment/MiniPOPFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/MiniPOPFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Lcom/leo/salt/fragment/FloatBallFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/FloatBallFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_6
    new-instance p1, Lcom/leo/salt/gridView/QSClockTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/gridView/QSClockTabLayoutFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_7
    new-instance p1, Lcom/leo/salt/fragment/NavigationBarFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/NavigationBarFragment;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance p1, Lcom/leo/salt/fragment/AppProcessBlacklist;

    invoke-direct {p1}, Lcom/leo/salt/fragment/AppProcessBlacklist;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance p1, Lcom/leo/salt/fragment/KeyguardCarrierFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance p1, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance p1, Lcom/leo/salt/fragment/StatusBarBatteryFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance p1, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;-><init>()V

    goto :goto_0

    :pswitch_d
    new-instance p1, Lcom/leo/salt/fragment/TaskBackgroundFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/TaskBackgroundFragment;-><init>()V

    goto :goto_0

    :pswitch_e
    new-instance p1, Lcom/leo/salt/fragment/TaskStorageFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/TaskStorageFragment;-><init>()V

    goto :goto_0

    :pswitch_f
    new-instance p1, Lcom/leo/salt/fragment/SystemLauncherFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/SystemLauncherFragment;-><init>()V

    goto :goto_0

    :pswitch_10
    new-instance p1, Lcom/leo/salt/gridView/SystemTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/gridView/SystemTabLayoutFragment;-><init>()V

    goto :goto_0

    :pswitch_11
    new-instance p1, Lcom/leo/salt/fragment/SettingsFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/SettingsFragment;-><init>()V

    goto :goto_0

    :pswitch_12
    new-instance p1, Lcom/leo/salt/fragment/GlobalGesturesFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/GlobalGesturesFragment;-><init>()V

    goto :goto_0

    :pswitch_13
    new-instance p1, Lcom/leo/salt/fragment/PowerMenuFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PowerMenuFragment;-><init>()V

    goto :goto_0

    :pswitch_14
    new-instance p1, Lcom/leo/salt/fragment/BlacklistFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/BlacklistFragment;-><init>()V

    goto :goto_0

    :pswitch_15
    new-instance p1, Lcom/leo/salt/fragment/HwKyesFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/HwKyesFragment;-><init>()V

    goto :goto_0

    :pswitch_16
    new-instance p1, Lcom/leo/salt/fragment/StatusBarIconFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarIconFragment;-><init>()V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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

    const v0, 0x7f090034

    return v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c002a

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragSettingActivity;->setLeoTheme()V

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/tweaks/FragSettingActivity;->KEY_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->mResTitle:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tweaks/FragSettingActivity;->setupToolBar(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/FragSettingActivity;->getFragmentByType(Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)Landroid/app/Fragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/FragSettingActivity;->addContent(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public setLeoTheme()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "AppTheme.Main.Dark"

    goto :goto_1

    :cond_1
    const-string v0, "AppTheme.Main"

    :goto_1
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/FragSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "style"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/FragSettingActivity;->setTheme(I)V

    :cond_2
    return-void
.end method
