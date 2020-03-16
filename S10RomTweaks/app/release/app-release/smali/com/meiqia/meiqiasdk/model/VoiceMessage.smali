.class public Lcom/meiqia/meiqiasdk/model/VoiceMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "VoiceMessage.java"


# static fields
.field public static final NO_DURATION:I = -0x1


# instance fields
.field private duration:I

.field private localPath:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->duration:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->setItemViewType(I)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->duration:I

    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->duration:I

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->url:Ljava/lang/String;

    return-void
.end method
