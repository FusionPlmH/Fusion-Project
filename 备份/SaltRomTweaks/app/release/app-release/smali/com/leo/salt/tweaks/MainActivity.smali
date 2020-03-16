.class public Lcom/leo/salt/tweaks/MainActivity;
.super Lcom/leo/salt/tweaks/base/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/leo/salt/tweaks/updates/UpdatesMessage$OnOTAListener;
.implements Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;
.implements Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/MainActivity$intSettings;,
        Lcom/leo/salt/tweaks/MainActivity$LeoObserver;,
        Lcom/leo/salt/tweaks/MainActivity$ListAdapter;,
        Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Leo_Settings"


# instance fields
.field public GradientBgStyle:I

.field public drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private lastIndex:I

.field private mBottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

.field private mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

.field mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public mLeoNavigationDrawer:Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;

.field private mLeoObserver:Lcom/leo/salt/tweaks/MainActivity$LeoObserver;

.field mListView:Landroid/widget/ListView;

.field public mintSettings:Lcom/leo/salt/tweaks/MainActivity$intSettings;

.field public mjQuery:Lcom/leo/salt/tweaks/updates/jQuery;

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/MainActivity;)Lcom/leo/floatingtoolbar/FloatingToolbar;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/MainActivity;)Landroid/support/design/widget/BottomNavigationView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mBottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/leo/salt/tweaks/MainActivity;)Landroid/support/design/widget/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method private applyBlur()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/MainActivity$2;-><init>(Lcom/leo/salt/tweaks/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private setDrawerLeftEdgeSize(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;F)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mLeftDragger"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mEdgeSize"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p1, v2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private setFragmentPosition(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity;->mFragments:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    iget-object v2, p0, Lcom/leo/salt/tweaks/MainActivity;->mFragments:Ljava/util/List;

    iget v3, p0, Lcom/leo/salt/tweaks/MainActivity;->lastIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    iput p1, p0, Lcom/leo/salt/tweaks/MainActivity;->lastIndex:I

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    const p1, 0x7f0900bd

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private setUpMenu()V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/MainActivity;->AppSetting()V

    return-void
.end method


# virtual methods
.method public AppSetting()V
    .locals 3

    new-instance v0, Lcom/leo/salt/tweaks/updates/jQuery;

    invoke-direct {v0}, Lcom/leo/salt/tweaks/updates/jQuery;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mjQuery:Lcom/leo/salt/tweaks/updates/jQuery;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mjQuery:Lcom/leo/salt/tweaks/updates/jQuery;

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/leo/salt/tweaks/MainActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p0, v1, v2}, Lcom/leo/salt/tweaks/updates/jQuery;->rollingPicture(Lcom/leo/salt/tweaks/MainActivity;Landroid/content/Context;Landroid/support/design/widget/AppBarLayout;)V

    new-instance v0, Lcom/leo/salt/tweaks/updates/UpdatesMessage;

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/leo/salt/tweaks/updates/UpdatesMessage;-><init>(Lcom/leo/salt/tweaks/updates/UpdatesMessage$OnOTAListener;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mCheckUpdates:Lcom/leo/salt/tweaks/updates/UpdatesMessage;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_global_power_globala_ctionsStyle_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/leo/salt/tweaks/MainActivity;->GradientBgStyle:I

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/leo/salt/utils/PrefUtils;->DrawerBlur(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/MainActivity;->applyBlur()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const v0, 0x7f0900cf

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f0900ba

    invoke-virtual {p0, v1}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/leo/floatingtoolbar/FloatingToolbar;

    iput-object v1, p0, Lcom/leo/salt/tweaks/MainActivity;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v1, p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setClickListener(Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v1, v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->attachFab(Landroid/support/design/widget/FloatingActionButton;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0, p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->addMorphListener(Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;)V

    return-void
.end method

.method public BottomNavigationView()V
    .locals 2

    const v0, 0x7f090110

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mBottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mBottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    new-instance v1, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$XPEu0edFJER2dNJAl4EHk2ElMbc;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$XPEu0edFJER2dNJAl4EHk2ElMbc;-><init>(Lcom/leo/salt/tweaks/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/MainActivity;->initData()V

    return-void
.end method

.method public DrawerLayoutView()V
    .locals 7

    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;-><init>(Lcom/leo/salt/tweaks/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;

    iget-object v2, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;-><init>(Lcom/leo/salt/tweaks/MainActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v3, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v4, p0, Lcom/leo/salt/tweaks/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, p0, v0, v1}, Lcom/leo/salt/tweaks/MainActivity;->setDrawerLeftEdgeSize(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;F)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setScrimColor(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/leo/salt/tweaks/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/MainActivity$1;-><init>(Lcom/leo/salt/tweaks/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method

.method public OTACheck(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "versionName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->ota(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "leorom"

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ota_state_info_leo"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ota_state_info_leo_summary"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ota_state_info_usable"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/leo/salt/tools/service/NotificationUtil;->showOTANotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Not push"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "NO enable system update detection"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090039

    return v0
.end method

.method public initData()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mFragments:Ljava/util/List;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-direct {v1}, Lcom/leo/salt/gridView/AboutMenuFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/leo/salt/gridView/SystemUIMenuFragment;

    invoke-direct {v1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

    invoke-direct {v1}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    invoke-direct {v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/leo/salt/gridView/OtherMenuFragment;

    invoke-direct {v1}, Lcom/leo/salt/gridView/OtherMenuFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/leo/salt/tweaks/MainActivity;->setFragmentPosition(I)V

    return-void
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0025

    return v0
.end method

.method public synthetic lambda$BottomNavigationView$0$MainActivity(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/MainActivity;->onNavigationItem(Landroid/view/MenuItem;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->hide()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mBottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomNavigationView;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0901b0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const p1, 0x7f100041

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/MainActivity;->setTitle(I)V

    new-instance p1, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mLeoNavigationDrawer:Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;

    invoke-direct {p0}, Lcom/leo/salt/tweaks/MainActivity;->setUpMenu()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/MainActivity;->DrawerLayoutView()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/MainActivity;->BottomNavigationView()V

    new-instance p1, Lcom/leo/salt/tweaks/MainActivity$LeoObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/leo/salt/tweaks/MainActivity$LeoObserver;-><init>(Lcom/leo/salt/tweaks/MainActivity;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mLeoObserver:Lcom/leo/salt/tweaks/MainActivity$LeoObserver;

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mLeoObserver:Lcom/leo/salt/tweaks/MainActivity$LeoObserver;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/MainActivity$LeoObserver;->observe()V

    new-instance p1, Lcom/leo/salt/tweaks/MainActivity$intSettings;

    invoke-direct {p1, p0}, Lcom/leo/salt/tweaks/MainActivity$intSettings;-><init>(Lcom/leo/salt/tweaks/MainActivity;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mintSettings:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    return-void
.end method

.method public onItemClick(Landroid/view/MenuItem;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    const-string v0, "https://www.leorom.cc/"

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->InternetCheckView(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/leo/salt/tweaks/MainActivity;->GradientBgStyle:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    const-string v0, "com.leo.ACTION_POWER_A"

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    const-string v0, "com.leo.ACTION_POWER_B"

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    const-string v0, "com.leo.ACTION_POWER_C"

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    const-string v0, "com.leo.ACTION_POWER_D"

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mContext:Landroid/app/Activity;

    const-string v0, "https://www.leorom.cc/index.php/kernel.html"

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity;->mBottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomNavigationView;->setVisibility(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090022 -> :sswitch_3
        0x7f090028 -> :sswitch_2
        0x7f09002a -> :sswitch_1
        0x7f09002b -> :sswitch_0
    .end sparse-switch
.end method

.method public onItemLongClick(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/MainActivity;->onBackPressed()V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMorphEnd()V
    .locals 0

    return-void
.end method

.method public onMorphStart()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mBottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomNavigationView;->setVisibility(I)V

    return-void
.end method

.method public onNavigationItem(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/leo/salt/tweaks/MainActivity;->setFragmentPosition(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/MainActivity;->setFragmentPosition(I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/MainActivity;->setFragmentPosition(I)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/MainActivity;->setFragmentPosition(I)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/MainActivity;->setFragmentPosition(I)V

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f09010f
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onUnmorphEnd()V
    .locals 0

    return-void
.end method

.method public onUnmorphStart()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity;->mBottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomNavigationView;->setVisibility(I)V

    return-void
.end method
