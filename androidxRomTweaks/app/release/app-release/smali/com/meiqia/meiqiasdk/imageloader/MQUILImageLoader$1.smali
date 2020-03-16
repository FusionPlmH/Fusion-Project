.class Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader$1;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "MQUILImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader;

.field final synthetic val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader$1;->this$0:Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader$1;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p3, p0, Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader$1;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p1}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;->onSuccess(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
