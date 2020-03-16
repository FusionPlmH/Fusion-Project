.class public Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQRecorderKeyboardLayout.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;
    }
.end annotation


# static fields
.field private static final RECORDER_MAX_TIME:I = 0x3c

.field private static final STATE_NORMAL:I = 0x1

.field private static final STATE_RECORDING:I = 0x2

.field private static final STATE_WANT_CANCEL:I = 0x3

.field private static final VOICE_LEVEL_COUNT:I = 0x9


# instance fields
.field private mAnimIv:Landroid/widget/ImageView;

.field private mAudioRecorderManager:Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

.field private mCallback:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;

.field private mCurrentState:I

.field private mDistanceCancel:I

.field private mGetVoiceLevelRunnable:Ljava/lang/Runnable;

.field private mHasPermission:Z

.field private mIsOvertime:Z

.field private mIsRecording:Z

.field private mLastTipTooShortTime:J

.field private mStatusTv:Landroid/widget/TextView;

.field private mTime:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCurrentState:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsOvertime:Z

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mHasPermission:Z

    new-instance p1, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$1;

    invoke-direct {p1, p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$1;-><init>(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mGetVoiceLevelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCurrentState:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsOvertime:Z

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mHasPermission:Z

    new-instance p1, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$1;

    invoke-direct {p1, p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$1;-><init>(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mGetVoiceLevelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCurrentState:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsOvertime:Z

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mHasPermission:Z

    new-instance p1, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$1;

    invoke-direct {p1, p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$1;-><init>(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mGetVoiceLevelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsRecording:Z

    return p0
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)F
    .locals 0

    iget p0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mTime:F

    return p0
.end method

.method static synthetic access$1000(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mLastTipTooShortTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;J)J
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mLastTipTooShortTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;F)F
    .locals 0

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mTime:F

    return p1
.end method

.method static synthetic access$1100(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCallback:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->endRecorder()V

    return-void
.end method

.method static synthetic access$1300(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->refreshVoiceLevel()V

    return-void
.end method

.method static synthetic access$300(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsOvertime:Z

    return p0
.end method

.method static synthetic access$302(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsOvertime:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->handleActionUp()V

    return-void
.end method

.method static synthetic access$500(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)I
    .locals 0

    iget p0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCurrentState:I

    return p0
.end method

.method static synthetic access$600(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAudioRecorderManager:Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAnimIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mStatusTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mHasPermission:Z

    return p0
.end method

.method private changeState(I)V
    .locals 2

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCurrentState:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCurrentState:I

    iget p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCurrentState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mStatusTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_audio_status_want_cancel:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAnimIv:Landroid/widget/ImageView;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mStatusTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_audio_status_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mStatusTv:Landroid/widget/TextView;

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_audio_status_normal:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAnimIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private endRecorder()V
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAudioRecorderManager:Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->release()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCallback:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAudioRecorderManager:Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->getCurrenFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCallback:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->getDurationByFilePath(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;->onAudioRecorderFinish(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAudioRecorderManager:Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->cancel()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCallback:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;->onAudioRecorderNoPermission()V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleActionUp()V
    .locals 1

    new-instance v0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;-><init>(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initLevelListDrawable()V
    .locals 7

    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mq_voice_level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {v2, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :try_start_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v5, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_audio_recorder_icon:I

    invoke-static {v3, v2, v5}, Lcom/meiqia/meiqiasdk/util/MQUtils;->tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v1, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meiqia/meiqiasdk/R$drawable;->mq_voice_want_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private isWantCancel(II)Z
    .locals 0

    iget p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mDistanceCancel:I

    neg-int p1, p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private refreshVoiceLevel()V
    .locals 1

    new-instance v0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$2;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$2;-><init>(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsRecording:Z

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mHasPermission:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mTime:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->changeState(I)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_layout_recorder_keyboard:I

    return v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_recorder_keyboard_status:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mStatusTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->iv_recorder_keyboard_anim:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAnimIv:Landroid/widget/ImageView;

    return-void
.end method

.method public isRecording()Z
    .locals 2

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onAudioRecorderNoPermission()V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->endRecorder()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->reset()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v3, 0x3

    if-eq p2, v1, :cond_1

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAudioRecorderManager:Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->cancel()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->reset()V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsOvertime:Z

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsRecording:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mHasPermission:Z

    if-eqz p2, :cond_5

    invoke-direct {p0, p1, v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->isWantCancel(II)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v3}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->changeState(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->changeState(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->handleActionUp()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsOvertime:Z

    iput-boolean v2, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mHasPermission:Z

    invoke-direct {p0, v1}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->changeState(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAudioRecorderManager:Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->prepareAudio()V

    :cond_5
    :goto_0
    return v2
.end method

.method protected processLogic()V
    .locals 2

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->initLevelListDrawable()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mDistanceCancel:I

    new-instance v0, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;-><init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager$Callback;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAudioRecorderManager:Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    return-void
.end method

.method public setCallback(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mCallback:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;

    return-void
.end method

.method protected setListener()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public wellPrepared()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mIsRecording:Z

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->mGetVoiceLevelRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
