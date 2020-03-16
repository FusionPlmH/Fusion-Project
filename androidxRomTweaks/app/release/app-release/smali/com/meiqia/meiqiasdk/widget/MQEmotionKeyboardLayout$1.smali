.class Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "MQEmotionKeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->setListener()V
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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$1;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$1;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {v2}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$000(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$1;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {v2}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$000(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$1;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$000(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
