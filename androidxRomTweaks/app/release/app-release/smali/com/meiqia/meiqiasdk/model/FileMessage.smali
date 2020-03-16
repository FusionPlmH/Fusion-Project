.class public Lcom/meiqia/meiqiasdk/model/FileMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "FileMessage.java"


# static fields
.field public static final FILE_STATE_DOWNLOADING:I = 0x1

.field public static final FILE_STATE_EXPIRED:I = 0x4

.field public static final FILE_STATE_FAILED:I = 0x3

.field public static final FILE_STATE_FINISH:I = 0x0

.field public static final FILE_STATE_NOT_EXIST:I = 0x2


# instance fields
.field private extra:Ljava/lang/String;

.field private fileState:I

.field private localPath:Ljava/lang/String;

.field private progress:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setItemViewType(I)V

    const-string v0, "file"

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setContentType(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->fileState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/FileMessage;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getFileState()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->fileState:I

    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->progress:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->extra:Ljava/lang/String;

    return-void
.end method

.method public setFileState(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->fileState:I

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->progress:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;->url:Ljava/lang/String;

    return-void
.end method
