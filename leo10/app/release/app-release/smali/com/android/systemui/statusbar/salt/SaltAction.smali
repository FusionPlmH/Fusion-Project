.class public Lcom/android/systemui/statusbar/salt/SaltAction;
.super Landroid/widget/ImageView;
.source "SaltAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field is:Z

.field private isMoving:Z

.field private mClickColor:I

.field private mClickString:Ljava/lang/String;

.field private mClickValue:I

.field private mContext:Landroid/content/Context;

.field private mHapticsStyle:I

.field private mHapticsValue:I

.field private mle:I

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->is:Z

    const/16 p1, 0x57

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->is:Z

    const/16 p2, 0x57

    iput p2, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mle:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->isMoving:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->startY:F

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mClickString:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mClickValue:I

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mClickValue:I

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mle:I

    if-gt p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->is:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mHapticsValue:I

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mHapticsStyle:I

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoHaptics(Landroid/content/Context;II)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/salt/SaltAction;->setBackgroundColor(I)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mClickValue:I

    iget v3, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mle:I

    if-lt v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->is:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mClickColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltAction;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/salt/SaltAction;->setBackgroundColor(I)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->isMoving:Z

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->isMoving:Z

    if-nez v0, :cond_4

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->isMoving:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->startY:F

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->startY:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigCenter;->collapsePanel()V

    :cond_5
    :goto_2
    return v3
.end method

.method public setSaltAction(ILjava/lang/String;IIZI)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mClickValue:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mClickString:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mHapticsValue:I

    iget p2, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mle:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    if-ne p5, p1, :cond_1

    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/salt/SaltAction;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p5}, Lcom/android/systemui/statusbar/salt/SaltAction;->setClickable(Z)V

    :cond_1
    iput p6, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mClickColor:I

    iput p4, p0, Lcom/android/systemui/statusbar/salt/SaltAction;->mHapticsStyle:I

    if-eqz p5, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltAction;->setVisibility(I)V

    return-void
.end method
