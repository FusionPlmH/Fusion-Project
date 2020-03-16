.class public final Lcom/leo/salt/MainActivity;
.super Lcom/leo/salt/base/BaseActivity;
.source "MainActivity.kt"

# interfaces
.implements Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/MainActivity$LeoObserver;,
        Lcom/leo/salt/MainActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/leo/salt/MainActivity\n*L\n1#1,736:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00e4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 |2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002|}B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010C\u001a\u00020DH\u0002J\u0006\u0010E\u001a\u00020DJ\u0008\u0010F\u001a\u00020DH\u0002J\u0006\u0010G\u001a\u00020DJ\u0008\u0010H\u001a\u00020DH\u0002J\u001c\u0010I\u001a\u00020,2\u0008\u0010J\u001a\u0004\u0018\u0001012\u0008\u0010K\u001a\u0004\u0018\u00010LH\u0003J*\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0010J\u001a\u0004\u0018\u0001012\u0008\u0010K\u001a\u0004\u0018\u00010L2\u0006\u0010N\u001a\u00020,H\u0002J\u0008\u0010O\u001a\u00020DH\u0002J\u0008\u0010P\u001a\u00020DH\u0002J\u0008\u0010Q\u001a\u00020DH\u0002J\u0008\u0010R\u001a\u00020DH\u0002J\u0008\u0010S\u001a\u00020DH\u0002J\u0008\u0010T\u001a\u00020,H\u0014J\u0008\u0010U\u001a\u00020DH\u0002J\u0008\u0010V\u001a\u00020WH\u0014J\u0006\u0010X\u001a\u00020DJ\u000e\u0010Y\u001a\u00020D2\u0006\u0010Z\u001a\u00020[J\u0018\u0010\\\u001a\u00020D2\u0006\u0010]\u001a\u00020,2\u0006\u0010^\u001a\u00020\u0006H\u0002J\u0008\u0010_\u001a\u00020DH\u0016J\u0010\u0010`\u001a\u00020D2\u0006\u0010]\u001a\u00020,H\u0016J\u0010\u0010a\u001a\u00020D2\u0006\u0010b\u001a\u00020\u000bH\u0016J\u0012\u0010c\u001a\u00020D2\u0008\u0010d\u001a\u0004\u0018\u00010eH\u0014J\u0010\u0010f\u001a\u00020W2\u0006\u0010g\u001a\u00020hH\u0016J\u0008\u0010i\u001a\u00020DH\u0014J\u0018\u0010j\u001a\u00020W2\u0006\u0010k\u001a\u00020,2\u0006\u0010l\u001a\u00020mH\u0016J\u0010\u0010n\u001a\u00020W2\u0006\u0010o\u001a\u00020\u0014H\u0016J\u0018\u0010p\u001a\u00020D2\u0006\u0010^\u001a\u00020\u00062\u0006\u0010q\u001a\u00020WH\u0016J\u0008\u0010r\u001a\u00020DH\u0014J\u0006\u0010s\u001a\u00020DJ\u0006\u0010t\u001a\u00020DJ&\u0010u\u001a\u00020D2\u0008\u0010v\u001a\u0004\u0018\u00010\u00062\u0008\u0010w\u001a\u0004\u0018\u00010\u00062\u0008\u0010x\u001a\u0004\u0018\u00010\u0006H\u0002J\u0018\u0010y\u001a\u00020D2\u0006\u0010z\u001a\u00020,2\u0006\u0010{\u001a\u00020,H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\n \u001f*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\n \u001f*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010%\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010(R\u0010\u0010)\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010-\u001a\u0008\u0018\u00010.R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00103\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u000109X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010<\u001a\u0004\u0018\u00010=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010?\u001a\u0004\u0018\u00010@X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010A\u001a\u0004\u0018\u00010BX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006~"
    }
    d2 = {
        "Lcom/leo/salt/MainActivity;",
        "Lcom/leo/salt/base/BaseActivity;",
        "Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;",
        "Landroid/view/View$OnClickListener;",
        "()V",
        "FAB_DISABIED_KEY",
        "",
        "bottomNavigationView",
        "Landroid/support/design/widget/BottomNavigationView;",
        "dots",
        "",
        "Landroid/view/View;",
        "drawerLayout",
        "Landroid/support/v4/widget/DrawerLayout;",
        "imageCarousel",
        "Lcom/leo/salt/ImageCarousel;",
        "imageInfoList",
        "",
        "Lcom/leo/salt/ImageInfo;",
        "mAbout",
        "Landroid/view/MenuItem;",
        "mAboutMenu",
        "Lcom/leo/salt/ui/AboutMenuFragment;",
        "mAssistMenu",
        "Lcom/leo/salt/ui/AssistMenuFragment;",
        "mCarrier",
        "Landroid/widget/TextView;",
        "mChangelog",
        "mDonate",
        "mEulaKey",
        "mEulaName",
        "kotlin.jvm.PlatformType",
        "mEulaUrl",
        "mExtraInfo",
        "Lcom/leo/salt/extrainfo/ExtraInfoFragment;",
        "mFloatingActionButton",
        "Landroid/support/design/widget/FloatingActionButton;",
        "mFragments",
        "",
        "Landroid/support/v4/app/Fragment;",
        "[Landroid/support/v4/app/Fragment;",
        "mHeaderWeather",
        "mHelp",
        "mLastfragment",
        "",
        "mLeoRomObserver",
        "Lcom/leo/salt/MainActivity$LeoObserver;",
        "mLeoSet",
        "mLineLayoutDot",
        "Landroid/widget/LinearLayout;",
        "mPowerItem",
        "mReset",
        "mRomAdvanced",
        "Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;",
        "mShare",
        "mSystemUpdate",
        "mToolbar",
        "Landroid/support/v7/widget/Toolbar;",
        "mTvPagerTitle",
        "mUI_STYLE_KEY",
        "mViewPager",
        "Landroid/support/v4/view/ViewPager;",
        "mWeather",
        "navigationView",
        "Landroid/support/design/widget/NavigationView;",
        "reboot",
        "Lcom/leo/salt/service/RebootReceiver;",
        "DrawerBottomView",
        "",
        "GetHeadView",
        "HeaderTextView",
        "LeoNetWork",
        "WhiteList",
        "addDot",
        "linearLayout",
        "backgount",
        "Landroid/graphics/drawable/Drawable;",
        "addDots",
        "number",
        "imageStart",
        "initBottomNavigationView",
        "initEvent",
        "initEventEN",
        "initFragment",
        "initLayout",
        "initNavigationView",
        "initStatusBarColor",
        "",
        "initView",
        "isViewModel",
        "ctx",
        "Landroid/content/Context;",
        "launchBackupRestoreService",
        "which",
        "filePath",
        "onBackPressed",
        "onBackupRestoreResult",
        "onClick",
        "v",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onDestroy",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onOptionsItemSelected",
        "item",
        "onRestoreRequested",
        "isConfirmed",
        "onResume",
        "setPower",
        "setdonateregion",
        "shareText",
        "dlgTitle",
        "subject",
        "content",
        "switchFragment",
        "lastfragment",
        "index",
        "Companion",
        "LeoObserver",
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
.field public static final Companion:Lcom/leo/salt/MainActivity$Companion;

.field private static final mChangelogUrl:Ljava/lang/String;


# instance fields
.field private final FAB_DISABIED_KEY:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private bottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

.field private dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private imageCarousel:Lcom/leo/salt/ImageCarousel;

.field private imageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/salt/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAbout:Landroid/view/MenuItem;

.field private mAboutMenu:Lcom/leo/salt/ui/AboutMenuFragment;

.field private mAssistMenu:Lcom/leo/salt/ui/AssistMenuFragment;

.field private mCarrier:Landroid/widget/TextView;

.field private mChangelog:Landroid/view/MenuItem;

.field private mDonate:Landroid/view/MenuItem;

.field private final mEulaKey:Ljava/lang/String;

.field private final mEulaName:Ljava/lang/String;

.field private final mEulaUrl:Ljava/lang/String;

.field private mExtraInfo:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

.field private mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field private mFragments:[Landroid/support/v4/app/Fragment;

.field private mHeaderWeather:Landroid/widget/TextView;

.field private mHelp:Landroid/view/MenuItem;

.field private mLastfragment:I

.field private mLeoRomObserver:Lcom/leo/salt/MainActivity$LeoObserver;

.field private mLeoSet:Landroid/widget/TextView;

.field private mLineLayoutDot:Landroid/widget/LinearLayout;

.field private mPowerItem:Landroid/view/MenuItem;

.field private mReset:Landroid/view/MenuItem;

.field private mRomAdvanced:Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;

.field private mShare:Landroid/view/MenuItem;

.field private mSystemUpdate:Landroid/widget/TextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mTvPagerTitle:Landroid/widget/TextView;

.field private final mUI_STYLE_KEY:Ljava/lang/String;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWeather:Landroid/widget/TextView;

.field private navigationView:Landroid/support/design/widget/NavigationView;

.field private reboot:Lcom/leo/salt/service/RebootReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/leo/salt/MainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/leo/salt/MainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/leo/salt/MainActivity;->Companion:Lcom/leo/salt/MainActivity$Companion;

    invoke-static {}, Lcom/leo/salt/utils/Constants;->getChangelogUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/MainActivity;->mChangelogUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/base/BaseActivity;-><init>()V

    invoke-static {}, Lcom/leo/salt/utils/Constants;->getEulatitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mEulaName:Ljava/lang/String;

    const-string v0, "leo_os_eula_key"

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mEulaKey:Ljava/lang/String;

    invoke-static {}, Lcom/leo/salt/utils/Constants;->getEulaUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mEulaUrl:Ljava/lang/String;

    const-string v0, "leo_tweaks_ui_style"

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mUI_STYLE_KEY:Ljava/lang/String;

    const-string v0, "leo_tweaks_fab_style"

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->FAB_DISABIED_KEY:Ljava/lang/String;

    return-void
.end method

.method private final DrawerBottomView()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mSystemUpdate:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mSystemUpdate:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    new-instance v2, Lcom/leo/salt/MainActivity$DrawerBottomView$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/MainActivity$DrawerBottomView$1;-><init>(Lcom/leo/salt/MainActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mLeoSet:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mLeoSet:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    new-instance v2, Lcom/leo/salt/MainActivity$DrawerBottomView$2;

    invoke-direct {v2, p0}, Lcom/leo/salt/MainActivity$DrawerBottomView$2;-><init>(Lcom/leo/salt/MainActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mWeather:Landroid/widget/TextView;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/utils/Weather;->isWeatherTrue(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mWeather:Landroid/widget/TextView;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-static {v0}, Lcom/leo/salt/utils/Weather;->updateLeoWeatherLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mWeather:Landroid/widget/TextView;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    sget v1, Lcom/leo/salt/utils/Constants;->Enabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mWeather:Landroid/widget/TextView;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    new-instance v1, Lcom/leo/salt/MainActivity$DrawerBottomView$3;

    invoke-direct {v1, p0}, Lcom/leo/salt/MainActivity$DrawerBottomView$3;-><init>(Lcom/leo/salt/MainActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method private final HeaderTextView()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mCarrier:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mCarrier:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/leo/salt/extrainfo/ExtraInfo;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/leo/salt/extrainfo/ExtraInfo;->getCurrentNetType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mCarrier:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v2, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/leo/salt/ui/AboutMenuFragment;->getCustomizedColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mHeaderWeather:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/utils/Weather;->isWeatherTrue(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mHeaderWeather:Landroid/widget/TextView;

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-static {v0}, Lcom/leo/salt/utils/Weather;->updateLeoWeatherDetail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mHeaderWeather:Landroid/widget/TextView;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    sget v1, Lcom/leo/salt/utils/Constants;->Enabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mHeaderWeather:Landroid/widget/TextView;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/leo/salt/ui/AboutMenuFragment;->getCustomizedColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    return-void
.end method

.method private final WhiteList()V
    .locals 4

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39J50GAG9"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/leo/salt/MainActivity;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R58J44F6B3D"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/leo/salt/MainActivity;

    iget-object v0, v0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u4e2b\u5934"

    sget-object v2, Lcom/leo/salt/utils/Constants;->Hitomi_OS:Ljava/lang/String;

    const-string v3, "leo_Hitomi_OS"

    invoke-static {v0, v1, v2, v3}, Lcom/leo/salt/widget/DialogUtil;->cautionMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RF8J52ELJFR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/leo/salt/MainActivity;

    iget-object v0, v0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u4e2b\u5934"

    sget-object v2, Lcom/leo/salt/utils/Constants;->Hitomi_OS:Ljava/lang/String;

    const-string v3, "leo_Hitomi_OS"

    invoke-static {v0, v1, v2, v3}, Lcom/leo/salt/widget/DialogUtil;->cautionMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28J51NJ0FD"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/leo/salt/MainActivity;

    invoke-virtual {v0}, Lcom/leo/salt/MainActivity;->LeoNetWork()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/utils/root/Verify;->get(Landroid/content/Context;)Lcom/leo/salt/utils/root/Verify;

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->LeoNetWork()V

    :goto_0
    return-void
.end method

.method public static final synthetic access$getDrawerLayout$p(Lcom/leo/salt/MainActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object p0
.end method

.method public static final synthetic access$getFAB_DISABIED_KEY$p(Lcom/leo/salt/MainActivity;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->FAB_DISABIED_KEY:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMAbout$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->mAbout:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic access$getMChangelog$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->mChangelog:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic access$getMChangelogUrl$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/MainActivity;->mChangelogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getMDonate$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->mDonate:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic access$getMHelp$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->mHelp:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic access$getMIntent$p(Lcom/leo/salt/MainActivity;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static final synthetic access$getMLastfragment$p(Lcom/leo/salt/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/MainActivity;->mLastfragment:I

    return p0
.end method

.method public static final synthetic access$getMPowerItem$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->mPowerItem:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic access$getMReset$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->mReset:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic access$getMShare$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/MainActivity;->mShare:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static final synthetic access$setDrawerLayout$p(Lcom/leo/salt/MainActivity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 0
    .param p1    # Landroid/support/v4/widget/DrawerLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-void
.end method

.method public static final synthetic access$setMAbout$p(Lcom/leo/salt/MainActivity;Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mAbout:Landroid/view/MenuItem;

    return-void
.end method

.method public static final synthetic access$setMChangelog$p(Lcom/leo/salt/MainActivity;Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mChangelog:Landroid/view/MenuItem;

    return-void
.end method

.method public static final synthetic access$setMContext$p(Lcom/leo/salt/MainActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public static final synthetic access$setMDonate$p(Lcom/leo/salt/MainActivity;Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mDonate:Landroid/view/MenuItem;

    return-void
.end method

.method public static final synthetic access$setMHelp$p(Lcom/leo/salt/MainActivity;Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mHelp:Landroid/view/MenuItem;

    return-void
.end method

.method public static final synthetic access$setMIntent$p(Lcom/leo/salt/MainActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public static final synthetic access$setMLastfragment$p(Lcom/leo/salt/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/MainActivity;->mLastfragment:I

    return-void
.end method

.method public static final synthetic access$setMPowerItem$p(Lcom/leo/salt/MainActivity;Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mPowerItem:Landroid/view/MenuItem;

    return-void
.end method

.method public static final synthetic access$setMReset$p(Lcom/leo/salt/MainActivity;Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mReset:Landroid/view/MenuItem;

    return-void
.end method

.method public static final synthetic access$setMShare$p(Lcom/leo/salt/MainActivity;Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mShare:Landroid/view/MenuItem;

    return-void
.end method

.method public static final synthetic access$shareText(Lcom/leo/salt/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/leo/salt/MainActivity;->shareText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$switchFragment(Lcom/leo/salt/MainActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/MainActivity;->switchFragment(II)V

    return-void
.end method

.method private final addDot(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;)I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/view/View;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    move-object p2, p0

    check-cast p2, Landroid/app/Activity;

    new-instance v1, Lcom/leo/salt/MainActivity$addDot$1;

    invoke-direct {v1, p1, v0}, Lcom/leo/salt/MainActivity$addDot$1;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p1

    return p1
.end method

.method private final addDots(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/graphics/drawable/Drawable;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/MainActivity;->addDot(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final imageStart()V
    .locals 10

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_7

    iget-object v5, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/leo/salt/ImageInfo;

    invoke-virtual {v5}, Lcom/leo/salt/ImageInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    new-instance v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    const v7, 0x3fe3d70a    # 1.78f

    invoke-virtual {v5, v7}, Lcom/facebook/drawee/view/SimpleDraweeView;->setAspectRatio(F)V

    new-instance v7, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    const v8, 0x7f080105

    invoke-static {v6, v8}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v8, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v7, v6, v8}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setPlaceholderImage(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    invoke-virtual {v5, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v6, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/leo/salt/ImageInfo;

    invoke-virtual {v6}, Lcom/leo/salt/ImageInfo;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v6

    new-instance v7, Lcom/facebook/imagepipeline/common/ResizeOptions;

    const/16 v8, 0x500

    const/16 v9, 0x2d0

    invoke-direct {v7, v8, v9}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v6

    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    invoke-virtual {v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    invoke-virtual {v6}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v6

    if-eqz v6, :cond_6

    check-cast v6, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    check-cast v6, Lcom/facebook/drawee/interfaces/DraweeController;

    invoke-virtual {v5, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    aget v6, v0, v3

    invoke-virtual {v5, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setId(I)V

    iget-object v6, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v6, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setTag(Ljava/lang/Object;)V

    move-object v6, p0

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v6, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/leo/salt/ImageInfo;

    invoke-virtual {v6}, Lcom/leo/salt/ImageInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.facebook.drawee.backends.pipeline.PipelineDraweeController"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mLineLayoutDot:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/leo/salt/MainActivity;->Companion:Lcom/leo/salt/MainActivity$Companion;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    const v4, 0x7f08008c

    invoke-virtual {v3, v5, v4}, Lcom/leo/salt/MainActivity$Companion;->fromResToDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/leo/salt/MainActivity;->addDots(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->dots:Ljava/util/List;

    new-instance v0, Lcom/leo/salt/ImageCarousel;

    iget-object v6, p0, Lcom/leo/salt/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/leo/salt/MainActivity;->mTvPagerTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/leo/salt/MainActivity;->dots:Ljava/util/List;

    const/16 v9, 0x1388

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/leo/salt/ImageCarousel;-><init>(Landroid/content/Context;Landroid/support/v4/view/ViewPager;Landroid/widget/TextView;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->imageCarousel:Lcom/leo/salt/ImageCarousel;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageCarousel:Lcom/leo/salt/ImageCarousel;

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/leo/salt/ImageCarousel;->init(Ljava/util/List;[Ljava/lang/String;)Lcom/leo/salt/ImageCarousel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/ImageCarousel;->startAutoPlay()V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageCarousel:Lcom/leo/salt/ImageCarousel;

    if-nez v0, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v0}, Lcom/leo/salt/ImageCarousel;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090122
        0x7f090123
        0x7f090124
        0x7f090125
        0x7f090126
        0x7f090127
        0x7f090128
        0x7f090129
    .end array-data
.end method

.method private final initBottomNavigationView()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->bottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v1, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;-><init>(Lcom/leo/salt/MainActivity;)V

    check-cast v1, Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method private final initEvent()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v7, Lcom/leo/salt/ImageInfo;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100436

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/leo/salt/utils/Constants;->IMG0Url:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/ImageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    new-instance v7, Lcom/leo/salt/ImageInfo;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100091

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/leo/salt/utils/Constants;->IMG1Url:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/ImageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    new-instance v7, Lcom/leo/salt/ImageInfo;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100081

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/leo/salt/utils/Constants;->IMG2Url:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/ImageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    new-instance v7, Lcom/leo/salt/ImageInfo;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10007f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/leo/salt/utils/Constants;->IMG3Url:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/ImageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    new-instance v7, Lcom/leo/salt/ImageInfo;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100089

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/leo/salt/utils/Constants;->IMG4Url:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/ImageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final initEventEN()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v7, Lcom/leo/salt/ImageInfo;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100436

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/leo/salt/utils/Constants;->IMG0UrlEN:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/ImageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    new-instance v7, Lcom/leo/salt/ImageInfo;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100091

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/leo/salt/utils/Constants;->IMG1UrlEN:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/ImageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    new-instance v7, Lcom/leo/salt/ImageInfo;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100081

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/leo/salt/utils/Constants;->IMG2UrlEN:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/ImageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    new-instance v7, Lcom/leo/salt/ImageInfo;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10007f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/leo/salt/utils/Constants;->IMG3UrlEN:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/ImageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    new-instance v7, Lcom/leo/salt/ImageInfo;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100089

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/leo/salt/utils/Constants;->IMG4UrlEN:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/ImageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final initFragment()V
    .locals 4

    new-instance v0, Lcom/leo/salt/ui/AboutMenuFragment;

    invoke-direct {v0}, Lcom/leo/salt/ui/AboutMenuFragment;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mAboutMenu:Lcom/leo/salt/ui/AboutMenuFragment;

    new-instance v0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;

    invoke-direct {v0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mRomAdvanced:Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;

    new-instance v0, Lcom/leo/salt/ui/AssistMenuFragment;

    invoke-direct {v0}, Lcom/leo/salt/ui/AssistMenuFragment;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mAssistMenu:Lcom/leo/salt/ui/AssistMenuFragment;

    new-instance v0, Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-direct {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mExtraInfo:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mAboutMenu:Lcom/leo/salt/ui/AboutMenuFragment;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/leo/salt/MainActivity;->mRomAdvanced:Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v3, Landroid/support/v4/app/Fragment;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/leo/salt/MainActivity;->mAssistMenu:Lcom/leo/salt/ui/AssistMenuFragment;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast v3, Landroid/support/v4/app/Fragment;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/leo/salt/MainActivity;->mExtraInfo:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v3, Landroid/support/v4/app/Fragment;

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mFragments:[Landroid/support/v4/app/Fragment;

    iput v2, p0, Lcom/leo/salt/MainActivity;->mLastfragment:I

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900ab

    iget-object v2, p0, Lcom/leo/salt/MainActivity;->mAboutMenu:Lcom/leo/salt/ui/AboutMenuFragment;

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mAboutMenu:Lcom/leo/salt/ui/AboutMenuFragment;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final initNavigationView()V
    .locals 7

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090109

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mAbout:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090104

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mDonate:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090106

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mPowerItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090103

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mChangelog:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090105

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mHelp:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090108

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mShare:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090107

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mReset:Landroid/view/MenuItem;

    new-instance v0, Lcom/leo/salt/MainActivity$initNavigationView$toggle$1;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lcom/leo/salt/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v5, 0x7f1002aa

    const v6, 0x7f1002a9

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/MainActivity$initNavigationView$toggle$1;-><init>(Lcom/leo/salt/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    invoke-virtual {v0}, Lcom/leo/salt/MainActivity$initNavigationView$toggle$1;->syncState()V

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    move-object v2, v0

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    new-instance v2, Lcom/leo/salt/MainActivity$initNavigationView$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/MainActivity$initNavigationView$1;-><init>(Lcom/leo/salt/MainActivity;)V

    check-cast v2, Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/salt/MainActivity$initNavigationView$toggle$1;->setDrawerIndicatorEnabled(Z)V

    sget v0, Lcom/leo/salt/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    sget v0, Lcom/leo/salt/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/leo/salt/MainActivity$initNavigationView$2;

    invoke-direct {v1, p0}, Lcom/leo/salt/MainActivity$initNavigationView$2;-><init>(Lcom/leo/salt/MainActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final launchBackupRestoreService(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/leo/salt/service/BackupRestoreService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    packed-switch p1, :pswitch_data_0

    const/4 p2, 0x0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const-string v1, "com.leo.salt.action.RESTORE"

    const-string v2, "file_path"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const-string v1, "com.leo.salt.action.BACKUP"

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->finish()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final shareText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_3

    const-string v0, ""

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string v1, ""

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p2, "android.intent.extra.TEXT"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    const-string p2, ""

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private final switchFragment(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "supportFragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mFragments:[Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mFragments:[Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f0900ab

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mFragments:[Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    aget-object v1, v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mFragments:[Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method public final GetHeadView()V
    .locals 7

    const v0, 0x7f09009d

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_tweaks_switch_subtitle"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getROMVersion()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/leo/salt/utils/Constants;->Hitomi_ROM:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v4, "\u82e5\u6709\u6240\u6267\uff0c\u5fc5\u6709\u6240\u6210"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u3016"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/leo/salt/utils/AndroidUtils;->customization(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u3017"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    sget-object v4, Lcom/leo/salt/MainActivity;->Companion:Lcom/leo/salt/MainActivity$Companion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leo_tweaks_subtitle_label"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u3016"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v6, Landroid/content/Context;

    invoke-static {v6}, Lcom/leo/salt/utils/AndroidUtils;->customization(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u3017"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/leo/salt/MainActivity$Companion;->getLeoCustomString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    const v5, 0x7f1101b8

    invoke-virtual {v1, v4, v5}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->FAB_DISABIED_KEY:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    new-instance v1, Lcom/leo/salt/MainActivity$GetHeadView$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/MainActivity$GetHeadView$1;-><init>(Lcom/leo/salt/MainActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final LeoNetWork()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->hasNetWork(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10011c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10011e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10011d

    new-instance v2, Lcom/leo/salt/MainActivity$LeoNetWork$dialog$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/MainActivity$LeoNetWork$dialog$1;-><init>(Lcom/leo/salt/MainActivity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/MainActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0021

    return v0
.end method

.method protected initStatusBarColor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final initView()V
    .locals 8

    const v0, 0x7f09010b

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f09010a

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->bottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0901b1

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mTvPagerTitle:Landroid/widget/TextView;

    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mLineLayoutDot:Landroid/widget/LinearLayout;

    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mWeather:Landroid/widget/TextView;

    const v0, 0x7f0901a8

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mLeoSet:Landroid/widget/TextView;

    const v0, 0x7f0901a7

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mSystemUpdate:Landroid/widget/TextView;

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/leo/salt/MainActivity;

    invoke-direct {v0}, Lcom/leo/salt/MainActivity;->WhiteList()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/leo/salt/widget/WebDialog;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/leo/salt/MainActivity;->mEulaName:Ljava/lang/String;

    iget-object v5, p0, Lcom/leo/salt/MainActivity;->mEulaUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/leo/salt/MainActivity;->mEulaKey:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/leo/salt/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leo_tweaks_switch_donate"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/leo/salt/widget/DialogUtil;->saaaaaaaaaaaa(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901bc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mHeaderWeather:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mCarrier:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/leo/salt/MainActivity;->initBottomNavigationView()V

    invoke-direct {p0}, Lcom/leo/salt/MainActivity;->initNavigationView()V

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/leo/salt/MainActivity;->initEvent()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/leo/salt/MainActivity;->initEventEN()V

    :goto_1
    invoke-static {}, Lcom/leo/salt/utils/Utils;->copyAssetFolder()V

    invoke-direct {p0}, Lcom/leo/salt/MainActivity;->imageStart()V

    invoke-direct {p0}, Lcom/leo/salt/MainActivity;->DrawerBottomView()V

    invoke-direct {p0}, Lcom/leo/salt/MainActivity;->HeaderTextView()V

    new-instance v0, Lcom/leo/salt/service/RebootReceiver;

    invoke-direct {v0}, Lcom/leo/salt/service/RebootReceiver;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->reboot:Lcom/leo/salt/service/RebootReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->REBOOT_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/leo/salt/MainActivity;->reboot:Lcom/leo/salt/service/RebootReceiver;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/leo/salt/MainActivity;->initFragment()V

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->GetHeadView()V

    new-instance v0, Lcom/leo/salt/MainActivity$LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/MainActivity$LeoObserver;-><init>(Lcom/leo/salt/MainActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/leo/salt/MainActivity;->mLeoRomObserver:Lcom/leo/salt/MainActivity$LeoObserver;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mLeoRomObserver:Lcom/leo/salt/MainActivity$LeoObserver;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Lcom/leo/salt/MainActivity$LeoObserver;->observe()V

    sget-object v0, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->ClearOTA()V

    return-void

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v4.widget.DrawerLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isViewModel(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mUI_STYLE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/leo/salt/MainActivity;->mUI_STYLE_KEY:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v0, :cond_0

    const-string v0, "\u4e5d\u5bab\u683c\u98ce\u683c"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const-string v0, "\u5217\u8868\u98ce\u683c"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackupRestoreResult(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const/16 v0, 0x41

    invoke-static {v0}, Lcom/leo/salt/widget/BackupsDialog;->newInstance(I)Lcom/leo/salt/widget/BackupsDialog;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    const-string v1, "restore_selector"

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/MainActivity;->launchBackupRestoreService(ILjava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object v0, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Log:Lcom/leo/salt/activity/SubActivity$FragmentType;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    sget-object v0, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Apps:Lcom/leo/salt/activity/SubActivity$FragmentType;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    sget-object v0, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Autostart:Lcom/leo/salt/activity/SubActivity$FragmentType;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/leo/salt/activity/WifiPasswordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/leo/salt/activity/WebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string v0, "url"

    const-string v1, "http://www.leorom.cc/"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090122
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0901a5

    invoke-virtual {p0, p1}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/leo/salt/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/leo/salt/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->initView()V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/leo/salt/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/leo/salt/MainActivity;->reboot:Lcom/leo/salt/service/RebootReceiver;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/leo/salt/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    return v3

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->onBackPressed()V

    return v3

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/leo/salt/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v4.widget.DrawerLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090024

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/leo/salt/MainActivity;->isViewModel(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->reload()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRestoreRequested(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/leo/salt/MainActivity;->launchBackupRestoreService(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    const/16 v1, 0x41

    invoke-static {v1, v0, p1}, Lcom/leo/salt/widget/BackupsDialog;->backupRestoreInstance(IZLjava/lang/String;)Lcom/leo/salt/widget/BackupsDialog;

    move-result-object p1

    check-cast p1, Landroid/app/Fragment;

    const-string v0, "restore_confirm"

    invoke-virtual {p2, p1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/leo/salt/base/BaseActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->REBOOT_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->reboot:Lcom/leo/salt/service/RebootReceiver;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/leo/salt/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final setPower()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10040f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/MainActivity$setPower$dialog$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/MainActivity$setPower$dialog$1;-><init>(Lcom/leo/salt/MainActivity;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f030041

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final setdonateregion()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSettingdonate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/leo/salt/donate/DonateActivity;

    invoke-static {v0, v1, v2}, Lcom/leo/salt/utils/Utils;->StartActivity(ILandroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/MainActivity;->mContext:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/widget/DialogUtil;->EnglishDonate(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
