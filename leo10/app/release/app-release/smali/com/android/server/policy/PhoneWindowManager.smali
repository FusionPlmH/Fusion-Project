.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$SkipTracks;,
        Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;
    }
.end annotation


# static fields
.field static final PENDING_KEY_NULL:I = -0x1

.field private static final SALT_UPDATE_NAV_GESTURE_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfTkFWX0dFU1RVUkVfU0VUVElOR1M="

.field private static final SALT_UPDATE_STKP_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfU1RLUF9TRVRUSU5HUw=="

.field static final SHOW_STARTING_ANIMATIONS:Z = true


# instance fields
.field isKeyguardOn:Z

.field volatile mBackKeyHandled:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mContext:Landroid/content/Context;

.field private mDoubleTapOnHomeBehavior:I

.field mHomeConsumed:Z

.field public mLeoNavBarHeightLandscape:Z

.field public mLeoNavBarHeightPortrait:Z

.field public mLeoNavBarLandscape:I

.field public mLeoNavBarPortrait:I

.field mLongPressOnBackBehavior:I

.field mPowerManager:Landroid/os/PowerManager;

.field public mSaltManager:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

.field mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field public mSkipTrackEnabled:Z

.field public mSkipTracks:Lcom/android/server/policy/PhoneWindowManager$SkipTracks;

.field mVibrator:Landroid/os/Vibrator;

.field mWindowManagerDrawComplete:Z

.field mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOn:Z

    return-void
.end method

.method private backLongPress()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalHwKeysEnableAction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSaltManager:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltLongPressbackAction()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPressDefault()V

    :goto_0
    return-void
.end method

.method private backLongPressDefault()V
    .locals 0

    return-void
.end method

.method private powerMultiPressAction(JZI)V
    .locals 0

    return-void
.end method

.method private setLeoPowerDoubleAction(JZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerEnableAction:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSaltManager:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPowerDoubleAction()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    :goto_0
    return-void
.end method

.method private setLeoWindowManager()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSaltManager:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSkipTracks:Lcom/android/server/policy/PhoneWindowManager$SkipTracks;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateNavBarHeight()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSkipTracks:Lcom/android/server/policy/PhoneWindowManager$SkipTracks;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->updateSkipTracksOptions()V

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;

    invoke-direct {v0, p0, p0}, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->mLeoGlobalService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "U0FMVF9VUERBVEVfTkFWX0dFU1RVUkVfU0VUVElOR1M="

    invoke-static {v2}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "U0FMVF9VUERBVEVfU1RLUF9TRVRUSU5HUw=="

    invoke-static {v2}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private toggleRecentApps()V
    .locals 0

    return-void
.end method


# virtual methods
.method LongPressOnHome(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalHwKeysEnableAction:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSaltManager:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltLongHomeAction()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    :goto_0
    return-void
.end method

.method public addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 0

    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 0

    return-void
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    return-void
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 0

    return-void
.end method

.method public canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canDismissBootAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 0

    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 0

    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 0

    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finishedGoingToSleep(I)V
    .locals 0

    return-void
.end method

.method public finishedWakingUp()V
    .locals 0

    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy$-CC;->$default$getLayoutHintLw(Lcom/android/server/policy/WindowManagerPolicy;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNavBarPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public synthetic getSubWindowLayerFromTypeLw(I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/policy/WindowManagerPolicy$-CC;->$default$getSubWindowLayerFromTypeLw(Lcom/android/server/policy/WindowManagerPolicy;I)I

    move-result p1

    return p1
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUserRotationMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getWindowLayerFromTypeLw(I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/policy/WindowManagerPolicy$-CC;->$default$getWindowLayerFromTypeLw(Lcom/android/server/policy/WindowManagerPolicy;I)I

    move-result p1

    return p1
.end method

.method public synthetic getWindowLayerFromTypeLw(IZ)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy$-CC;->$default$getWindowLayerFromTypeLw(Lcom/android/server/policy/WindowManagerPolicy;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/policy/WindowManagerPolicy$-CC;->$default$getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p1

    return p1
.end method

.method handleLongPressOnHome(I)V
    .locals 0

    return-void
.end method

.method public handleLongPressOnRecent(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalHwKeysEnableAction:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSaltManager:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltLongRecentAction()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleLongPressOnRecent(I)V

    :goto_0
    return-void
.end method

.method public handlecancelPreloadRecentApps()V
    .locals 0

    return-void
.end method

.method public hasNavigationBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideBootMessages()V
    .locals 0

    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0

    return-void
.end method

.method public intVibrator(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOn:Z

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDockSideAllowed(IIIII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isGestureButtonEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGestureButtonRegion(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isKeyguardDrawnLw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isKeyguardLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardOccluded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardTrustedLw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNavBarForcedShownLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isScreenOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowingDreamLw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 0

    return-void
.end method

.method public keyguardOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public launchBixbyHome()V
    .locals 0

    return-void
.end method

.method public launchHomeFromHotKey()V
    .locals 0

    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 0

    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 0

    return-void
.end method

.method public okToAnimate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 0

    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .locals 0

    return-void
.end method

.method public synthetic onOverlayChangedLw()V
    .locals 0

    invoke-static {p0}, Lcom/android/server/policy/WindowManagerPolicy$-CC;->$default$onOverlayChangedLw(Lcom/android/server/policy/WindowManagerPolicy;)V

    return-void
.end method

.method public onSystemUiStarted()V
    .locals 0

    return-void
.end method

.method public performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    return-void
.end method

.method public requestUserActivityNotification()V
    .locals 0

    return-void
.end method

.method public screenRecordAction(I)V
    .locals 0

    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    return-void
.end method

.method public screenTurnedOn()V
    .locals 0

    return-void
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 0

    return-void
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0

    return-void
.end method

.method public selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public selectRotationAnimationLw([I)V
    .locals 0

    return-void
.end method

.method public sendCustomAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public setAodShowing(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCurrentUserLw(I)V
    .locals 0

    return-void
.end method

.method public synthetic setDismissImeOnBackKeyPressed(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/policy/WindowManagerPolicy$-CC;->$default$setDismissImeOnBackKeyPressed(Lcom/android/server/policy/WindowManagerPolicy;Z)V

    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 0

    return-void
.end method

.method public setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    return-void
.end method

.method public setLeoBixbyClickAction()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSaltManager:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getLeoBixbyAction()I

    move-result v0

    return v0
.end method

.method public setLeoBixbyCustomAction()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyEnableAction:I

    return v0
.end method

.method public setLeoBixbyLongPressAction()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSaltManager:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltBixbyLongPressAction()I

    move-result v0

    return v0
.end method

.method public setLeoLongPressOnPowerAction()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerEnableAction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSaltManager:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPowerLongAction()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    :goto_0
    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .locals 0

    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .locals 0

    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .locals 0

    return-void
.end method

.method public setRotationLw(I)V
    .locals 0

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 0

    return-void
.end method

.method public shouldRotateSeamlessly(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 0

    return-void
.end method

.method public showGlobalActions()V
    .locals 0

    return-void
.end method

.method public showGlobalActionsInternal()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalEnablePowerGlobalActionsStyle:Z

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getSafetyVersion()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->SecurityCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->EnablePowerGlobalService:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternalDefault()V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->PowerMenuService(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternalDefault()V

    :goto_1
    return-void
.end method

.method showGlobalActionsInternal(Z)V
    .locals 0

    return-void
.end method

.method showGlobalActionsInternalDefault()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(Z)V

    return-void
.end method

.method public showRecentApps()V
    .locals 0

    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 0

    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 0

    return-void
.end method

.method public startedWakingUp()V
    .locals 0

    return-void
.end method

.method public systemBooted()V
    .locals 0

    return-void
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public takeScreenshot(I)V
    .locals 0

    return-void
.end method

.method public updateNavBarHeight()V
    .locals 2

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getSafetyVersion()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->SecurityCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalAmberLeoNavBarHeightLandscape:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLeoNavBarHeightLandscape:Z

    sget-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalAmberLeoNavBarHeightPortrait:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLeoNavBarHeightPortrait:Z

    sget v0, Lcom/android/server/utils/salt/SaltServerFrame;->mNavBar:F

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalAmberLeoLandscapeNavBarHeight:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLeoNavBarLandscape:I

    sget v0, Lcom/android/server/utils/salt/SaltServerFrame;->mNavBar:F

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalAmberLeoPortraitNavBarHeight:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLeoNavBarPortrait:I

    goto :goto_0

    :cond_0
    const-string v0, ""

    const-string v1, "\u672a\u6350\u8d60"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public userActivity()V
    .locals 0

    return-void
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
