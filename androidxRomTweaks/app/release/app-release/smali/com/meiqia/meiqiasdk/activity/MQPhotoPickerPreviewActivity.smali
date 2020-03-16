.class public Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;
.super Landroid/app/Activity;
.source "MQPhotoPickerPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$ImagePageAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_CURRENT_POSITION:Ljava/lang/String; = "EXTRA_CURRENT_POSITION"

.field private static final EXTRA_IS_FROM_TAKE_PHOTO:Ljava/lang/String; = "EXTRA_IS_FROM_TAKE_PHOTO"

.field private static final EXTRA_MAX_CHOOSE_COUNT:Ljava/lang/String; = "EXTRA_MAX_CHOOSE_COUNT"

.field private static final EXTRA_PREVIEW_IMAGES:Ljava/lang/String; = "EXTRA_PREVIEW_IMAGES"

.field private static final EXTRA_SELECTED_IMAGES:Ljava/lang/String; = "EXTRA_SELECTED_IMAGES"

.field private static final EXTRA_TOP_RIGHT_BTN_TEXT:Ljava/lang/String; = "EXTRA_TOP_RIGHT_BTN_TEXT"


# instance fields
.field private mChooseRl:Landroid/widget/RelativeLayout;

.field private mChooseTv:Landroid/widget/TextView;

.field private mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

.field private mIsFromTakePhoto:Z

.field private mIsHidden:Z

.field private mLastShowHiddenTime:J

.field private mMaxChooseCount:I

.field private mPreviewImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubmitTv:Landroid/widget/TextView;

.field private mTitleRl:Landroid/widget/RelativeLayout;

.field private mTitleTv:Landroid/widget/TextView;

.field private mTopRightBtnText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mMaxChooseCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mIsHidden:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->handlePageSelectedStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->hiddenTitlebarAndChoosebar()V

    return-void
.end method

.method static synthetic access$302(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mIsHidden:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseRl:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getIsFromTakePhoto(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "EXTRA_IS_FROM_TAKE_PHOTO"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSelectedImages(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "EXTRA_SELECTED_IMAGES"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private handlePageSelectedStatus()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTitleTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseTv:Landroid/widget/TextView;

    sget v2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_cb_checked:I

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseTv:Landroid/widget/TextView;

    sget v2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_cb_normal:I

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void
.end method

.method private hiddenTitlebarAndChoosebar()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$4;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mIsFromTakePhoto:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseRl:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :cond_0
    return-void
.end method

.method private initListener()V
    .locals 2

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSubmitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_activity_photo_picker_preview:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->setContentView(I)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->submit_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSubmitTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_hvp:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->choose_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->choose_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseTv:Landroid/widget/TextView;

    return-void
.end method

.method public static newIntent(Landroid/content/Context;ILjava/util/ArrayList;ILjava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_SELECTED_IMAGES"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p0, "EXTRA_MAX_CHOOSE_COUNT"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "EXTRA_CURRENT_POSITION"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "EXTRA_TOP_RIGHT_BTN_TEXT"

    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "EXTRA_IS_FROM_TAKE_PHOTO"

    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private processLogic(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "EXTRA_MAX_CHOOSE_COUNT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mMaxChooseCount:I

    iget p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mMaxChooseCount:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mMaxChooseCount:I

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_SELECTED_IMAGES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    sget-object p1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->sPreviewImages:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_IS_FROM_TAKE_PHOTO"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mIsFromTakePhoto:Z

    iget-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mIsFromTakePhoto:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseRl:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_TOP_RIGHT_BTN_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTopRightBtnText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_CURRENT_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$ImagePageAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$ImagePageAdapter;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->setCurrentItem(I)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->handlePageSelectedStatus()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->renderTopRightBtn()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$2;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private renderTopRightBtn()V
    .locals 3

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mIsFromTakePhoto:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSubmitTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSubmitTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTopRightBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSubmitTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSubmitTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTopRightBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSubmitTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSubmitTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTopRightBtnText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mMaxChooseCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showTitlebarAndChoosebar()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v2, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$3;

    invoke-direct {v2, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$3;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mIsFromTakePhoto:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseRl:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseRl:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseRl:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    const-string v2, "EXTRA_SELECTED_IMAGES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mIsFromTakePhoto:Z

    const-string v2, "EXTRA_IS_FROM_TAKE_PHOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->back_iv:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->onBackPressed()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->submit_tv:I

    if-ne v0, v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    const-string v1, "EXTRA_SELECTED_IMAGES"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mIsFromTakePhoto:Z

    const-string v1, "EXTRA_IS_FROM_TAKE_PHOTO"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->finish()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->choose_tv:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_cb_normal:I

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->renderTopRightBtn()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mMaxChooseCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_cb_checked:I

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->renderTopRightBtn()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_toast_photo_picker_max:I

    new-array v0, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mMaxChooseCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mChooseTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_cb_checked:I

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->renderTopRightBtn()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->initView()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->initListener()V

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->processLogic(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewTap(Landroid/view/View;FF)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mLastShowHiddenTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1f4

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mLastShowHiddenTime:J

    iget-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->mIsHidden:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->showTitlebarAndChoosebar()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->hiddenTitlebarAndChoosebar()V

    :cond_1
    :goto_0
    return-void
.end method
