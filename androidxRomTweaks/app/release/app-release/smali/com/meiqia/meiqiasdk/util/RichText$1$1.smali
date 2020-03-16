.class Lcom/meiqia/meiqiasdk/util/RichText$1$1;
.super Ljava/lang/Object;
.source "RichText.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/util/RichText$1;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/util/RichText$1;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$urlDrawable:Lcom/meiqia/meiqiasdk/util/RichText$URLDrawable;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/util/RichText$1;Lcom/meiqia/meiqiasdk/util/RichText$URLDrawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText$1$1;->this$1:Lcom/meiqia/meiqiasdk/util/RichText$1;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/util/RichText$1$1;->val$urlDrawable:Lcom/meiqia/meiqiasdk/util/RichText$URLDrawable;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/util/RichText$1$1;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/RichText$1$1;->this$1:Lcom/meiqia/meiqiasdk/util/RichText$1;

    iget-object v1, v1, Lcom/meiqia/meiqiasdk/util/RichText$1;->this$0:Lcom/meiqia/meiqiasdk/util/RichText;

    invoke-static {v1, v0}, Lcom/meiqia/meiqiasdk/util/RichText;->access$200(Lcom/meiqia/meiqiasdk/util/RichText;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/RichText;->access$000()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText$1$1;->val$urlDrawable:Lcom/meiqia/meiqiasdk/util/RichText$URLDrawable;

    iput-object v0, p1, Lcom/meiqia/meiqiasdk/util/RichText$URLDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/RichText$1$1;->this$1:Lcom/meiqia/meiqiasdk/util/RichText$1;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/util/RichText$1;->this$0:Lcom/meiqia/meiqiasdk/util/RichText;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/RichText$1$1;->this$1:Lcom/meiqia/meiqiasdk/util/RichText$1;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/util/RichText$1;->this$0:Lcom/meiqia/meiqiasdk/util/RichText;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/RichText;->access$500(Lcom/meiqia/meiqiasdk/util/RichText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/util/RichText;->fromHtml(Ljava/lang/String;)Lcom/meiqia/meiqiasdk/util/RichText;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/RichText$1$1;->this$1:Lcom/meiqia/meiqiasdk/util/RichText$1;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/util/RichText$1;->this$0:Lcom/meiqia/meiqiasdk/util/RichText;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/RichText;->access$400(Lcom/meiqia/meiqiasdk/util/RichText;)Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/util/RichText;->setOnImageClickListener(Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;)Lcom/meiqia/meiqiasdk/util/RichText;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/RichText$1$1;->this$1:Lcom/meiqia/meiqiasdk/util/RichText$1;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/util/RichText$1;->this$0:Lcom/meiqia/meiqiasdk/util/RichText;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/RichText;->access$100(Lcom/meiqia/meiqiasdk/util/RichText;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/util/RichText;->into(Landroid/widget/TextView;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/meiqia/meiqiasdk/util/RichText$1$1$1;

    invoke-direct {v0, p0, p2}, Lcom/meiqia/meiqiasdk/util/RichText$1$1$1;-><init>(Lcom/meiqia/meiqiasdk/util/RichText$1$1;Landroid/graphics/Bitmap;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
