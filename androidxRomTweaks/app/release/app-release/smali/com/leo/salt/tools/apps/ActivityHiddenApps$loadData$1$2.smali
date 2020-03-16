.class final Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;
.super Ljava/lang/Object;
.source "ActivityHiddenApps.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;->run()V
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
        0xf
    }
.end annotation


# instance fields
.field final synthetic $appList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;

    iput-object p2, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;->$appList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$getProgressBarDialog$p(Lcom/leo/salt/tools/apps/ActivityHiddenApps;)Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->hideDialog()V

    new-instance v0, Lcom/leo/salt/tools/apps/AppListAdapter;

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;->$appList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/leo/salt/tools/apps/AppListAdapter;-><init>(Ljava/util/ArrayList;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;

    iget-object v1, v1, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    sget v2, Lcom/leo/salt/tweaks/R$id;->hidden_app:I

    invoke-virtual {v1, v2}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const-string v2, "hidden_app"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;

    iget-object v1, v1, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$setAdapter$p(Lcom/leo/salt/tools/apps/ActivityHiddenApps;Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    sget v1, Lcom/leo/salt/tweaks/R$id;->hidden_app:I

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2$1;-><init>(Lcom/leo/salt/tools/apps/ActivityHiddenApps$loadData$1$2;)V

    check-cast v1, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
