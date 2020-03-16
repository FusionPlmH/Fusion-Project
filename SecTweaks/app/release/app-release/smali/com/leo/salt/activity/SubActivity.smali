.class public final Lcom/leo/salt/activity/SubActivity;
.super Lcom/leo/salt/base/BaseSubActivity;
.source "SubActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/activity/SubActivity$FragmentType;,
        Lcom/leo/salt/activity/SubActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\rH\u0014J\u0012\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/leo/salt/activity/SubActivity;",
        "Lcom/leo/salt/base/BaseSubActivity;",
        "()V",
        "addContent",
        "",
        "fragment",
        "Landroid/app/Fragment;",
        "getFragmentByType",
        "type",
        "Lcom/leo/salt/activity/SubActivity$FragmentType;",
        "initLayout",
        "",
        "initStatusBarColor",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "FragmentType",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final Companion:Lcom/leo/salt/activity/SubActivity$Companion;

# The value of this static final field might be set in the static constructor
.field private static final KEY_TYPE:Ljava/lang/String; = "FRAGMENT_TYPE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/leo/salt/activity/SubActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/leo/salt/activity/SubActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    const-string v0, "FRAGMENT_TYPE"

    sput-object v0, Lcom/leo/salt/activity/SubActivity;->KEY_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/base/BaseSubActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKEY_TYPE$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/activity/SubActivity;->KEY_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method private final addContent(Landroid/app/Fragment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/activity/SubActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final getFragmentByType(Lcom/leo/salt/activity/SubActivity$FragmentType;)Landroid/app/Fragment;
    .locals 2

    const/4 v0, 0x0

    check-cast v0, Landroid/app/Fragment;

    sget-object v1, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Lcom/leo/salt/fragment/CityLocationFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/CityLocationFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Lcom/leo/salt/fragment/LockScreenWeatherFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/LockScreenWeatherFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lcom/leo/salt/fragment/LockScreenAlarmFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/LockScreenAlarmFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lcom/leo/salt/fragment/LauncherBackgroundWallpaperFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/LauncherBackgroundWallpaperFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_4
    new-instance p1, Lcom/leo/salt/wallpaper/LauncherWallpaperPicker;

    invoke-direct {p1}, Lcom/leo/salt/wallpaper/LauncherWallpaperPicker;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Lcom/leo/salt/ui/RecentsTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/ui/RecentsTabLayoutFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_6
    new-instance p1, Lcom/leo/salt/fragment/EdgeScreen;

    invoke-direct {p1}, Lcom/leo/salt/fragment/EdgeScreen;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_7
    new-instance p1, Lcom/leo/salt/fragment/PowerMeunbgFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PowerMeunbgFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_8
    new-instance p1, Lcom/leo/salt/fragment/StatusBarVoltageFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarVoltageFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_9
    new-instance p1, Lcom/leo/salt/fragment/StatusBarActionFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarActionFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_a
    new-instance p1, Lcom/leo/salt/fragment/FloatingFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/FloatingFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_b
    new-instance p1, Lcom/leo/salt/fragment/HomeTouchFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/HomeTouchFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_c
    new-instance p1, Lcom/leo/salt/fragment/SystemSoundFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/SystemSoundFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_d
    new-instance p1, Lcom/leo/salt/ui/PowerMeunTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/ui/PowerMeunTabLayoutFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_e
    new-instance p1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_f
    new-instance p1, Lcom/leo/salt/kt/FragmentApplistions;

    invoke-direct {p1}, Lcom/leo/salt/kt/FragmentApplistions;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_10
    new-instance p1, Lcom/leo/salt/kt/FragmentPerformance;

    invoke-direct {p1}, Lcom/leo/salt/kt/FragmentPerformance;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_11
    new-instance p1, Lcom/leo/salt/kt/ImgFragment;

    invoke-direct {p1}, Lcom/leo/salt/kt/ImgFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_12
    new-instance p1, Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/LogThatShitFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_13
    new-instance p1, Lcom/leo/salt/fragment/SettingsFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/SettingsFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_14
    new-instance p1, Lcom/leo/salt/ui/GlobalKyesActionTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/ui/GlobalKyesActionTabLayoutFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_15
    new-instance p1, Lcom/leo/salt/fragment/POPFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/POPFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_16
    new-instance p1, Lcom/leo/salt/wallpaper/PowerMenuWallpaperPicker;

    invoke-direct {p1}, Lcom/leo/salt/wallpaper/PowerMenuWallpaperPicker;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_17
    new-instance p1, Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/SystemAnimationFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_18
    new-instance p1, Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-direct {p1}, Lcom/leo/salt/autostarts/ManageAutostarts;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_19
    new-instance p1, Lcom/leo/salt/fragment/MultiTouchFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/MultiTouchFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_1a
    new-instance p1, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_1b
    new-instance p1, Lcom/leo/salt/fragment/LockScreenOthersFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/LockScreenOthersFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_1c
    new-instance p1, Lcom/leo/salt/fragment/LockScreenCarrierFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/LockScreenCarrierFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_1d
    new-instance p1, Lcom/leo/salt/wallpaper/RecentsWallpaperPicker;

    invoke-direct {p1}, Lcom/leo/salt/wallpaper/RecentsWallpaperPicker;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_1e
    new-instance p1, Lcom/leo/salt/fragment/TaskBackgroundWallpaperFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/TaskBackgroundWallpaperFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_1f
    new-instance p1, Lcom/leo/salt/wallpaper/QSWallpaperPicker;

    invoke-direct {p1}, Lcom/leo/salt/wallpaper/QSWallpaperPicker;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_20
    new-instance p1, Lcom/leo/salt/ui/NotificationPanelBGTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/ui/NotificationPanelBGTabLayoutFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto/16 :goto_0

    :pswitch_21
    new-instance p1, Lcom/leo/salt/fragment/PulldownNotificationOthersFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownNotificationOthersFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_22
    new-instance p1, Lcom/leo/salt/fragment/PulldownNotificationCarrierFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownNotificationCarrierFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_23
    new-instance p1, Lcom/leo/salt/fragment/PulldownButtonFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownButtonFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_24
    new-instance p1, Lcom/leo/salt/ui/QSClockTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/ui/QSClockTabLayoutFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_25
    new-instance p1, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;

    invoke-direct {p1}, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_26
    new-instance p1, Lcom/leo/salt/fragment/StatusBarBackgroundWallpaperFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarBackgroundWallpaperFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_27
    new-instance p1, Lcom/leo/salt/ui/StatusBarBatteryTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/ui/StatusBarBatteryTabLayoutFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_28
    new-instance p1, Lcom/leo/salt/fragment/StatusBarNetworkTrafficFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarNetworkTrafficFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_29
    new-instance p1, Lcom/leo/salt/fragment/StatusBarCarrierFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarCarrierFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_2a
    new-instance p1, Lcom/leo/salt/fragment/StatusBarOperatorFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarOperatorFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_2b
    new-instance p1, Lcom/leo/salt/ui/StatusBarIconTabLayoutFragment;

    invoke-direct {p1}, Lcom/leo/salt/ui/StatusBarIconTabLayoutFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    goto :goto_0

    :pswitch_2c
    new-instance p1, Lcom/leo/salt/fragment/StatusBarClockFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarClockFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/activity/SubActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/activity/SubActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/activity/SubActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/activity/SubActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/activity/SubActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0024

    return v0
.end method

.method protected initStatusBarColor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseSubActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/activity/SubActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/activity/SubActivity;->KEY_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/leo/salt/activity/SubActivity$FragmentType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->getMResTitle$app_release()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/activity/SubActivity;->setupToolBar(IZ)V

    invoke-direct {p0, p1}, Lcom/leo/salt/activity/SubActivity;->getFragmentByType(Lcom/leo/salt/activity/SubActivity$FragmentType;)Landroid/app/Fragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leo/salt/activity/SubActivity;->addContent(Landroid/app/Fragment;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.leo.salt.activity.SubActivity.FragmentType"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
