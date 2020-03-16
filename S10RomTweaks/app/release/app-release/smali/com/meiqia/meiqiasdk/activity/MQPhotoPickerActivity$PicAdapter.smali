.class Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;
.super Landroid/widget/BaseAdapter;
.source "MQPhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicAdapter"
.end annotation


# instance fields
.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageHeight:I

.field private mImageWidth:I

.field private mSelectedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mSelectedImages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mImageWidth:I

    iget p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mImageWidth:I

    iput p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mImageHeight:I

    return-void
.end method

.method private setFlagClickListener(Landroid/widget/ImageView;I)V
    .locals 1

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectedCount()I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mSelectedImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_square_image:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-direct {p3, v2, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$1;)V

    sget v2, Lcom/meiqia/meiqiasdk/R$id;->photo_iv:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iput-object v2, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget v2, Lcom/meiqia/meiqiasdk/R$id;->tip_tv:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->tipTv:Landroid/widget/TextView;

    sget v2, Lcom/meiqia/meiqiasdk/R$id;->flag_iv:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->flagIv:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v2}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$300(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->isTakePhotoEnabled()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->tipTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_gallery_camera:I

    invoke-virtual {p1, v1}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setImageResource(I)V

    iget-object p1, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->flagIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    :cond_1
    iget-object v2, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->tipTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    iget-object v3, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget v5, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_dark:I

    sget v6, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_dark:I

    iget v7, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mImageWidth:I

    iget v8, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mImageHeight:I

    const/4 v9, 0x0

    move-object v4, v10

    invoke-static/range {v2 .. v9}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V

    iget-object v2, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->flagIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->flagIv:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_cb_checked:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_photo_selected_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setColorFilter(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->flagIv:Landroid/widget/ImageView;

    sget v2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_cb_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    invoke-virtual {v1, v0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    iget-object p3, p3, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->flagIv:Landroid/widget/ImageView;

    invoke-direct {p0, p3, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->setFlagClickListener(Landroid/widget/ImageView;I)V

    :goto_2
    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mDatas:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->mSelectedImages:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->notifyDataSetChanged()V

    return-void
.end method
