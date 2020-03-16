.class Lcom/meiqia/meiqiasdk/util/RichText$URLDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RichText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/util/RichText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLDrawable"
.end annotation


# instance fields
.field protected drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/util/RichText;


# direct methods
.method private constructor <init>(Lcom/meiqia/meiqiasdk/util/RichText;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText$URLDrawable;->this$0:Lcom/meiqia/meiqiasdk/util/RichText;

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meiqia/meiqiasdk/util/RichText;Lcom/meiqia/meiqiasdk/util/RichText$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/util/RichText$URLDrawable;-><init>(Lcom/meiqia/meiqiasdk/util/RichText;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/RichText$URLDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
