.class public Lcom/leo/download/provider/download/DBuilder;
.super Ljava/lang/Object;
.source "DBuilder.java"


# instance fields
.field private childTaskCount:I

.field private context:Landroid/content/Context;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/download/provider/download/DBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/leo/download/provider/download/DownloadManger;
    .locals 5

    iget-object v0, p0, Lcom/leo/download/provider/download/DBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/download/DownloadManger;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/download/provider/download/DBuilder;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/leo/download/provider/download/DBuilder;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/leo/download/provider/download/DBuilder;->name:Ljava/lang/String;

    iget v4, p0, Lcom/leo/download/provider/download/DBuilder;->childTaskCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/leo/download/provider/download/DownloadManger;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public childTaskCount(I)Lcom/leo/download/provider/download/DBuilder;
    .locals 0

    iput p1, p0, Lcom/leo/download/provider/download/DBuilder;->childTaskCount:I

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/download/DBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public path(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/download/DBuilder;->path:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/download/DBuilder;->url:Ljava/lang/String;

    return-object p0
.end method
