.class Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "MQPhotoFolderPw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderAdapter"
.end annotation


# instance fields
.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/ImageFolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private mImageHeight:I

.field private mImageWidth:I

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;)V
    .locals 1

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->this$0:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->mDatas:Ljava/util/List;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->mImageWidth:I

    iget p1, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->mImageWidth:I

    iput p1, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->mImageHeight:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/meiqia/meiqiasdk/model/ImageFolderModel;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->getItem(I)Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_photo_folder:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderViewHolder;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->this$0:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderViewHolder;-><init>(Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$1;)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->photo_iv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iput-object v0, p3, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderViewHolder;->photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->name_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderViewHolder;->nameTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->count_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderViewHolder;->countTv:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->getItem(I)Lcom/meiqia/meiqiasdk/model/ImageFolderModel;

    move-result-object p1

    iget-object v0, p3, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderViewHolder;->nameTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderViewHolder;->countTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->this$0:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;

    iget-object v1, v0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mActivity:Landroid/app/Activity;

    iget-object v2, p3, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderViewHolder;->photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iget-object v3, p1, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->coverPath:Ljava/lang/String;

    sget v4, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_light:I

    sget v5, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_light:I

    iget v6, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->mImageWidth:I

    iget v7, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->mImageHeight:I

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V

    return-object p2
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meiqia/meiqiasdk/model/ImageFolderModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->mDatas:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->notifyDataSetChanged()V

    return-void
.end method
