.class public Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQChatFileItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;
    }
.end annotation


# instance fields
.field private isCancel:Z

.field private mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;

.field private mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

.field private mProgressBar:Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

.field private mRightIv:Landroid/view/View;

.field private mSubTitleTv:Landroid/widget/TextView;

.field private mTitleTv:Landroid/widget/TextView;

.field private root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->isCancel:Z

    return p0
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Lcom/meiqia/meiqiasdk/model/FileMessage;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->cancelDownloading()V

    return-void
.end method

.method private cancelDownloading()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->isCancel:Z

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setFileState(I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->cancelDownload(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getFileMessageFilePath(Lcom/meiqia/meiqiasdk/model/FileMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->delFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;->notifyDataSetChanged()V

    return-void
.end method

.method private displayFileInfo()V
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mTitleTv:Landroid/widget/TextView;

    const-string v1, "filename"

    invoke-direct {p0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getExtraStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getFileMessageFilePath(Lcom/meiqia/meiqiasdk/model/FileMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_download_complete:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mRightIv:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v0, "expire_at"

    invoke-direct {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getExtraStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQTimeUtils;->parseTimeToLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_expired:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mRightIv:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setFileState(I)V

    goto :goto_0

    :cond_1
    long-to-float v0, v2

    const v2, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v2

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/meiqia/meiqiasdk/R$string;->mq_expire_after:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mRightIv:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getSubTitlePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mSubTitleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mProgressBar:Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->setVisibility(I)V

    return-void
.end method

.method private getExtraLongValue(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getExtraStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private getSubTitlePrefix()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "size"

    invoke-direct {p0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getExtraLongValue(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openFile()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-direct {p0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getExtraStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-static {v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getFileMessageFilePath(Lcom/meiqia/meiqiasdk/model/FileMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_no_app_open_file:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public downloadFailedState()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mProgressBar:Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->setVisibility(I)V

    return-void
.end method

.method public downloadInitState()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mProgressBar:Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->setProgress(F)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mProgressBar:Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->displayFileInfo()V

    return-void
.end method

.method public downloadSuccessState()V
    .locals 2

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->displayFileInfo()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mProgressBar:Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->setVisibility(I)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->setProgress(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mRightIv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public downloadingState()V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mSubTitleTv:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getSubTitlePrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/meiqia/meiqiasdk/R$string;->mq_downloading:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mRightIv:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mProgressBar:Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

    invoke-virtual {v0, v3}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_file_layout:I

    return v0
.end method

.method public initFileItem(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;Lcom/meiqia/meiqiasdk/model/FileMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->downloadInitState()V

    return-void
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->root:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->progressbar:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mProgressBar:Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->mq_file_title_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->mq_file_sub_title_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mSubTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->mq_right_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mRightIv:Landroid/view/View;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->mq_right_iv:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->root:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_1
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->progressbar:I

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->cancelDownloading()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->root:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getFileState()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-interface {p1, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;->onFileMessageExpired(Lcom/meiqia/meiqiasdk/model/FileMessage;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setFileState(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->root:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->isCancel:Z

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setFileState(I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->downloadingState()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mFileMessage:Lcom/meiqia/meiqiasdk/model/FileMessage;

    new-instance v1, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)V

    invoke-interface {p1, v0, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->downloadFile(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->openFile()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->cancelDownloading()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected processLogic()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->root:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mRightIv:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mProgressBar:Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

    invoke-virtual {v0, p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->mProgressBar:Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->setProgress(F)V

    return-void
.end method
