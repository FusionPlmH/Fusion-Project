.class public Lcom/leo/salt/down/download/DownloadProgressHandler;
.super Ljava/lang/Object;
.source "DownloadProgressHandler.java"


# instance fields
.field private childTaskCount:I

.field private context:Landroid/content/Context;

.field private currentLength:I

.field private downloadCallback:Lcom/leo/salt/down/callback/DownloadCallback;

.field private downloadData:Lcom/leo/salt/down/data/DownloadData;

.field private fileTask:Lcom/leo/salt/down/download/FileTask;

.field private isNeedRestart:Z

.field private isSupportRange:Z

.field private lastProgressTime:J

.field private mCurrentState:I

.field private mHandler:Landroid/os/Handler;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private tempChildTaskCount:I

.field private totalLength:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/leo/salt/down/data/DownloadData;Lcom/leo/salt/down/callback/DownloadCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->mCurrentState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->currentLength:I

    iput v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->totalLength:I

    iput v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->tempChildTaskCount:I

    new-instance v0, Lcom/leo/salt/down/download/DownloadProgressHandler$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/down/download/DownloadProgressHandler$1;-><init>(Lcom/leo/salt/down/download/DownloadProgressHandler;)V

    iput-object v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->downloadCallback:Lcom/leo/salt/down/callback/DownloadCallback;

    invoke-virtual {p2}, Lcom/leo/salt/down/data/DownloadData;->getUrl()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->url:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/leo/salt/down/data/DownloadData;->getPath()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->path:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/leo/salt/down/data/DownloadData;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/leo/salt/down/data/DownloadData;->getChildTaskCount()I

    move-result p3

    iput p3, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->childTaskCount:I

    invoke-static {p1}, Lcom/leo/salt/down/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/db/Db;

    move-result-object p1

    iget-object p3, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->url:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/leo/salt/down/db/Db;->getData(Ljava/lang/String;)Lcom/leo/salt/down/data/DownloadData;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    iput-object p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->downloadData:Lcom/leo/salt/down/data/DownloadData;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/down/download/DownloadProgressHandler;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->mCurrentState:I

    return p0
.end method

.method static synthetic access$002(Lcom/leo/salt/down/download/DownloadProgressHandler;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->mCurrentState:I

    return p1
.end method

.method static synthetic access$100(Lcom/leo/salt/down/download/DownloadProgressHandler;)Lcom/leo/salt/down/data/DownloadData;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->downloadData:Lcom/leo/salt/down/data/DownloadData;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leo/salt/down/download/DownloadProgressHandler;)Lcom/leo/salt/down/callback/DownloadCallback;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->downloadCallback:Lcom/leo/salt/down/callback/DownloadCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/leo/salt/down/download/DownloadProgressHandler;)J
    .locals 2

    iget-wide v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->lastProgressTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/leo/salt/down/download/DownloadProgressHandler;J)J
    .locals 0

    iput-wide p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->lastProgressTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/leo/salt/down/download/DownloadProgressHandler;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->tempChildTaskCount:I

    return p0
.end method

.method static synthetic access$1202(Lcom/leo/salt/down/download/DownloadProgressHandler;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->tempChildTaskCount:I

    return p1
.end method

.method static synthetic access$1208(Lcom/leo/salt/down/download/DownloadProgressHandler;)I
    .locals 2

    iget v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->tempChildTaskCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->tempChildTaskCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/leo/salt/down/download/DownloadProgressHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->isNeedRestart:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/leo/salt/down/download/DownloadProgressHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->isNeedRestart:Z

    return p1
.end method

.method static synthetic access$200(Lcom/leo/salt/down/download/DownloadProgressHandler;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->totalLength:I

    return p0
.end method

.method static synthetic access$202(Lcom/leo/salt/down/download/DownloadProgressHandler;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->totalLength:I

    return p1
.end method

.method static synthetic access$300(Lcom/leo/salt/down/download/DownloadProgressHandler;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->currentLength:I

    return p0
.end method

.method static synthetic access$302(Lcom/leo/salt/down/download/DownloadProgressHandler;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->currentLength:I

    return p1
.end method

.method static synthetic access$400(Lcom/leo/salt/down/download/DownloadProgressHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->isSupportRange:Z

    return p0
.end method

.method static synthetic access$402(Lcom/leo/salt/down/download/DownloadProgressHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->isSupportRange:Z

    return p1
.end method

.method static synthetic access$500(Lcom/leo/salt/down/download/DownloadProgressHandler;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->childTaskCount:I

    return p0
.end method

.method static synthetic access$502(Lcom/leo/salt/down/download/DownloadProgressHandler;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->childTaskCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/leo/salt/down/download/DownloadProgressHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leo/salt/down/download/DownloadProgressHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leo/salt/down/download/DownloadProgressHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/leo/salt/down/download/DownloadProgressHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->isNeedRestart:Z

    iget p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->mCurrentState:I

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->fileTask:Lcom/leo/salt/down/download/FileTask;

    invoke-virtual {p1}, Lcom/leo/salt/down/download/FileTask;->cancel()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1003

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1008

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1005

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->mCurrentState:I

    const/16 v1, 0x1005

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->fileTask:Lcom/leo/salt/down/download/FileTask;

    invoke-virtual {v0}, Lcom/leo/salt/down/download/FileTask;->destroy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->mCurrentState:I

    return v0
.end method

.method public getDownloadData()Lcom/leo/salt/down/data/DownloadData;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->downloadData:Lcom/leo/salt/down/data/DownloadData;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public pause()V
    .locals 2

    iget v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->mCurrentState:I

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->fileTask:Lcom/leo/salt/down/download/FileTask;

    invoke-virtual {v0}, Lcom/leo/salt/down/download/FileTask;->pause()V

    :cond_0
    return-void
.end method

.method public setFileTask(Lcom/leo/salt/down/download/FileTask;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/down/download/DownloadProgressHandler;->fileTask:Lcom/leo/salt/down/download/FileTask;

    return-void
.end method
