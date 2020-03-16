.class public Lcom/leo/salt/tools/autostarts/ManageAutoStarts;
.super Landroid/app/Fragment;
.source "ManageAutoStarts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;
    }
.end annotation


# static fields
.field public static final MENU_ID_SCAN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ManageAutostarts"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private appItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

.field private appsList:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private emptyView:Landroid/widget/TextView;

.field public handler:Landroid/os/Handler;

.field private installPkgNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRootView:Landroid/view/View;

.field private menuItem:Landroid/view/MenuItem;

.field private optimizableAppItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

.field private pkgNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pm:Landroid/content/pm/PackageManager;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private showOptimizeList:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$1;-><init>(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)V

    iput-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pkgNames:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->showOptimizeList:Z

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->optimizableAppItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pm:Landroid/content/pm/PackageManager;

    return-object p0
.end method


# virtual methods
.method public AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public closeAutoStartApp(Lcom/leo/salt/tools/autostarts/AppItem;)V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "autostarts_prohibit_progress_msg"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;-><init>(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;Lcom/leo/salt/tools/autostarts/AppItem;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;->start()V

    return-void
.end method

.method protected flush()V
    .locals 13

    iget-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pkgNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-virtual {v0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;->clear()V

    iget-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->optimizableAppItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-virtual {v0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pkgNames:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->installPkgNames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v12, Lcom/leo/salt/tools/autostarts/AppItem;

    invoke-virtual {p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "autostarts_prohibited"

    invoke-virtual {p0, v4}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v12

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/leo/salt/tools/autostarts/AppItem;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-virtual {v4, v12}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;->add(Lcom/leo/salt/tools/autostarts/AppItem;)V

    iget-object v4, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pkgNames:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->optimizableAppItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-virtual {v4, v12}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;->add(Lcom/leo/salt/tools/autostarts/AppItem;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x200

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pkgNames:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->installPkgNames:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v10, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    new-instance v11, Lcom/leo/salt/tools/autostarts/AppItem;

    invoke-virtual {p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "autostarts_allowed"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v11

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/leo/salt/tools/autostarts/AppItem;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;->add(Lcom/leo/salt/tools/autostarts/AppItem;)V

    iget-object v1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pkgNames:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public synthetic lambda$onCreateView$0$ManageAutoStarts(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-boolean p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->showOptimizeList:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->optimizableAppItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-virtual {p1, p3}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;->getItem(I)Lcom/leo/salt/tools/autostarts/AppItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-virtual {p1, p3}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;->getItem(I)Lcom/leo/salt/tools/autostarts/AppItem;

    move-result-object p1

    :goto_0
    iget-boolean p2, p1, Lcom/leo/salt/tools/autostarts/AppItem;->checked:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->closeAutoStartApp(Lcom/leo/salt/tools/autostarts/AppItem;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->startAutoStartApp(Lcom/leo/salt/tools/autostarts/AppItem;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onCreateView$1$ManageAutoStarts()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appsList:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object v1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->getActivity()Landroid/app/Activity;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->am:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pm:Landroid/content/pm/PackageManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->setHasOptionsMenu(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->installPkgNames:Ljava/util/List;

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->pm:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->installPkgNames:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-boolean p2, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->showOptimizeList:Z

    if-eqz p2, :cond_0

    const-string p2, "autostarts_allow_progress_msg"

    goto :goto_0

    :cond_0
    const-string p2, "autostarts_optimize_btn_title"

    :goto_0
    invoke-virtual {p0, p2}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->menuItem:Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->menuItem:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 p2, 0x0

    const p3, 0x7f0c0062

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->mRootView:Landroid/view/View;

    new-instance p1, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-direct {p1, p0, p2}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;-><init>(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;Landroid/view/LayoutInflater;)V

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    new-instance p1, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-direct {p1, p0, p2}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;-><init>(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;Landroid/view/LayoutInflater;)V

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->optimizableAppItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->mRootView:Landroid/view/View;

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appsList:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->mRootView:Landroid/view/View;

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->emptyView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->emptyView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->emptyView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string p2, "autostarts_empty_msg"

    invoke-virtual {p0, p2}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appsList:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object p2, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appsList:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance p2, Lcom/leo/salt/tools/autostarts/-$$Lambda$ManageAutoStarts$sgejPoh--jhaCftikctdjCGQqtE;

    invoke-direct {p2, p0}, Lcom/leo/salt/tools/autostarts/-$$Lambda$ManageAutoStarts$sgejPoh--jhaCftikctdjCGQqtE;-><init>(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)V

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->flush()V

    invoke-virtual {p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/leo/salt/tools/autostarts/-$$Lambda$ManageAutoStarts$Ilz_FNZvBDdhgaDngXptvF5-PRM;

    invoke-direct {p2, p0}, Lcom/leo/salt/tools/autostarts/-$$Lambda$ManageAutoStarts$Ilz_FNZvBDdhgaDngXptvF5-PRM;-><init>(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->showOptimizeList:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->showOptimizeList:Z

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->menuItem:Landroid/view/MenuItem;

    const-string v0, "autostarts_optimize_btn_title"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->emptyView:Landroid/widget/TextView;

    const-string v0, "autostarts_empty_msg"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appsList:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->showOptimizeList:Z

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->menuItem:Landroid/view/MenuItem;

    const-string v0, "autostarts_all_btn_title"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->emptyView:Landroid/widget/TextView;

    const-string v0, "autostarts_optimize_empty_msg"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->appsList:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->optimizableAppItems:Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return v1
.end method

.method public startAutoStartApp(Lcom/leo/salt/tools/autostarts/AppItem;)V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "autostarts_prohibit_progress_msg"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->AutostartsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;-><init>(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;Lcom/leo/salt/tools/autostarts/AppItem;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;->start()V

    return-void
.end method
