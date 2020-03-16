.class Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;
.super Ljava/lang/Object;
.source "MQRecorderKeyboardLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->handleActionUp()V
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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$300(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$900(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$000(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$100(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$500(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$1200(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$500(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$600(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->cancel()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$600(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->cancel()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v2}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$1000(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$1002(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;J)J

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$1100(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;->onAudioRecorderTooShort()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$000(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$1200(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->access$1300(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;)V

    return-void
.end method
