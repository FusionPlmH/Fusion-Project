.class Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;
.super Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
.source "LocalVideoThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;

.field final synthetic val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$requestId:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected disposeResult(Lcom/facebook/common/references/CloseableReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method

.method protected bridge synthetic disposeResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->disposeResult(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method

.method protected getExtraMapOnSuccess(Lcom/facebook/common/references/CloseableReference;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "createdThumbnail"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getExtraMapOnSuccess(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->getExtraMapOnSuccess(Lcom/facebook/common/references/CloseableReference;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected getResult()Lcom/facebook/common/references/CloseableReference;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->access$000(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->access$100(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->getInstance()Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/imagepipeline/image/QualityInfo;I)V

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->getResult()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Ljava/lang/Exception;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->onFailure(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$requestId:Ljava/lang/String;

    const-string v1, "VideoThumbnailProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSuccess(Lcom/facebook/common/references/CloseableReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->onSuccess(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$requestId:Ljava/lang/String;

    const-string v2, "VideoThumbnailProducer"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->onSuccess(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method
