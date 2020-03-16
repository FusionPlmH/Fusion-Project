.class final Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$1;
.super Ljava/lang/Object;
.source "MQAudioPlayerManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$1;->val$callback:Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$1;->val$callback:Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;->onCompletion()V

    :cond_0
    return-void
.end method
