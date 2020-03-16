.class Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MQPhotoPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 9

    new-instance v8, Lcom/meiqia/meiqiasdk/widget/MQImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v8, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance p1, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;

    invoke-direct {p1, v8}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->setOnViewTapListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;)V

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter$1;

    invoke-direct {v0, p0, v8, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;Lcom/meiqia/meiqiasdk/widget/MQImageView;Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;)V

    invoke-virtual {v8, v0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setDrawableChangedCallback(Lcom/meiqia/meiqiasdk/widget/MQImageView$OnDrawableChangedCallback;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_dark:I

    sget v4, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_dark:I

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-static/range {v0 .. v7}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V

    return-object v8
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
