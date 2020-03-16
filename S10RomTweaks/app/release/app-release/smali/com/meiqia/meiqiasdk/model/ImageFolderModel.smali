.class public Lcom/meiqia/meiqiasdk/model/ImageFolderModel;
.super Ljava/lang/Object;
.source "ImageFolderModel.java"


# instance fields
.field public coverPath:Ljava/lang/String;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTakePhotoEnabled:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->mImages:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->coverPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->mImages:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->mTakePhotoEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->mImages:Ljava/util/ArrayList;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addLastImage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isTakePhotoEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/model/ImageFolderModel;->mTakePhotoEnabled:Z

    return v0
.end method
