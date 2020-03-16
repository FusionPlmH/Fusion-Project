.class public Lcom/leo/salt/update/FQ;
.super Ljava/lang/Object;
.source "FQ.java"


# instance fields
.field private ChangeLog:Ljava/lang/String;

.field private OTA:Ljava/lang/String;

.field private OtaPush:Ljava/lang/String;

.field private OtaStopDate:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/update/FQ;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/salt/update/FQ;->content:Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/salt/update/FQ;->time:Ljava/lang/String;

    iput-object p4, p0, Lcom/leo/salt/update/FQ;->OTA:Ljava/lang/String;

    iput-object p5, p0, Lcom/leo/salt/update/FQ;->ChangeLog:Ljava/lang/String;

    iput-object p6, p0, Lcom/leo/salt/update/FQ;->OtaStopDate:Ljava/lang/String;

    iput-object p7, p0, Lcom/leo/salt/update/FQ;->OtaPush:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChangeLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/FQ;->ChangeLog:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/FQ;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/FQ;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOTA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/FQ;->OTA:Ljava/lang/String;

    return-object v0
.end method

.method public getOtaPush()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/FQ;->OtaPush:Ljava/lang/String;

    return-object v0
.end method

.method public getOtaStopDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/FQ;->OtaStopDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/FQ;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setChangeLog(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/FQ;->ChangeLog:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/FQ;->content:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/FQ;->name:Ljava/lang/String;

    return-void
.end method

.method public setOTA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/FQ;->OTA:Ljava/lang/String;

    return-void
.end method

.method public setOtaPush(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/FQ;->OtaPush:Ljava/lang/String;

    return-void
.end method

.method public setOtaStopDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/FQ;->OtaStopDate:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/FQ;->time:Ljava/lang/String;

    return-void
.end method
