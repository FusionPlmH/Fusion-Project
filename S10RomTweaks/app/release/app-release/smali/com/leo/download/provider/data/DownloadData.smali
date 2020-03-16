.class public Lcom/leo/download/provider/data/DownloadData;
.super Ljava/lang/Object;
.source "DownloadData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/leo/download/provider/data/DownloadData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private childTaskCount:I

.field private currentLength:I

.field private date:J

.field private lastModify:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private percentage:F

.field private status:I

.field private totalLength:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/leo/download/provider/data/DownloadData$1;

    invoke-direct {v0}, Lcom/leo/download/provider/data/DownloadData$1;-><init>()V

    sput-object v0, Lcom/leo/download/provider/data/DownloadData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/leo/download/provider/data/DownloadData;->status:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/leo/download/provider/data/DownloadData;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/download/provider/data/DownloadData;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/download/provider/data/DownloadData;->path:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/download/provider/data/DownloadData;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/leo/download/provider/data/DownloadData;->currentLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/leo/download/provider/data/DownloadData;->totalLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/leo/download/provider/data/DownloadData;->percentage:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/leo/download/provider/data/DownloadData;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/leo/download/provider/data/DownloadData;->childTaskCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/leo/download/provider/data/DownloadData;->date:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/download/provider/data/DownloadData;->lastModify:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/leo/download/provider/data/DownloadData;->status:I

    iput-object p1, p0, Lcom/leo/download/provider/data/DownloadData;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/download/provider/data/DownloadData;->path:Ljava/lang/String;

    iput p3, p0, Lcom/leo/download/provider/data/DownloadData;->childTaskCount:I

    iput p5, p0, Lcom/leo/download/provider/data/DownloadData;->currentLength:I

    const/16 p1, 0x1001

    iput p1, p0, Lcom/leo/download/provider/data/DownloadData;->status:I

    iput-object p4, p0, Lcom/leo/download/provider/data/DownloadData;->name:Ljava/lang/String;

    iput p6, p0, Lcom/leo/download/provider/data/DownloadData;->totalLength:I

    iput-object p7, p0, Lcom/leo/download/provider/data/DownloadData;->lastModify:Ljava/lang/String;

    iput-wide p8, p0, Lcom/leo/download/provider/data/DownloadData;->date:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/leo/download/provider/data/DownloadData;->status:I

    iput-object p1, p0, Lcom/leo/download/provider/data/DownloadData;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/download/provider/data/DownloadData;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/download/provider/data/DownloadData;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/leo/download/provider/data/DownloadData;->status:I

    iput-object p1, p0, Lcom/leo/download/provider/data/DownloadData;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/download/provider/data/DownloadData;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/download/provider/data/DownloadData;->name:Ljava/lang/String;

    iput p4, p0, Lcom/leo/download/provider/data/DownloadData;->childTaskCount:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChildTaskCount()I
    .locals 1

    iget v0, p0, Lcom/leo/download/provider/data/DownloadData;->childTaskCount:I

    return v0
.end method

.method public getCurrentLength()I
    .locals 1

    iget v0, p0, Lcom/leo/download/provider/data/DownloadData;->currentLength:I

    return v0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/leo/download/provider/data/DownloadData;->date:J

    return-wide v0
.end method

.method public getLastModify()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/data/DownloadData;->lastModify:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/data/DownloadData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/data/DownloadData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()F
    .locals 1

    iget v0, p0, Lcom/leo/download/provider/data/DownloadData;->percentage:F

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/leo/download/provider/data/DownloadData;->status:I

    return v0
.end method

.method public getTotalLength()I
    .locals 1

    iget v0, p0, Lcom/leo/download/provider/data/DownloadData;->totalLength:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/download/provider/data/DownloadData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setChildTaskCount(I)V
    .locals 0

    iput p1, p0, Lcom/leo/download/provider/data/DownloadData;->childTaskCount:I

    return-void
.end method

.method public setCurrentLength(I)V
    .locals 0

    iput p1, p0, Lcom/leo/download/provider/data/DownloadData;->currentLength:I

    return-void
.end method

.method public setDate(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/leo/download/provider/data/DownloadData;->date:J

    return-void
.end method

.method public setLastModify(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/data/DownloadData;->lastModify:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/data/DownloadData;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/data/DownloadData;->path:Ljava/lang/String;

    return-void
.end method

.method public setPercentage(F)V
    .locals 0

    iput p1, p0, Lcom/leo/download/provider/data/DownloadData;->percentage:F

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/leo/download/provider/data/DownloadData;->status:I

    return-void
.end method

.method public setTotalLength(I)V
    .locals 0

    iput p1, p0, Lcom/leo/download/provider/data/DownloadData;->totalLength:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/data/DownloadData;->url:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/leo/download/provider/data/DownloadData;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/leo/download/provider/data/DownloadData;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/leo/download/provider/data/DownloadData;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/leo/download/provider/data/DownloadData;->currentLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/leo/download/provider/data/DownloadData;->totalLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/leo/download/provider/data/DownloadData;->percentage:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/leo/download/provider/data/DownloadData;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/leo/download/provider/data/DownloadData;->childTaskCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/leo/download/provider/data/DownloadData;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/leo/download/provider/data/DownloadData;->lastModify:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
