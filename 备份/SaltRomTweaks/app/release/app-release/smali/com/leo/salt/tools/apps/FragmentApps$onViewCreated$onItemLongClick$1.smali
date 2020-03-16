.class final Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$onItemLongClick$1;
.super Ljava/lang/Object;
.source "FragmentApps.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/FragmentApps;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0002\u0008\u0003 \u0004*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\n\u00a2\u0006\u0002\u0008\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onItemLongClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/apps/FragmentApps;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/FragmentApps;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$onItemLongClick$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 p2, 0x1

    if-ge p3, p2, :cond_0

    return p2

    :cond_0
    const-string p4, "parent"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/leo/salt/tools/constants/AppInfo;

    new-instance p3, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;

    iget-object p4, p0, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$onItemLongClick$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-virtual {p4}, Lcom/leo/salt/tools/apps/FragmentApps;->getContext()Landroid/content/Context;

    move-result-object p4

    if-nez p4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object p5, p0, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$onItemLongClick$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-static {p5}, Lcom/leo/salt/tools/apps/FragmentApps;->access$getMyHandler$p(Lcom/leo/salt/tools/apps/FragmentApps;)Landroid/os/Handler;

    move-result-object p5

    invoke-direct {p3, p4, p1, p5}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;-><init>(Landroid/content/Context;Lcom/leo/salt/tools/constants/AppInfo;Landroid/os/Handler;)V

    invoke-virtual {p3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->showSingleAppOptions()V

    return p2

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.leo.salt.tools.constants.AppInfo"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.HeaderViewListAdapter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
