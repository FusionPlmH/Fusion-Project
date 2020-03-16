.class Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$5;
.super Ljava/lang/Object;
.source "MQCustomKeyboardLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->init(Landroid/app/Activity;Landroid/widget/EditText;Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;)V
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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$5;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$5;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->closeAllKeyboard()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$5;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$400(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V

    :goto_0
    return-void
.end method
