.class public Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;
.super Ljava/lang/Object;
.source "MQSoundPoolManager.java"


# static fields
.field private static final SOUND_INTERNAL_TIME:I = 0x1f4

.field private static final STREAMS_COUNT:I = 0x1


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mPrePlayTime:J

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mPrePlayTime:J

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mContext:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    :goto_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundSourceMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundSourceMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->play(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;
    .locals 1

    new-instance v0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private isPlaying()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mPrePlayTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mPrePlayTime:J

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private isSilentMode()Z
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private play(I)V
    .locals 8

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    return-void
.end method


# virtual methods
.method public playSound(I)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundSourceMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->isSilentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundSourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager$1;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager$1;-><init>(Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;I)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundSourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->play(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->mSoundSourceMap:Ljava/util/Map;

    return-void
.end method
