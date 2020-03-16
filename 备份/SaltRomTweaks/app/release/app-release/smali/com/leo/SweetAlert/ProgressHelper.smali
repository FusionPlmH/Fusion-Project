.class public Lcom/leo/SweetAlert/ProgressHelper;
.super Ljava/lang/Object;
.source "ProgressHelper.java"


# instance fields
.field private mBarColor:I

.field private mBarWidth:I

.field private mCircleRadius:I

.field private mIsInstantProgress:Z

.field private mProgressVal:F

.field private mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

.field private mRimColor:I

.field private mRimWidth:I

.field private mSpinSpeed:F

.field private mToSpin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mToSpin:Z

    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mSpinSpeed:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mBarWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mBarColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mRimWidth:I

    iput v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mRimColor:I

    iput-boolean v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mIsInstantProgress:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressVal:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700e9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mCircleRadius:I

    return-void
.end method

.method private updatePropsIfNeed()V
    .locals 2

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mToSpin:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->stopSpinning()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mToSpin:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->spin()V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mSpinSpeed:F

    iget-object v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getSpinSpeed()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mSpinSpeed:F

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setSpinSpeed(F)V

    :cond_2
    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mBarWidth:I

    iget-object v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getBarWidth()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mBarWidth:I

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setBarWidth(I)V

    :cond_3
    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mBarColor:I

    iget-object v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getBarColor()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mBarColor:I

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setBarColor(I)V

    :cond_4
    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mRimWidth:I

    iget-object v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getRimWidth()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mRimWidth:I

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setRimWidth(I)V

    :cond_5
    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mRimColor:I

    iget-object v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getRimColor()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mRimColor:I

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setRimColor(I)V

    :cond_6
    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressVal:F

    iget-object v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getProgress()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mIsInstantProgress:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressVal:F

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setInstantProgress(F)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressVal:F

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setProgress(F)V

    :cond_8
    :goto_1
    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mCircleRadius:I

    iget-object v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getCircleRadius()I

    move-result v1

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mCircleRadius:I

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setCircleRadius(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mBarColor:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mBarWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mCircleRadius:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressVal:F

    return v0
.end method

.method public getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;
    .locals 1

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    return-object v0
.end method

.method public getRimColor()I
    .locals 1

    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mRimColor:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mRimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 1

    iget v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mSpinSpeed:F

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mToSpin:Z

    return v0
.end method

.method public resetCount()V
    .locals 1

    iget-object v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->resetCount()V

    :cond_0
    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    iput p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mBarColor:I

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    iput p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mBarWidth:I

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    iput p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mCircleRadius:I

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setInstantProgress(F)V
    .locals 0

    iput p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressVal:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mIsInstantProgress:Z

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mIsInstantProgress:Z

    iput p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressVal:F

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setProgressWheel(Lcom/pnikosis/materialishprogress/ProgressWheel;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    iput p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mRimColor:I

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    iput p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mRimWidth:I

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/leo/SweetAlert/ProgressHelper;->mSpinSpeed:F

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public spin()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mToSpin:Z

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public stopSpinning()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/SweetAlert/ProgressHelper;->mToSpin:Z

    invoke-direct {p0}, Lcom/leo/SweetAlert/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method
