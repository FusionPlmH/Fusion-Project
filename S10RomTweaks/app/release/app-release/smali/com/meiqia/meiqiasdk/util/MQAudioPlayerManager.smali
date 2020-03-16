.class public Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;
.super Ljava/lang/Object;
.source "MQAudioPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;
    }
.end annotation


# static fields
.field private static sIsPause:Z

.field private static sMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/media/MediaPlayer;
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static getCurrentDuration()I
    .locals 1

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getCurrentPosition()I
    .locals 1

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getDurationByFilePath(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPlaying()Z
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static pause()V
    .locals 1

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sIsPause:Z

    :cond_0
    return-void
.end method

.method public static playSound(Ljava/lang/String;Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :goto_0
    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$1;

    invoke-direct {v1, p1}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$1;-><init>(Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$2;

    invoke-direct {v1, p1}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$2;-><init>(Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object p0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object p0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;->onError()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static release()V
    .locals 1

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->stop()V

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public static resume()V
    .locals 2

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sIsPause:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sIsPause:Z

    :cond_0
    return-void
.end method

.method public static stop()V
    .locals 1

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method
