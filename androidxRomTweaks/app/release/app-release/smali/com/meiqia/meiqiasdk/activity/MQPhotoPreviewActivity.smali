.class public Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;
.super Landroid/app/Activity;
.source "MQPhotoPreviewActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_CURRENT_POSITION:Ljava/lang/String; = "EXTRA_CURRENT_POSITION"

.field private static final EXTRA_IS_SINGLE_PREVIEW:Ljava/lang/String; = "EXTRA_IS_SINGLE_PREVIEW"

.field private static final EXTRA_PHOTO_PATH:Ljava/lang/String; = "EXTRA_PHOTO_PATH"

.field private static final EXTRA_PREVIEW_IMAGES:Ljava/lang/String; = "EXTRA_PREVIEW_IMAGES"

.field private static final EXTRA_SAVE_IMG_DIR:Ljava/lang/String; = "EXTRA_SAVE_IMG_DIR"


# instance fields
.field private mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

.field private mDownloadIv:Landroid/widget/ImageView;

.field private mIsHidden:Z

.field private mIsSinglePreview:Z

.field private mLastShowHiddenTime:J

.field private mPreviewImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveImgDir:Ljava/io/File;

.field private mSavePhotoTask:Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

.field private mTitleRl:Landroid/widget/RelativeLayout;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mIsHidden:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->renderTitleTv()V

    return-void
.end method

.method static synthetic access$200(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->hiddenTitlebar()V

    return-void
.end method

.method static synthetic access$302(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mIsHidden:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSavePhotoTask:Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;)Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSavePhotoTask:Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    return-object p0
.end method

.method private hiddenTitlebar()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

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

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$4;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private initListener()V
    .locals 2

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mDownloadIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_activity_photo_preview:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->setContentView(I)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->download_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mDownloadIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_hvp:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    return-void
.end method

.method public static newIntent(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_SAVE_IMG_DIR"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "EXTRA_PHOTO_PATH"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "EXTRA_CURRENT_POSITION"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "EXTRA_IS_SINGLE_PREVIEW"

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;Ljava/io/File;Ljava/util/ArrayList;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_SAVE_IMG_DIR"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "EXTRA_PREVIEW_IMAGES"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p0, "EXTRA_CURRENT_POSITION"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "EXTRA_IS_SINGLE_PREVIEW"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private processLogic(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_SAVE_IMG_DIR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSaveImgDir:Ljava/io/File;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSaveImgDir:Ljava/io/File;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mDownloadIv:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_PREVIEW_IMAGES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "EXTRA_IS_SINGLE_PREVIEW"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mIsSinglePreview:Z

    iget-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mIsSinglePreview:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_PHOTO_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_CURRENT_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->setCurrentItem(I)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->renderTitleTv()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$2;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private renderTitleTv()V
    .locals 3

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mIsSinglePreview:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mTitleTv:Landroid/widget/TextView;

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_view_photo:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mTitleTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized savePic()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSavePhotoTask:Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mPreviewImages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mContentHvp:Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/widget/MQHackyViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v4, "file://"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_save_img_success_folder:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->showSafe(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSaveImgDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_save_img_success_folder:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSaveImgDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->showSafe(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    new-instance v2, Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    invoke-direct {v2, p0, p0, v1}, Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;-><init>(Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;Landroid/content/Context;Ljava/io/File;)V

    iput-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSavePhotoTask:Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$5;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$5;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)V

    invoke-static {p0, v0, v1}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showTitlebar()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$3;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$3;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->back_iv:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->download_iv:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSavePhotoTask:Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->savePic()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->initView()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->initListener()V

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->processLogic(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSavePhotoTask:Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;->cancelTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSavePhotoTask:Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSavePhotoTask:Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    return-void
.end method

.method public onTaskCancelled()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mSavePhotoTask:Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    return-void
.end method

.method public onViewTap(Landroid/view/View;FF)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mLastShowHiddenTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1f4

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mLastShowHiddenTime:J

    iget-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->mIsHidden:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->showTitlebar()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->hiddenTitlebar()V

    :cond_1
    :goto_0
    return-void
.end method
