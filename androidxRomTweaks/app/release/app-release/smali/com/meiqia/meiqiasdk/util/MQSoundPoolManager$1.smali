.class Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager$1;
.super Ljava/lang/Object;
.source "MQSoundPoolManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->playSound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager$1;->this$0:Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

    iput p2, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 1

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager$1;->this$0:Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->access$000(Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;)Ljava/util/Map;

    move-result-object p1

    iget p3, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager$1;->val$resId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager$1;->this$0:Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

    invoke-static {p1, p2}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->access$100(Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;I)V

    :cond_0
    return-void
.end method
