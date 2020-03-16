.class Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$3;
.super Ljava/lang/Object;
.source "MQCustomKeyboardLayout.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioRecorderFinish(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;->onAudioRecorderFinish(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAudioRecorderNoPermission()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;->onAudioRecorderNoPermission()V

    :cond_0
    return-void
.end method

.method public onAudioRecorderTooShort()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$3;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;->onAudioRecorderTooShort()V

    :cond_0
    return-void
.end method
