.class public Landroid/app/AAActivityManager;
.super Ljava/lang/Object;
.source "AAActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AAActivityManager$RunningAppProcessInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Landroid/app/IActivityManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getRunningAppProcesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AAActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
