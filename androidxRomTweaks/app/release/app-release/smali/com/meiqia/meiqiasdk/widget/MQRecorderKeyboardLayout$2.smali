.class Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$2;
.super Ljava/lang/Object;
.source "MQRecorderKeyboardLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->refreshVoiceLevel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$500(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$700(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$600(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->getVoiceLevel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const/high16 v0, 0x42700000    # 60.0f

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$100(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$800(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/meiqia/meiqiasdk/R$string;->mq_recorder_remaining_time:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
