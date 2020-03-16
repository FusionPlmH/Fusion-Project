.class public Lcom/meiqia/meiqiasdk/model/PhotoMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "PhotoMessage.java"


# instance fields
.field private localPath:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->setItemViewType(I)V

    const-string v0, "photo"

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->url:Ljava/lang/String;

    return-void
.end method
