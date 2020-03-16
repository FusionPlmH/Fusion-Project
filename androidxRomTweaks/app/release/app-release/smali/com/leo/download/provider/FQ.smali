.class public Lcom/leo/download/provider/FQ;
.super Ljava/lang/Object;
.source "FQ.java"


# instance fields
.field private ChangeLog:Ljava/lang/String;

.field private OTA:Ljava/lang/String;

.field private OtaPush:Ljava/lang/String;

.field private ROMName:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/download/provider/FQ;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/download/provider/FQ;->OTA:Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/download/provider/FQ;->ChangeLog:Ljava/lang/String;

    iput-object p4, p0, Lcom/leo/download/provider/FQ;->ROMName:Ljava/lang/String;

    iput-object p5, p0, Lcom/leo/download/provider/FQ;->OtaPush:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChangeLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/FQ;->ChangeLog:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/FQ;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOTA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/FQ;->OTA:Ljava/lang/String;

    return-object v0
.end method

.method public getOtaPush()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/FQ;->OtaPush:Ljava/lang/String;

    return-object v0
.end method

.method public getROMName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/FQ;->ROMName:Ljava/lang/String;

    return-object v0
.end method

.method public setChangeLog(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/FQ;->ChangeLog:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/FQ;->name:Ljava/lang/String;

    return-void
.end method

.method public setOTA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/FQ;->OTA:Ljava/lang/String;

    return-void
.end method

.method public setOtaPush(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/FQ;->OtaPush:Ljava/lang/String;

    return-void
.end method

.method public setROMName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/FQ;->ROMName:Ljava/lang/String;

    return-void
.end method
