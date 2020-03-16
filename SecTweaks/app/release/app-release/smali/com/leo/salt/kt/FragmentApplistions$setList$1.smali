.class final Lcom/leo/salt/kt/FragmentApplistions$setList$1;
.super Ljava/lang/Object;
.source "FragmentApplistions.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/kt/FragmentApplistions;->setList()V
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
.field final synthetic this$0:Lcom/leo/salt/kt/FragmentApplistions;


# direct methods
.method constructor <init>(Lcom/leo/salt/kt/FragmentApplistions;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions$setList$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions$setList$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    invoke-static {v0}, Lcom/leo/salt/kt/FragmentApplistions;->access$getAppListHelper$p(Lcom/leo/salt/kt/FragmentApplistions;)Lcom/leo/salt/utils/ktshell/AppListHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/AppListHelper;->getSystemAppList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->access$setSystemList$p(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions$setList$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    invoke-static {v0}, Lcom/leo/salt/kt/FragmentApplistions;->access$getAppListHelper$p(Lcom/leo/salt/kt/FragmentApplistions;)Lcom/leo/salt/utils/ktshell/AppListHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/AppListHelper;->getUserAppList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->access$setInstalledList$p(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions$setList$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    invoke-static {v0}, Lcom/leo/salt/kt/FragmentApplistions;->access$getAppListHelper$p(Lcom/leo/salt/kt/FragmentApplistions;)Lcom/leo/salt/utils/ktshell/AppListHelper;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getAbsBackUpDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/ktshell/AppListHelper;->getApkFilesInfoList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->access$setBackupedList$p(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions$setList$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    invoke-static {v0}, Lcom/leo/salt/kt/FragmentApplistions;->access$getInstalledList$p(Lcom/leo/salt/kt/FragmentApplistions;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/kt/FragmentApplistions$setList$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    sget v3, Lcom/leo/salt/R$id;->apps_userlist:I

    invoke-virtual {v2, v3}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/kt/OverScrollListView;

    const-string v3, "apps_userlist"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/leo/salt/kt/FragmentApplistions;->access$setListData(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;Lcom/leo/salt/kt/OverScrollListView;)V

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions$setList$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    invoke-static {v0}, Lcom/leo/salt/kt/FragmentApplistions;->access$getSystemList$p(Lcom/leo/salt/kt/FragmentApplistions;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/kt/FragmentApplistions$setList$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    sget v3, Lcom/leo/salt/R$id;->apps_systemlist:I

    invoke-virtual {v2, v3}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/kt/OverScrollListView;

    const-string v3, "apps_systemlist"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/leo/salt/kt/FragmentApplistions;->access$setListData(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;Lcom/leo/salt/kt/OverScrollListView;)V

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions$setList$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    invoke-static {v0}, Lcom/leo/salt/kt/FragmentApplistions;->access$getBackupedList$p(Lcom/leo/salt/kt/FragmentApplistions;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/kt/FragmentApplistions$setList$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    sget v3, Lcom/leo/salt/R$id;->apps_backupedlist:I

    invoke-virtual {v2, v3}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/kt/OverScrollListView;

    const-string v3, "apps_backupedlist"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/leo/salt/kt/FragmentApplistions;->access$setListData(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;Lcom/leo/salt/kt/OverScrollListView;)V

    return-void
.end method
