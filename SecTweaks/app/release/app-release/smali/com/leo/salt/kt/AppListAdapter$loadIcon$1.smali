.class final Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;
.super Ljava/lang/Object;
.source "AppListAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/kt/AppListAdapter;->loadIcon(Lcom/leo/salt/kt/AppListAdapter$ViewHolder;Lcom/leo/salt/utils/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/leo/salt/utils/AppInfo;

.field final synthetic $viewHolder:Lcom/leo/salt/kt/AppListAdapter$ViewHolder;

.field final synthetic this$0:Lcom/leo/salt/kt/AppListAdapter;


# direct methods
.method constructor <init>(Lcom/leo/salt/kt/AppListAdapter;Lcom/leo/salt/utils/AppInfo;Lcom/leo/salt/kt/AppListAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->this$0:Lcom/leo/salt/kt/AppListAdapter;

    iput-object p2, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->$item:Lcom/leo/salt/utils/AppInfo;

    iput-object p3, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->$viewHolder:Lcom/leo/salt/kt/AppListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->this$0:Lcom/leo/salt/kt/AppListAdapter;

    invoke-static {v1}, Lcom/leo/salt/kt/AppListAdapter;->access$getContext$p(Lcom/leo/salt/kt/AppListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->$item:Lcom/leo/salt/utils/AppInfo;

    iget-object v2, v2, Lcom/leo/salt/utils/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->this$0:Lcom/leo/salt/kt/AppListAdapter;

    invoke-static {v2}, Lcom/leo/salt/kt/AppListAdapter;->access$getContext$p(Lcom/leo/salt/kt/AppListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->$viewHolder:Lcom/leo/salt/kt/AppListAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->getImgView$app_release()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v2, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;-><init>(Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    :goto_0
    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->$item:Lcom/leo/salt/utils/AppInfo;

    iget-object v2, v2, Lcom/leo/salt/utils/AppInfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->this$0:Lcom/leo/salt/kt/AppListAdapter;

    invoke-static {v2}, Lcom/leo/salt/kt/AppListAdapter;->access$getContext$p(Lcom/leo/salt/kt/AppListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->$viewHolder:Lcom/leo/salt/kt/AppListAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->getImgView$app_release()Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    new-instance v3, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;

    invoke-direct {v3, p0, v0}, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;-><init>(Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    throw v1

    :catch_1
    nop

    :cond_3
    :goto_2
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->$viewHolder:Lcom/leo/salt/kt/AppListAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->getImgView$app_release()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    new-instance v2, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;-><init>(Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method
