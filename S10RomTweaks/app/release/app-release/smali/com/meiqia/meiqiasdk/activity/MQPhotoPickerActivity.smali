.class public Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;
.super Landroid/app/Activity;
.source "MQPhotoPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;,
        Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback<",
        "Ljava/util/ArrayList<",
        "Lcom/meiqia/meiqiasdk/model/ImageFolderModel;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final EXTRA_IMAGE_DIR:Ljava/lang/String; = "EXTRA_IMAGE_DIR"

.field private static final EXTRA_MAX_CHOOSE_COUNT:Ljava/lang/String; = "EXTRA_MAX_CHOOSE_COUNT"

.field private static final EXTRA_SELECTED_IMAGES:Ljava/lang/String; = "EXTRA_SELECTED_IMAGES"

.field private static final EXTRA_TOP_RIGHT_BTN_TEXT:Ljava/lang/String; = "EXTRA_TOP_RIGHT_BTN_TEXT"

.field private static final REQUEST_CODE_PREVIEW:I = 0x2

.field private static final REQUEST_CODE_TAKE_PHOTO:I = 0x1

.field public static sPreviewImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArrowIv:Landroid/widget/ImageView;

.field private mContentGv:Landroid/widget/GridView;

.field private mCurrentImageFolderModel:Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

.field private mImageCaptureManager:Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;

.field private mImageFolderModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meiqia/meiqiasdk/model/ImageFolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private mLastShowPhotoFolderTime:J

.field private mLoadPhotoTask:Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;

.field private mLoadingDialog:Landroid/app/Dialog;

.field private mMaxChooseCount:I

.field private mPhotoFolderPw:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;

.field private mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

.field private mSubmitTv:Landroid/widget/TextView;

.field private mTakePhotoEnabled:Z

.field private mTitleRl:Landroid/widget/RelativeLayout;

.field private mTitleTv:Landroid/widget/TextView;

.field private mTopRightBtnText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mMaxChooseCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->reloadPhotos(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mArrowIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/model/ImageFolderModel;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mCurrentImageFolderModel:Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)I
    .locals 0

    iget p0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mMaxChooseCount:I

    return p0
.end method

.method static synthetic access$600(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->renderTopRightBtn()V

    return-void
.end method

.method static synthetic access$700(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->toastMaxCountTip()V

    return-void
.end method

.method private cancelLoadPhotoTask()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadPhotoTask:Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;->cancelTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadPhotoTask:Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;

    :cond_0
    return-void
.end method

.method private changeToPreview(I)V
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mCurrentImageFolderModel:Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->isTakePhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    move v3, p1

    :try_start_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->sPreviewImages:Ljava/util/ArrayList;

    iget v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mMaxChooseCount:I

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTopRightBtnText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->newIntent(Landroid/content/Context;ILjava/util/ArrayList;ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_photo_not_support:I

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private dismissLoadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
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

.method private initListener()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->folder_ll:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mSubmitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mContentGv:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_activity_photo_picker:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->setContentView(I)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->arrow_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mArrowIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->submit_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mSubmitTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_gv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mContentGv:Landroid/widget/GridView;

    return-void
.end method

.method public static newIntent(Landroid/content/Context;Ljava/io/File;ILjava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_IMAGE_DIR"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "EXTRA_MAX_CHOOSE_COUNT"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "EXTRA_SELECTED_IMAGES"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p0, "EXTRA_TOP_RIGHT_BTN_TEXT"

    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private processLogic(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_IMAGE_DIR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTakePhotoEnabled:Z

    new-instance v1, Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageCaptureManager:Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_MAX_CHOOSE_COUNT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mMaxChooseCount:I

    iget p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mMaxChooseCount:I

    if-ge p1, v0, :cond_1

    iput v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mMaxChooseCount:I

    :cond_1
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_TOP_RIGHT_BTN_TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTopRightBtnText:Ljava/lang/String;

    new-instance p1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-direct {p1, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SELECTED_IMAGES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->setSelectedImages(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mContentGv:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->renderTopRightBtn()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_all_image:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private reloadPhotos(I)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageFolderModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageFolderModels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mCurrentImageFolderModel:Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTitleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mCurrentImageFolderModel:Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mCurrentImageFolderModel:Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->getImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->setData(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private renderTopRightBtn()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mSubmitTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mSubmitTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTopRightBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mSubmitTv:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mSubmitTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTopRightBtnText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mMaxChooseCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private returnSelectedImages(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "EXTRA_SELECTED_IMAGES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->finish()V

    return-void
.end method

.method private showLoadingDialog()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/meiqia/meiqiasdk/R$style;->MQDialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadingDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadingDialog:Landroid/app/Dialog;

    sget v1, Lcom/meiqia/meiqiasdk/R$layout;->mq_dialog_loading_photopicker:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadingDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showPhotoFolderPw()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPhotoFolderPw:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$1;

    invoke-direct {v2, p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$Callback;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPhotoFolderPw:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPhotoFolderPw:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageFolderModels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->setDatas(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPhotoFolderPw:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->show()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mArrowIv:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, -0x3ccc0000    # -180.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private takePhoto()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageCaptureManager:Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;->getTakePictureIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_photo_not_support:I

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private toastMaxCountTip()V
    .locals 4

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_toast_photo_picker_max:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mMaxChooseCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageCaptureManager:Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;->getCurrentPhotoPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    sput-object v3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->sPreviewImages:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTopRightBtnText:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->newIntent(Landroid/content/Context;ILjava/util/ArrayList;ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_photo_not_support:I

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_4

    invoke-static {p3}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->getIsFromTakePhoto(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageCaptureManager:Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;->refreshGallery()V

    :cond_1
    invoke-static {p3}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->getSelectedImages(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->returnSelectedImages(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    if-ne p1, v0, :cond_4

    invoke-static {p3}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->getIsFromTakePhoto(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageCaptureManager:Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;->deletePhotoFile()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-static {p3}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->getSelectedImages(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->setSelectedImages(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->renderTopRightBtn()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->back_iv:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->folder_ll:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLastShowPhotoFolderTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->showPhotoFolderPw()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLastShowPhotoFolderTime:J

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->submit_tv:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->returnSelectedImages(Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->initView()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->initListener()V

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->processLogic(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->dismissLoadingDialog()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->cancelLoadPhotoTask()V

    const/4 v0, 0x0

    sput-object v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->sPreviewImages:Ljava/util/ArrayList;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mMaxChooseCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mCurrentImageFolderModel:Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->isTakePhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->takePhoto()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->changeToPreview(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mCurrentImageFolderModel:Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->isTakePhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPicAdapter:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedCount()I

    move-result p1

    iget p2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mMaxChooseCount:I

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->toastMaxCountTip()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->takePhoto()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->changeToPreview(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meiqia/meiqiasdk/model/ImageFolderModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->dismissLoadingDialog()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageFolderModels:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mPhotoFolderPw:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->getCurrentPosition()I

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->reloadPhotos(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTakePhotoEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageCaptureManager:Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTakePhotoEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mImageCaptureManager:Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/util/MQImageCaptureManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadPhotoTask:Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->showLoadingDialog()V

    new-instance v0, Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;

    iget-boolean v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mTakePhotoEnabled:Z

    invoke-direct {v0, p0, p0, v1}, Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;-><init>(Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;->perform()Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadPhotoTask:Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;

    :cond_0
    return-void
.end method

.method public onTaskCancelled()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->dismissLoadingDialog()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->mLoadPhotoTask:Lcom/meiqia/meiqiasdk/util/MQLoadPhotoTask;

    return-void
.end method
