.class final Landroid/app/AAActivityManager$RunningAppProcessInfo$1;
.super Ljava/lang/Object;
.source "AAActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AAActivityManager$RunningAppProcessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/AAActivityManager$RunningAppProcessInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/AAActivityManager$RunningAppProcessInfo;
    .locals 2

    new-instance v0, Landroid/app/AAActivityManager$RunningAppProcessInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/AAActivityManager$RunningAppProcessInfo;-><init>(Landroid/os/Parcel;Landroid/app/AAActivityManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/AAActivityManager$RunningAppProcessInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/AAActivityManager$RunningAppProcessInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/AAActivityManager$RunningAppProcessInfo;
    .locals 0

    new-array p1, p1, [Landroid/app/AAActivityManager$RunningAppProcessInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/AAActivityManager$RunningAppProcessInfo$1;->newArray(I)[Landroid/app/AAActivityManager$RunningAppProcessInfo;

    move-result-object p1

    return-object p1
.end method
