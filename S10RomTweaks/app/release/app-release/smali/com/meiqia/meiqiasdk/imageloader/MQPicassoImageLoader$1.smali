.class Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$1;
.super Lcom/squareup/picasso/Callback$EmptyCallback;
.source "MQPicassoImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$1;->this$0:Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$1;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$1;->val$finalPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/squareup/picasso/Callback$EmptyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$1;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$1;->val$finalPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;->onSuccess(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
