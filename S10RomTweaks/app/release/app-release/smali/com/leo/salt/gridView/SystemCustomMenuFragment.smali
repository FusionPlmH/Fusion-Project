.class public Lcom/leo/salt/gridView/SystemCustomMenuFragment;
.super Landroid/app/Fragment;
.source "SystemCustomMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/gridView/SystemCustomMenuFragment$NavigationBarGridViewOnClick;,
        Lcom/leo/salt/gridView/SystemCustomMenuFragment$PowerMenuGridViewOnClick;,
        Lcom/leo/salt/gridView/SystemCustomMenuFragment$TaskGridViewOnClick;,
        Lcom/leo/salt/gridView/SystemCustomMenuFragment$StatusBarGridViewOnClick;,
        Lcom/leo/salt/gridView/SystemCustomMenuFragment$KeyguardGridViewOnClick;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field private mKeyguardGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private mNavigationBarGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private mPowerMenuGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private mStatusBarGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private mTaskGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initNavigationBarView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f090144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mNavigationBarGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    const/4 p1, 0x3

    new-array v5, p1, [Landroid/graphics/drawable/Drawable;

    const-string v0, "android"

    const-string v1, "menu_ic_assistant_menu"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v2, "ic_picture"

    invoke-static {v0, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    const-string v0, "com.sec.android.wallpapercropper2"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v5, v3

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "grid_navigation_bar_title"

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "grid_navigation_bar_bg_title"

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "grid_system_launcher_home_title"

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v6, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mNavigationBarGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v7, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "home_summary"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x3

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mNavigationBarGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/gridView/SystemCustomMenuFragment$NavigationBarGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment$NavigationBarGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemCustomMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initPowerMenuView(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f090145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mPowerMenuGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    const/4 p1, 0x1

    new-array v5, p1, [Landroid/graphics/drawable/Drawable;

    const-string v0, "android"

    const-string v1, "tw_ic_do_restart"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    new-array v3, p1, [Ljava/lang/String;

    const-string v0, "grid_powermenu_title"

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    new-array v4, p1, [Ljava/lang/String;

    const-string p1, "grid_powermenu_title_summary"

    invoke-virtual {p0, p1}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mPowerMenuGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v6, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v6}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mPowerMenuGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/gridView/SystemCustomMenuFragment$PowerMenuGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment$PowerMenuGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemCustomMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initValues(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->UI(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->Keyguard(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->initPowerMenuView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->initNavigationBarView(Landroid/view/View;)V

    const v0, 0x7f090147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mTaskGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    const/4 p1, 0x2

    new-array v5, p1, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_storage"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v2, "ic_picture"

    invoke-static {v0, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    new-array v3, p1, [Ljava/lang/String;

    const-string p1, "storage_name"

    invoke-virtual {p0, p1}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "grid_system_task_bg_title"

    invoke-virtual {p0, p1}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mTaskGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v6, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "task_summary"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v6}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mTaskGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/gridView/SystemCustomMenuFragment$TaskGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment$TaskGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemCustomMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public Bearer()Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "46006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "46009"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "46000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ic_cmcc_icon"

    if-nez v1, :cond_4

    const-string v1, "46002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46004"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "46003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46012"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_telecom_icon"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_unicom_icon"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public GridTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Keyguard(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.dynamiclock"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.app.aodservice"

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    const/4 v2, 0x3

    new-array v8, v2, [Landroid/graphics/drawable/Drawable;

    const-string v3, "com.sec.android.daemonapp"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v8, v0

    iget-object v3, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v4, "ic_alarm_icon"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v8, v4

    const/4 v3, 0x2

    aput-object v1, v8, v3

    new-array v6, v2, [Ljava/lang/String;

    const-string v1, "widget_name"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "grid_keyguard_alarm"

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "lock_detail"

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    const v0, 0x7f090142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mKeyguardGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mKeyguardGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    const-string v1, "keyguard_summary"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mKeyguardGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/gridView/SystemCustomMenuFragment$KeyguardGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment$KeyguardGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemCustomMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public UI(Landroid/view/View;)V
    .locals 7

    const/16 v0, 0xa

    new-array v6, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_clock"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->Bearer()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_signal_logo"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_speed"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_temp"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_battery"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_deviceinfo"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_qs_button"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_datausage"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "ic_picture"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v6, v1

    const v0, 0x7f090146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mStatusBarGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mStatusBarGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v1, "system_ui_title"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v1, "system_ui_summary"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mStatusBarGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/gridView/SystemCustomMenuFragment$StatusBarGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment$StatusBarGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemCustomMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00b3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->initValues(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mView:Landroid/view/View;

    return-object p1
.end method
