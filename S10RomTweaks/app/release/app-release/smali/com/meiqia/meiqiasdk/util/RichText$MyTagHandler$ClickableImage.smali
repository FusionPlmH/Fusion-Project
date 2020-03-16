.class Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler$ClickableImage;
.super Landroid/text/style/ClickableSpan;
.source "RichText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickableImage"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler$ClickableImage;->this$1:Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler$ClickableImage;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler$ClickableImage;->this$1:Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;->this$0:Lcom/meiqia/meiqiasdk/util/RichText;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/RichText;->access$400(Lcom/meiqia/meiqiasdk/util/RichText;)Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler$ClickableImage;->this$1:Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;->this$0:Lcom/meiqia/meiqiasdk/util/RichText;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/RichText;->access$400(Lcom/meiqia/meiqiasdk/util/RichText;)Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler$ClickableImage;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;->onImageClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
