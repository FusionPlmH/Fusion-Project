.class final Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;
.super Ljava/lang/Object;
.source "FragmentApps.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/FragmentApps;->setListData(Ljava/util/ArrayList;Lcom/leo/salt/tweaks/view/widget/OverScrollListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentApps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentApps.kt\ncom/leo/salt/tools/apps/FragmentApps$setListData$1\n*L\n1#1,331:1\n*E\n"
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
.field final synthetic $dl:Ljava/util/ArrayList;

.field final synthetic $lv:Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

.field final synthetic this$0:Lcom/leo/salt/tools/apps/FragmentApps;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/FragmentApps;Ljava/util/ArrayList;Lcom/leo/salt/tweaks/view/widget/OverScrollListView;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    iput-object p2, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->$dl:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->$lv:Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/FragmentApps;->access$getProcessBarDialog$p(Lcom/leo/salt/tools/apps/FragmentApps;)Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->hideDialog()V

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-virtual {v0}, Lcom/leo/salt/tools/apps/FragmentApps;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->$dl:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    sget v2, Lcom/leo/salt/tweaks/R$id;->apps_search_box:I

    invoke-virtual {v1, v2}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "apps_search_box"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/leo/salt/tools/apps/AppListAdapter;

    invoke-direct {v2, v0, v1}, Lcom/leo/salt/tools/apps/AppListAdapter;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->$lv:Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->$lv:Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    new-instance v2, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1$1;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1$1;-><init>(Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;Ljava/lang/ref/WeakReference;)V

    check-cast v2, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->$lv:Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const v1, 0x7f0901da

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "all"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
