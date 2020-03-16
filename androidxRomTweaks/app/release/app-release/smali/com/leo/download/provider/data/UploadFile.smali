.class public Lcom/leo/download/provider/data/UploadFile;
.super Ljava/lang/Object;
.source "UploadFile.java"


# instance fields
.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/download/provider/data/UploadFile;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/download/provider/data/UploadFile;->filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/download/provider/data/UploadFile;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/data/UploadFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/data/UploadFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/data/UploadFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/data/UploadFile;->file:Ljava/io/File;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/data/UploadFile;->filename:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/data/UploadFile;->name:Ljava/lang/String;

    return-void
.end method
