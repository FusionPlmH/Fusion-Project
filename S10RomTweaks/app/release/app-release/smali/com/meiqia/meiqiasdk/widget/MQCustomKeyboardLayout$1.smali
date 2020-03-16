.class Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;
.super Landroid/os/Handler;
.source "MQCustomKeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$100(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$000(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;->scrollContentToBottom()V

    :goto_0
    return-void
.end method
