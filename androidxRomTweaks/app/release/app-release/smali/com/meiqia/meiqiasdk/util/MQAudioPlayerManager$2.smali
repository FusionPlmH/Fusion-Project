.class final Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$2;
.super Ljava/lang/Object;
.source "MQAudioPlayerManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->playSound(Ljava/lang/String;Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$2;->val$callback:Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->access$000()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$2;->val$callback:Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;->onError()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
