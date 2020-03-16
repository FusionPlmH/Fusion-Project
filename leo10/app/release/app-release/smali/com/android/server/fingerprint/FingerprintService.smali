.class public Lcom/android/server/fingerprint/FingerprintService;
.super Landroid/os/SystemService;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "FingerprintService"

.field static mFpDownAction:I

.field static mFpUpAction:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/SystemService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->semIsDesktopMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method private semIsDesktopMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private userActivity()V
    .locals 0

    return-void
.end method
