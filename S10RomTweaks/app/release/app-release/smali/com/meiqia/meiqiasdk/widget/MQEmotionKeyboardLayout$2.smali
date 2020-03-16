.class Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$2;
.super Ljava/lang/Object;
.source "MQEmotionKeyboardLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->getGridView(I)Landroid/widget/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$100(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$100(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;->onDelete()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$100(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$2;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$100(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;

    move-result-object p2

    invoke-virtual {p1, p3}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;->onInsert(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
