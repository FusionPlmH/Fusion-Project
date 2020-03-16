.class final Lcom/leo/salt/tools/apps/AppListAdapter$getView$1;
.super Ljava/lang/Object;
.source "AppListAdapter.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/AppListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "buttonView",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic this$0:Lcom/leo/salt/tools/apps/AppListAdapter;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/AppListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/AppListAdapter$getView$1;->this$0:Lcom/leo/salt/tools/apps/AppListAdapter;

    iput p2, p0, Lcom/leo/salt/tools/apps/AppListAdapter$getView$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/tools/apps/AppListAdapter$getView$1;->this$0:Lcom/leo/salt/tools/apps/AppListAdapter;

    invoke-virtual {p1}, Lcom/leo/salt/tools/apps/AppListAdapter;->getStates()Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget v0, p0, Lcom/leo/salt/tools/apps/AppListAdapter$getView$1;->$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
