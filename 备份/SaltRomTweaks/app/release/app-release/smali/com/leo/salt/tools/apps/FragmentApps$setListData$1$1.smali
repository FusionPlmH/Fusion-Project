.class final Lcom/leo/salt/tools/apps/FragmentApps$setListData$1$1;
.super Ljava/lang/Object;
.source "FragmentApps.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->run()V
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
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0002\u0008\u0003 \u0004*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\n\u00a2\u0006\u0002\u0008\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "list",
        "Landroid/widget/AdapterView;",
        "kotlin.jvm.PlatformType",
        "itemView",
        "Landroid/view/View;",
        "postion",
        "",
        "<anonymous parameter 3>",
        "",
        "onItemClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/leo/salt/tools/apps/AppListAdapter;

.field final synthetic this$0:Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;Lcom/leo/salt/tools/apps/AppListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;

    iput-object p2, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1$1;->$adapter:Lcom/leo/salt/tools/apps/AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "null cannot be cast to non-null type android.widget.CheckBox"

    const p4, 0x7f090170

    if-nez p3, :cond_1

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1$1;->$adapter:Lcom/leo/salt/tools/apps/AppListAdapter;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/tools/apps/AppListAdapter;->setSelecteStateAll(Z)V

    iget-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1$1;->$adapter:Lcom/leo/salt/tools/apps/AppListAdapter;

    invoke-virtual {p1}, Lcom/leo/salt/tools/apps/AppListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    new-instance p2, Lkotlin/TypeCastException;

    invoke-direct {p2, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const p3, 0x7f09016f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;

    iget-object p1, p1, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;->$lv:Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    invoke-virtual {p1, p4}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const-string p2, "all"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1$1;->$adapter:Lcom/leo/salt/tools/apps/AppListAdapter;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/AppListAdapter;->getIsAllSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_2
    new-instance p2, Lkotlin/TypeCastException;

    invoke-direct {p2, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
