.class final Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;
.super Ljava/lang/Object;
.source "AppListAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->run()V
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
.field final synthetic $icon:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;->this$0:Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;

    iput-object p2, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;->$icon:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;->this$0:Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;

    iget-object v0, v0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1;->$viewHolder:Lcom/leo/salt/kt/AppListAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->getImgView$app_release()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/kt/AppListAdapter$loadIcon$1$1;->$icon:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
