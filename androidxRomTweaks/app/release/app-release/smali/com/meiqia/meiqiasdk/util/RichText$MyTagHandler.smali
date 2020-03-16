.class public Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;
.super Ljava/lang/Object;
.source "RichText.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/util/RichText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTagHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler$ClickableImage;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/util/RichText;


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/util/RichText;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;->this$0:Lcom/meiqia/meiqiasdk/util/RichText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "img"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    const-class p4, Landroid/text/style/ImageSpan;

    invoke-interface {p3, p2, p1, p4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/text/style/ImageSpan;

    const/4 v0, 0x0

    aget-object p4, p4, v0

    invoke-virtual {p4}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler$ClickableImage;

    invoke-direct {v0, p0, p4}, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler$ClickableImage;-><init>(Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;Ljava/lang/String;)V

    const/16 p4, 0x21

    invoke-interface {p3, v0, p2, p1, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method
