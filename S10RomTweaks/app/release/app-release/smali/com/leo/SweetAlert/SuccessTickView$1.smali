.class Lcom/leo/SweetAlert/SuccessTickView$1;
.super Landroid/view/animation/Animation;
.source "SuccessTickView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/SweetAlert/SuccessTickView;->startTickAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/SweetAlert/SuccessTickView;


# direct methods
.method constructor <init>(Lcom/leo/SweetAlert/SuccessTickView;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 11

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    float-to-double v0, p1

    const p2, 0x3e428f5c    # 0.19f

    const v2, 0x3f266666    # 0.65f

    const v3, 0x3e23d70a    # 0.16f

    const-wide v4, 0x3fe6666666666666L    # 0.7

    const-wide v6, 0x3fe147ae147ae148L    # 0.54

    cmpg-double v8, v6, v0

    if-gez v8, :cond_1

    cmpl-double v6, v4, v0

    if-ltz v6, :cond_1

    iget-object v4, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/leo/SweetAlert/SuccessTickView;->access$002(Lcom/leo/SweetAlert/SuccessTickView;Z)Z

    iget-object v4, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v4}, Lcom/leo/SweetAlert/SuccessTickView;->access$200(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v5

    const v6, 0x3f0a3d71    # 0.54f

    sub-float v6, p1, v6

    div-float/2addr v6, v3

    mul-float v5, v5, v6

    invoke-static {v4, v5}, Lcom/leo/SweetAlert/SuccessTickView;->access$102(Lcom/leo/SweetAlert/SuccessTickView;F)F

    const-wide v3, 0x3fe4cccccccccccdL    # 0.65

    cmpg-double v5, v3, v0

    if-gez v5, :cond_0

    iget-object v0, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v0}, Lcom/leo/SweetAlert/SuccessTickView;->access$400(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v1

    sub-float/2addr p1, v2

    div-float/2addr p1, p2

    mul-float v1, v1, p1

    invoke-static {v0, v1}, Lcom/leo/SweetAlert/SuccessTickView;->access$302(Lcom/leo/SweetAlert/SuccessTickView;F)F

    :cond_0
    iget-object p1, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SuccessTickView;->invalidate()V

    goto/16 :goto_1

    :cond_1
    const/4 v6, 0x0

    const-wide v7, 0x3feae147ae147ae1L    # 0.84

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-double v10, v4, v0

    if-gez v10, :cond_3

    cmpl-double v4, v7, v0

    if-ltz v4, :cond_3

    iget-object v0, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v0, v6}, Lcom/leo/SweetAlert/SuccessTickView;->access$002(Lcom/leo/SweetAlert/SuccessTickView;Z)Z

    iget-object v0, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v0}, Lcom/leo/SweetAlert/SuccessTickView;->access$200(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v1

    const v3, 0x3f333333    # 0.7f

    sub-float v3, p1, v3

    const v4, 0x3e0f5c29    # 0.14f

    div-float/2addr v3, v4

    sub-float/2addr v9, v3

    mul-float v1, v1, v9

    invoke-static {v0, v1}, Lcom/leo/SweetAlert/SuccessTickView;->access$102(Lcom/leo/SweetAlert/SuccessTickView;F)F

    iget-object v0, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v0}, Lcom/leo/SweetAlert/SuccessTickView;->access$100(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v1

    iget-object v3, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v3}, Lcom/leo/SweetAlert/SuccessTickView;->access$500(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcom/leo/SweetAlert/SuccessTickView;->access$500(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcom/leo/SweetAlert/SuccessTickView;->access$100(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/leo/SweetAlert/SuccessTickView;->access$102(Lcom/leo/SweetAlert/SuccessTickView;F)F

    iget-object v0, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v0}, Lcom/leo/SweetAlert/SuccessTickView;->access$400(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v1

    sub-float/2addr p1, v2

    div-float/2addr p1, p2

    mul-float v1, v1, p1

    invoke-static {v0, v1}, Lcom/leo/SweetAlert/SuccessTickView;->access$302(Lcom/leo/SweetAlert/SuccessTickView;F)F

    iget-object p1, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SuccessTickView;->invalidate()V

    goto :goto_1

    :cond_3
    cmpg-double p2, v7, v0

    if-gez p2, :cond_4

    cmpl-float p2, v9, p1

    if-ltz p2, :cond_4

    iget-object p2, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {p2, v6}, Lcom/leo/SweetAlert/SuccessTickView;->access$002(Lcom/leo/SweetAlert/SuccessTickView;Z)Z

    iget-object p2, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {p2}, Lcom/leo/SweetAlert/SuccessTickView;->access$500(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v0

    iget-object v1, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcom/leo/SweetAlert/SuccessTickView;->access$600(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v1

    iget-object v2, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v2}, Lcom/leo/SweetAlert/SuccessTickView;->access$500(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3f570a3d    # 0.84f

    sub-float/2addr p1, v2

    div-float/2addr p1, v3

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    invoke-static {p2, v0}, Lcom/leo/SweetAlert/SuccessTickView;->access$102(Lcom/leo/SweetAlert/SuccessTickView;F)F

    iget-object p2, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {p2}, Lcom/leo/SweetAlert/SuccessTickView;->access$700(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v0

    iget-object v1, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcom/leo/SweetAlert/SuccessTickView;->access$400(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v1

    iget-object v2, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-static {v2}, Lcom/leo/SweetAlert/SuccessTickView;->access$700(Lcom/leo/SweetAlert/SuccessTickView;)F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v9, p1

    mul-float v1, v1, v9

    add-float/2addr v0, v1

    invoke-static {p2, v0}, Lcom/leo/SweetAlert/SuccessTickView;->access$302(Lcom/leo/SweetAlert/SuccessTickView;F)F

    iget-object p1, p0, Lcom/leo/SweetAlert/SuccessTickView$1;->this$0:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SuccessTickView;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method
