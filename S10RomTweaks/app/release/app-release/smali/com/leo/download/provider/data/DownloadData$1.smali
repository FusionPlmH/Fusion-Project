.class final Lcom/leo/download/provider/data/DownloadData$1;
.super Ljava/lang/Object;
.source "DownloadData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/download/provider/data/DownloadData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/leo/download/provider/data/DownloadData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/leo/download/provider/data/DownloadData;
    .locals 1

    new-instance v0, Lcom/leo/download/provider/data/DownloadData;

    invoke-direct {v0, p1}, Lcom/leo/download/provider/data/DownloadData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/download/provider/data/DownloadData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/leo/download/provider/data/DownloadData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/leo/download/provider/data/DownloadData;
    .locals 0

    new-array p1, p1, [Lcom/leo/download/provider/data/DownloadData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/download/provider/data/DownloadData$1;->newArray(I)[Lcom/leo/download/provider/data/DownloadData;

    move-result-object p1

    return-object p1
.end method
