.class final Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;
.super Ljava/lang/Object;
.source "ActivityHiddenApps.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/ActivityHiddenApps;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityHiddenApps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityHiddenApps.kt\ncom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,288:1\n1587#2,2:289\n*E\n*S KotlinDebug\n*F\n+ 1 ActivityHiddenApps.kt\ncom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1\n*L\n121#1,2:289\n*E\n"
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
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/ActivityHiddenApps;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Lcom/leo/salt/tools/constants/AppListHelperHidden;

    invoke-direct {v0}, Lcom/leo/salt/tools/constants/AppListHelperHidden;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/AppListHelperHidden;->getUninstalledApp(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "uninstalledApp"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    const-string v5, "it"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$getAppInfo(Lcom/leo/salt/tools/apps/ActivityHiddenApps;Landroid/content/pm/ApplicationInfo;)Lcom/leo/salt/tweaks/view/widget/Appinfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$getHandler$p(Lcom/leo/salt/tools/apps/ActivityHiddenApps;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;

    invoke-direct {v2, p0, v1}, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;-><init>(Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;Ljava/util/ArrayList;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
