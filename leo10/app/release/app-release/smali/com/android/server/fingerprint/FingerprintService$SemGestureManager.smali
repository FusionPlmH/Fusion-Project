.class Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;
.super Landroid/database/ContentObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemGestureManager"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mIsEnabledFpMotion:Z

.field mIsEnabledGestureForSpay:Z

.field mIsEnabledGestureForStatusBar:Z

.field mSemStatusBarManager:Landroid/app/SemStatusBarManager;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private controlStatusBar(Z)V
    .locals 0

    return-void
.end method

.method private launchSamsungPay()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getSwipeActions()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    const-string v0, "FingerprintService"

    const-string v1, " \u4e0d\u54b8\u7684\u76d0\u5df4 Fingerprint Gesture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerprintDownAction:I

    sput v0, Lcom/android/server/fingerprint/FingerprintService;->mFpDownAction:I

    sget v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerprintUPAction:I

    sput v0, Lcom/android/server/fingerprint/FingerprintService;->mFpUpAction:I

    return-void
.end method

.method handleGestureEvent(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$100(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_0

    const-string p1, "handleGestureEvent : skip action because of DeX"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$200(Lcom/android/server/fingerprint/FingerprintService;)V

    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {p1}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcquired : QuickPanel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " \u4e0d\u54b8\u7684\u76d0\u5df4 Fingerprint Gesture"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->getSwipeActions()V

    sget v0, Lcom/android/server/fingerprint/FingerprintService;->mFpUpAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForSpay:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->launchSamsungPay()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setLeoFingerprintSwipeUP(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x4e22

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->getSwipeActions()V

    sget p1, Lcom/android/server/fingerprint/FingerprintService;->mFpDownAction:I

    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setLeoFingerprintSwipeDown(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setLeoFingerprintServiceAction(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setLeoFingerprintSwipeDown(I)V
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setFingerprintDownAction:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setLeoFingerprintServiceAction(Ljava/lang/String;I)V

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->controlStatusBar(Z)V

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->controlStatusBar(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLeoFingerprintSwipeUP(I)V
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setFingerprintUPAction:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setLeoFingerprintServiceAction(Ljava/lang/String;I)V

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->controlStatusBar(Z)V

    :cond_0
    return-void
.end method
