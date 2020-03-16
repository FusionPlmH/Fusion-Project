.class public Lcom/meiqia/core/bean/MQClient;
.super Ljava/lang/Object;


# instance fields
.field private AESKey:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private bindUserId:Ljava/lang/String;

.field private browserId:Ljava/lang/String;

.field private enterpriseId:Ljava/lang/String;

.field private trackId:Ljava/lang/String;

.field private visitId:Ljava/lang/String;

.field private visitPageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/meiqia/core/bean/MQClient;->enterpriseId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/meiqia/core/bean/MQClient;->enterpriseId:Ljava/lang/String;

    iput-object p1, p0, Lcom/meiqia/core/bean/MQClient;->appKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/meiqia/core/bean/MQClient;->bindUserId:Ljava/lang/String;

    iput-object p3, p0, Lcom/meiqia/core/bean/MQClient;->trackId:Ljava/lang/String;

    iput-object p4, p0, Lcom/meiqia/core/bean/MQClient;->AESKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/meiqia/core/bean/MQClient;->enterpriseId:Ljava/lang/String;

    iput-object p6, p0, Lcom/meiqia/core/bean/MQClient;->browserId:Ljava/lang/String;

    iput-object p7, p0, Lcom/meiqia/core/bean/MQClient;->visitPageId:Ljava/lang/String;

    iput-object p8, p0, Lcom/meiqia/core/bean/MQClient;->visitId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAESKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQClient;->AESKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQClient;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBindUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQClient;->bindUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQClient;->browserId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnterpriseId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQClient;->enterpriseId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQClient;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQClient;->visitId:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitPageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQClient;->visitPageId:Ljava/lang/String;

    return-object v0
.end method

.method public setAESKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQClient;->AESKey:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQClient;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setBindUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQClient;->bindUserId:Ljava/lang/String;

    return-void
.end method

.method public setBrowserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQClient;->browserId:Ljava/lang/String;

    return-void
.end method

.method public setEnterpriseId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQClient;->enterpriseId:Ljava/lang/String;

    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQClient;->trackId:Ljava/lang/String;

    return-void
.end method

.method public setVisitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQClient;->visitId:Ljava/lang/String;

    return-void
.end method

.method public setVisitPageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQClient;->visitPageId:Ljava/lang/String;

    return-void
.end method
