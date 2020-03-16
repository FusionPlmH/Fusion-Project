.class public Landroid/app/AAActivityManager$RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "AAActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AAActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningAppProcessInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AAActivityManager$RunningAppProcessInfo$Importance;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AAActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CANT_SAVE_STATE:I = 0x1

.field public static final FLAG_HAS_ACTIVITIES:I = 0x4

.field public static final FLAG_PERSISTENT:I = 0x2

.field public static final IMPORTANCE_BACKGROUND:I = 0x190

.field public static final IMPORTANCE_CACHED:I = 0x190

.field public static final IMPORTANCE_CANT_SAVE_STATE:I = 0x15e

.field public static final IMPORTANCE_CANT_SAVE_STATE_PRE_26:I = 0xaa

.field public static final IMPORTANCE_EMPTY:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANCE_FOREGROUND:I = 0x64

.field public static final IMPORTANCE_FOREGROUND_SERVICE:I = 0x7d

.field public static final IMPORTANCE_GONE:I = 0x3e8

.field public static final IMPORTANCE_PERCEPTIBLE:I = 0xe6

.field public static final IMPORTANCE_PERCEPTIBLE_PRE_26:I = 0x82

.field public static final IMPORTANCE_SERVICE:I = 0x12c

.field public static final IMPORTANCE_TOP_SLEEPING:I = 0x145

.field public static final IMPORTANCE_TOP_SLEEPING_PRE_28:I = 0x96
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANCE_VISIBLE:I = 0xc8

.field public static final REASON_PROVIDER_IN_USE:I = 0x1

.field public static final REASON_SERVICE_IN_USE:I = 0x2

.field public static final REASON_UNKNOWN:I


# instance fields
.field public flags:I

.field public importance:I

.field public importanceReasonCode:I

.field public importanceReasonComponent:Landroid/content/ComponentName;

.field public importanceReasonImportance:I

.field public importanceReasonPid:I

.field public lastTrimLevel:I

.field public lru:I

.field public pid:I

.field public pkgList:[Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public processState:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AAActivityManager$RunningAppProcessInfo$1;

    invoke-direct {v0}, Landroid/app/AAActivityManager$RunningAppProcessInfo$1;-><init>()V

    sput-object v0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importance:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/AAActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/AAActivityManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AAActivityManager$RunningAppProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->pid:I

    iput-object p3, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    return-void
.end method

.method public static importanceToProcState(I)I
    .locals 0

    return p0
.end method

.method public static procStateToImportance(I)I
    .locals 0

    return p0
.end method

.method public static procStateToImportanceForClient(ILandroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, p1}, Landroid/app/AAActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result p0

    return p0
.end method

.method public static procStateToImportanceForTargetSdk(II)I
    .locals 1

    invoke-static {p0}, Landroid/app/AAActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result p0

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_3

    const/16 p1, 0xe6

    if-eq p0, p1, :cond_2

    const/16 p1, 0x145

    if-eq p0, p1, :cond_1

    const/16 p1, 0x15e

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xaa

    return p0

    :cond_1
    const/16 p0, 0x96

    return p0

    :cond_2
    const/16 p0, 0x82

    :cond_3
    :goto_0
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->processState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-static {p2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/AAActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
