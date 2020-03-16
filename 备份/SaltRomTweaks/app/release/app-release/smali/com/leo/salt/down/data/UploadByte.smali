.class public Lcom/leo/salt/down/data/UploadByte;
.super Ljava/lang/Object;
.source "UploadByte.java"


# instance fields
.field private bytes:[B

.field private filename:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/down/data/UploadByte;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/salt/down/data/UploadByte;->filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/salt/down/data/UploadByte;->bytes:[B

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/down/data/UploadByte;->bytes:[B

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/down/data/UploadByte;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/down/data/UploadByte;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setBytes([B)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/down/data/UploadByte;->bytes:[B

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/down/data/UploadByte;->filename:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/down/data/UploadByte;->name:Ljava/lang/String;

    return-void
.end method
