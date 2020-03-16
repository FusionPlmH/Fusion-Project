.class final Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;
.super Ljava/lang/Object;
.source "ActivityHiddenApps.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/ActivityHiddenApps;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityHiddenApps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityHiddenApps.kt\ncom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,288:1\n673#2:289\n746#2,2:290\n*E\n*S KotlinDebug\n*F\n+ 1 ActivityHiddenApps.kt\ncom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1\n*L\n183#1:289\n183#1,2:290\n*E\n"
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
.field final synthetic $cmds:Ljava/lang/StringBuilder;

.field final synthetic $items:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/ActivityHiddenApps;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    iput-object p2, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->$cmds:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$getKeepShell$p(Lcom/leo/salt/tools/apps/ActivityHiddenApps;)Lcom/leo/script/KeepShell;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->$cmds:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmds.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShell;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->$items:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$reInstallAppShell(Lcom/leo/salt/tools/apps/ActivityHiddenApps;Ljava/util/ArrayList;)Z

    move-result v0

    new-instance v1, Lcom/leo/salt/tools/constants/AppListHelperHidden;

    invoke-direct {v1}, Lcom/leo/salt/tools/constants/AppListHelperHidden;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/leo/salt/tools/constants/AppListHelperHidden;->getUninstalledApp(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->$items:Ljava/util/ArrayList;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v8, v8, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    check-cast v6, Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    const-string v6, "app"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$getAppInfo(Lcom/leo/salt/tools/apps/ActivityHiddenApps;Landroid/content/pm/ApplicationInfo;)Lcom/leo/salt/tweaks/view/widget/Appinfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    invoke-static {v3}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$getHandler$p(Lcom/leo/salt/tools/apps/ActivityHiddenApps;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;-><init>(Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
