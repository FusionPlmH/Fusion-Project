.class public Lcom/leo/salt/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# instance fields
.field private date:Ljava/lang/String;

.field private id:I

.field private image:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/leo/salt/ImageInfo;->id:I

    iput-object p2, p0, Lcom/leo/salt/ImageInfo;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/salt/ImageInfo;->date:Ljava/lang/String;

    iput-object p4, p0, Lcom/leo/salt/ImageInfo;->image:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/ImageInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/ImageInfo;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/ImageInfo;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/ImageInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/ImageInfo;->url:Ljava/lang/String;

    return-object v0
.end method
