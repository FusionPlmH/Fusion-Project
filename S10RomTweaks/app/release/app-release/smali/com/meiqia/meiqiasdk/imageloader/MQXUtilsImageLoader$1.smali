.class Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;
.super Ljava/lang/Object;
.source "MQXUtilsImageLoader.java"

# interfaces
.implements Lorg/xutils/common/Callback$CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$CommonCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;->this$0:Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;->val$finalPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public onFinished()V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;->val$finalPath:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;->onSuccess(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method