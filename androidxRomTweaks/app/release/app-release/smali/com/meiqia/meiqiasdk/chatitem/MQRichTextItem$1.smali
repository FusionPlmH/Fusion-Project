.class Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem$1;
.super Ljava/lang/Object;
.source "MQRichTextItem.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->setMessage(Lcom/meiqia/meiqiasdk/model/RichTextMessage;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
