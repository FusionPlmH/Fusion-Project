.class Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$2;
.super Ljava/lang/Object;
.source "MQCustomKeyboardLayout.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;


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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$300(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onInsert(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$300(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v2}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$300(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v2}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$300(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14

    invoke-static {v3, v1, v4}, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->getEmotionText(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->access$300(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
