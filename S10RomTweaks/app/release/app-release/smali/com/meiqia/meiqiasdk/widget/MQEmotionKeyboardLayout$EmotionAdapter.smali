.class Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;
.super Landroid/widget/BaseAdapter;
.source "MQEmotionKeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmotionAdapter"
.end annotation


# instance fields
.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;->mDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;->mDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;->this$0:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-virtual {p2}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_emotion_keyboard:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_delete:I

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->getImgByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-object p2
.end method
