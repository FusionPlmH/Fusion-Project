.class Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$4;
.super Ljava/lang/Object;
.source "MQCustomKeyboardLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$4;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$4;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isCustomKeyboardVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$4;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->closeCustomKeyboard()V

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$4;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$400(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V

    return-void
.end method
