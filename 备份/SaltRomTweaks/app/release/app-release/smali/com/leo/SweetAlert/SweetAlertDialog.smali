.class public Lcom/leo/SweetAlert/SweetAlertDialog;
.super Landroid/app/Dialog;
.source "SweetAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;
    }
.end annotation


# static fields
.field public static final CUSTOM_IMAGE_TYPE:I = 0x4

.field public static final ERROR_TYPE:I = 0x1

.field public static final NORMAL_TYPE:I = 0x0

.field public static final PROGRESS_TYPE:I = 0x5

.field public static final SUCCESS_TYPE:I = 0x2

.field public static final WARNING_TYPE:I = 0x3


# instance fields
.field private mAlertType:I

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelClickListener:Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;

.field private mCancelText:Ljava/lang/String;

.field private mCloseFromCancel:Z

.field private mConfirmButton:Landroid/widget/Button;

.field private mConfirmClickListener:Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;

.field private mConfirmText:Ljava/lang/String;

.field private mContentText:Ljava/lang/String;

.field private mContentTextView:Landroid/widget/TextView;

.field private mCustomImage:Landroid/widget/ImageView;

.field private mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

.field private mDialogView:Landroid/view/View;

.field private mErrorFrame:Landroid/widget/FrameLayout;

.field private mErrorInAnim:Landroid/view/animation/Animation;

.field private mErrorX:Landroid/widget/ImageView;

.field private mErrorXInAnim:Landroid/view/animation/AnimationSet;

.field private mModalInAnim:Landroid/view/animation/AnimationSet;

.field private mModalOutAnim:Landroid/view/animation/AnimationSet;

.field private mOverlayOutAnim:Landroid/view/animation/Animation;

.field private mProgressFrame:Landroid/widget/FrameLayout;

.field private mProgressHelper:Lcom/leo/SweetAlert/ProgressHelper;

.field private mShowCancel:Z

.field private mShowContent:Z

.field private mSuccessBowAnim:Landroid/view/animation/Animation;

.field private mSuccessFrame:Landroid/widget/FrameLayout;

.field private mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

.field private mSuccessLeftMask:Landroid/view/View;

.field private mSuccessRightMask:Landroid/view/View;

.field private mSuccessTick:Lcom/leo/SweetAlert/SuccessTickView;

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWarningFrame:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const v0, 0x7f110209

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/leo/SweetAlert/ProgressHelper;

    invoke-direct {v1, p1}, Lcom/leo/SweetAlert/ProgressHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mProgressHelper:Lcom/leo/SweetAlert/ProgressHelper;

    iput p2, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mAlertType:I

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010011

    invoke-static {p1, p2}, Lcom/leo/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010012

    invoke-static {p1, p2}, Lcom/leo/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorXInAnim:Landroid/view/animation/AnimationSet;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xa

    if-gt p1, p2, :cond_2

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorXInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Landroid/view/animation/AlphaAnimation;

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010019

    invoke-static {p1, p2}, Lcom/leo/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessBowAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f01001a

    invoke-static {p1, p2}, Lcom/leo/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010015

    invoke-static {p1, p2}, Lcom/leo/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mModalInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010016

    invoke-static {p1, p2}, Lcom/leo/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mModalOutAnim:Landroid/view/animation/AnimationSet;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mModalOutAnim:Landroid/view/animation/AnimationSet;

    new-instance p2, Lcom/leo/SweetAlert/SweetAlertDialog$1;

    invoke-direct {p2, p0}, Lcom/leo/SweetAlert/SweetAlertDialog$1;-><init>(Lcom/leo/SweetAlert/SweetAlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance p1, Lcom/leo/SweetAlert/SweetAlertDialog$2;

    invoke-direct {p1, p0}, Lcom/leo/SweetAlert/SweetAlertDialog$2;-><init>(Lcom/leo/SweetAlert/SweetAlertDialog;)V

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mOverlayOutAnim:Landroid/view/animation/Animation;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mOverlayOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/SweetAlert/SweetAlertDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mDialogView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/SweetAlert/SweetAlertDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCloseFromCancel:Z

    return p0
.end method

.method static synthetic access$201(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method static synthetic access$301(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private changeAlertType(IZ)V
    .locals 3

    iput p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mAlertType:I

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mDialogView:Landroid/view/View;

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->restore()V

    :cond_0
    iget p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mAlertType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mProgressFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcom/leo/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const v0, 0x7f0800a7

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mWarningFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessLeftMask:Landroid/view/View;

    iget-object v2, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    iget-object v1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    if-nez p2, :cond_6

    invoke-direct {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->playAnimation()V

    :cond_6
    return-void
.end method

.method private dismissWithAnimation(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCloseFromCancel:Z

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mOverlayOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mDialogView:Landroid/view/View;

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mModalOutAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private playAnimation()V
    .locals 2

    iget v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mAlertType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorX:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorXInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessTick:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-virtual {v0}, Lcom/leo/SweetAlert/SuccessTickView;->startTickAnim()V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    iget-object v1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessBowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private restore()V
    .locals 2

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mWarningFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mProgressFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorX:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessTick:Lcom/leo/SweetAlert/SuccessTickView;

    invoke-virtual {v0}, Lcom/leo/SweetAlert/SuccessTickView;->clearAnimation()V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessLeftMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation(Z)V

    return-void
.end method

.method public changeAlertType(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->changeAlertType(IZ)V

    return-void
.end method

.method public dismissWithAnimation()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation(Z)V

    return-void
.end method

.method public getAlerType()I
    .locals 1

    iget v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mAlertType:I

    return v0
.end method

.method public getCancelText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressHelper()Lcom/leo/SweetAlert/ProgressHelper;
    .locals 1

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mProgressHelper:Lcom/leo/SweetAlert/ProgressHelper;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public isShowCancelButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mShowCancel:Z

    return v0
.end method

.method public isShowContentText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mShowContent:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09005c

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelClickListener:Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;->onClick(Lcom/leo/SweetAlert/SweetAlertDialog;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09006d

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmClickListener:Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;->onClick(Lcom/leo/SweetAlert/SweetAlertDialog;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0030

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mDialogView:Landroid/view/View;

    const p1, 0x7f0901af

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mTitleTextView:Landroid/widget/TextView;

    const p1, 0x7f090072

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    const p1, 0x7f0900a8

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0900a9

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mErrorX:Landroid/widget/ImageView;

    const p1, 0x7f090191

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    const p1, 0x7f090135

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mProgressFrame:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f090192

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/SweetAlert/SuccessTickView;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessTick:Lcom/leo/SweetAlert/SuccessTickView;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0900f6

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessLeftMask:Landroid/view/View;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0900f7

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    const p1, 0x7f09007b

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    const p1, 0x7f0901d2

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mWarningFrame:Landroid/widget/FrameLayout;

    const p1, 0x7f09006d

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const p1, 0x7f09005c

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mProgressHelper:Lcom/leo/SweetAlert/ProgressHelper;

    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {p1, v0}, Lcom/leo/SweetAlert/ProgressHelper;->setProgressWheel(Lcom/pnikosis/materialishprogress/ProgressWheel;)V

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    iget p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mAlertType:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->changeAlertType(IZ)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mDialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mModalInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->playAnimation()V

    return-void
.end method

.method public setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelClickListener:Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    return-object p0
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;
    .locals 1

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmClickListener:Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    return-object p0
.end method

.method public setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;
    .locals 1

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;
    .locals 1

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mContentText:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mContentText:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->showContentText(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setCustomImage(I)Lcom/leo/SweetAlert/SweetAlertDialog;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setCustomImage(Landroid/graphics/drawable/Drawable;)Lcom/leo/SweetAlert/SweetAlertDialog;
    .locals 1

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;
    .locals 1

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;
    .locals 1

    iput-boolean p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mShowCancel:Z

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mShowCancel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-object p0
.end method

.method public showContentText(Z)Lcom/leo/SweetAlert/SweetAlertDialog;
    .locals 1

    iput-boolean p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mShowContent:Z

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog;->mShowContent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-object p0
.end method
