.class public Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;,
        Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;
    }
.end annotation


# static fields
.field private static final PACKAGE_WHITELIST:[Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.android.providers.downloads"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->PACKAGE_WHITELIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$1;-><init>(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->reloadList()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    return-object p0
.end method

.method private reloadList()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getItem(I)Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->getItem(I)Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v1, p1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0034

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;

    invoke-direct {v0, v1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;-><init>(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$1;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f090036

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f090037

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f090035

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->getItem(I)Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;

    move-result-object p1

    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->access$100(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->access$100(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v2, p1, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->access$100(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->access$100(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object p1

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-object p2
.end method

.method public run()V
    .locals 9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v4, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v4}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->access$100(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v3

    iget-object v5, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->PACKAGE_WHITELIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    :try_start_0
    iget-object v5, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    new-instance v5, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
