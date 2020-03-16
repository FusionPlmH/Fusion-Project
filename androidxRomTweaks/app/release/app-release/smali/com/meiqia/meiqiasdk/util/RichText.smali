.class public Lcom/meiqia/meiqiasdk/util/RichText;
.super Ljava/lang/Object;
.source "RichText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;,
        Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;,
        Lcom/meiqia/meiqiasdk/util/RichText$URLDrawable;
    }
.end annotation


# static fields
.field private static sHtmlDrawableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private imageGetter:Landroid/text/Html$ImageGetter;

.field private onImageClickListener:Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;

.field private richTextStr:Ljava/lang/String;

.field private tagHandler:Landroid/text/Html$TagHandler;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meiqia/meiqiasdk/util/RichText;->sHtmlDrawableCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/meiqia/meiqiasdk/util/RichText$1;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/util/RichText$1;-><init>(Lcom/meiqia/meiqiasdk/util/RichText;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/RichText;->imageGetter:Landroid/text/Html$ImageGetter;

    new-instance v0, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/util/RichText$MyTagHandler;-><init>(Lcom/meiqia/meiqiasdk/util/RichText;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/RichText;->tagHandler:Landroid/text/Html$TagHandler;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/RichText;->sHtmlDrawableCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/util/RichText;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/util/RichText;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meiqia/meiqiasdk/util/RichText;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/util/RichText;->resizeDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meiqia/meiqiasdk/util/RichText;)Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/util/RichText;->onImageClickListener:Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meiqia/meiqiasdk/util/RichText;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/util/RichText;->richTextStr:Ljava/lang/String;

    return-object p0
.end method

.method private resizeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/RichText;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    div-float v1, v0, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v1, v0

    float-to-int v3, v3

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/util/RichText;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x434d0000    # 205.0f

    invoke-static {v4, v5}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    if-le v3, v4, :cond_1

    int-to-float v0, v4

    div-float/2addr v1, v0

    div-float/2addr v2, v1

    float-to-int v0, v2

    move v3, v4

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public fromHtml(Ljava/lang/String;)Lcom/meiqia/meiqiasdk/util/RichText;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText;->richTextStr:Ljava/lang/String;

    return-object p0
.end method

.method public into(Landroid/widget/TextView;)V
    .locals 4

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText;->textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText;->richTextStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/RichText;->imageGetter:Landroid/text/Html$ImageGetter;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/RichText;->tagHandler:Landroid/text/Html$TagHandler;

    invoke-static {p1, v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/RichText;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setOnImageClickListener(Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;)Lcom/meiqia/meiqiasdk/util/RichText;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText;->onImageClickListener:Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;

    return-object p0
.end method
