.class public Lcom/meiqia/meiqiasdk/model/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# instance fields
.field private avatar:Ljava/lang/String;

.field private cellphone:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private enterprise_id:I

.field private id:Ljava/lang/String;

.field private isOnline:Z

.field private nickname:Ljava/lang/String;

.field private privilege:Ljava/lang/String;

.field private public_cellphone:Ljava/lang/String;

.field private public_email:Ljava/lang/String;

.field private qq:Ljava/lang/String;

.field private realname:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private telephone:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private weixin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCellphone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->cellphone:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEnterprise_id()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->enterprise_id:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivilege()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->privilege:Ljava/lang/String;

    return-object v0
.end method

.method public getPublic_cellphone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->public_cellphone:Ljava/lang/String;

    return-object v0
.end method

.method public getPublic_email()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->public_email:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getRealname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->realname:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getWeixin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->weixin:Ljava/lang/String;

    return-object v0
.end method

.method public isOffDuty()Z
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->status:Ljava/lang/String;

    const-string v1, "off_duty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->isOnline:Z

    return v0
.end method

.method public isRobot()Z
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/Agent;->privilege:Ljava/lang/String;

    const-string v1, "bot"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCellphone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->cellphone:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->email:Ljava/lang/String;

    return-void
.end method

.method public setEnterprise_id(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->enterprise_id:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsOnline(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->isOnline:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPrivilege(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->privilege:Ljava/lang/String;

    return-void
.end method

.method public setPublic_cellphone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->public_cellphone:Ljava/lang/String;

    return-void
.end method

.method public setPublic_email(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->public_email:Ljava/lang/String;

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->qq:Ljava/lang/String;

    return-void
.end method

.method public setRealname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->realname:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->signature:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->status:Ljava/lang/String;

    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->telephone:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->token:Ljava/lang/String;

    return-void
.end method

.method public setWeixin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/Agent;->weixin:Ljava/lang/String;

    return-void
.end method
