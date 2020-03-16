.class Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MQEmotionKeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmotionPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionPagerAdapter;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    iget-object p3, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionPagerAdapter;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {p3}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionPagerAdapter;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionPagerAdapter;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionPagerAdapter;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->access$200(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
