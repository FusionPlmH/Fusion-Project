.class Lcom/os/salt/widget/CircleImageView$OutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/os/salt/widget/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutlineProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/os/salt/widget/CircleImageView;


# direct methods
.method private constructor <init>(Lcom/os/salt/widget/CircleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/os/salt/widget/CircleImageView$OutlineProvider;->this$0:Lcom/os/salt/widget/CircleImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/os/salt/widget/CircleImageView;Lcom/os/salt/widget/CircleImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/os/salt/widget/CircleImageView$OutlineProvider;-><init>(Lcom/os/salt/widget/CircleImageView;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/os/salt/widget/CircleImageView$OutlineProvider;->this$0:Lcom/os/salt/widget/CircleImageView;

    invoke-static {v0}, Lcom/os/salt/widget/CircleImageView;->access$100(Lcom/os/salt/widget/CircleImageView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
