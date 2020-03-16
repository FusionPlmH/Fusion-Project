.class public Lcom/android/server/policy/PhoneWindowManager$SkipTracks;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SkipTracks"
.end annotation


# static fields
.field private static final KEYCODE_MEDIA_NEXT:I = 0x57

.field private static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field private static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field private static final KEYCODE_VOLUME_UP:I = 0x18


# instance fields
.field mContext:Landroid/content/Context;

.field public mDoubleClickPlayStop:Z

.field public mDoubleTapPending:Z

.field public mDoubleTapRunnable:Ljava/lang/Runnable;

.field public mDoubleTapTimeOut:J

.field public mHandler:Landroid/os/Handler;

.field public mIsLongVol:Z

.field public mLongPressRunnable:Ljava/lang/Runnable;

.field public mLongPressTime:J

.field public mNumTaps:I

.field public mSkipTrackEnabled:Z

.field public mTelecomManager:Landroid/telecom/TelecomManager;

.field mVibrationEffect:Landroid/os/VibrationEffect;

.field mVibrator:Landroid/os/Vibrator;

.field public mVolKeyCode:I

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleClickPlayStop:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapPending:Z

    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapTimeOut:J

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mIsLongVol:Z

    iput-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mLongPressTime:J

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mNumTaps:I

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mSkipTrackEnabled:Z

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->initMod()V

    return-void
.end method

.method private doNextPreviousTrack()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->vibrate()V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mVolKeyCode:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ne v0, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->getAudioService()Landroid/media/IAudioService;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3}, Landroid/media/IAudioService;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "Grx  "

    const-string v4, "GRX: Long press failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    const-string v4, "com.spotify.music"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    const/16 v0, 0x57

    goto :goto_3

    :cond_3
    const/16 v0, 0x58

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->sendMediaButton(I)V

    return-void

    :cond_4
    new-instance v1, Landroid/content/Intent;

    if-eqz v0, :cond_5

    const-string v0, "com.spotify.mobile.android.ui.widget.NEXT"

    goto :goto_4

    :cond_5
    const-string v0, "com.spotify.mobile.android.ui.widget.PREVIOUS"

    :goto_4
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method private getActiveStream()I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .locals 1

    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    return-object v0
.end method

.method private initMod()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->updateSkipTracksOptions()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mVibrationEffect:Landroid/os/VibrationEffect;

    new-instance v0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$SkipTracks$gLIbx6cYBUcmFbN5EMMpuDR44Mc;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$SkipTracks$gLIbx6cYBUcmFbN5EMMpuDR44Mc;-><init>(Lcom/android/server/policy/PhoneWindowManager$SkipTracks;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mLongPressRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$SkipTracks$h7twJ-xRP-GV-IiqYlQbhzgExEE;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$SkipTracks$h7twJ-xRP-GV-IiqYlQbhzgExEE;-><init>(Lcom/android/server/policy/PhoneWindowManager$SkipTracks;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private isInPhoneCall()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mTelecomManager:Landroid/telecom/TelecomManager;

    const/4 v0, 0x0

    return v0
.end method

.method private sendMediaButton(I)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v9, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1, v9}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x1

    invoke-static {v9, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    return-void
.end method


# virtual methods
.method public finishDoubleTap()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mNumTaps:I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapPending:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->vibrate()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->startStopMusic()V

    return-void
.end method

.method public finishVolTap()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mNumTaps:I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapPending:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mVolKeyCode:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->increaseVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public handleVolKeyUp()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleClickPlayStop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mNumTaps:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mNumTaps:I

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapPending:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapTimeOut:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mVolKeyCode:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->increaseVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public increaseVolume(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->getActiveStream()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android"

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$initMod$0$PhoneWindowManager$SkipTracks()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mIsLongVol:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->doNextPreviousTrack()V

    return-void
.end method

.method public synthetic lambda$initMod$1$PhoneWindowManager$SkipTracks()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapPending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->finishVolTap()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mNumTaps:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->finishDoubleTap()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->finishVolTap()V

    :goto_0
    return-void
.end method

.method public shouldKeyBeStopped(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->isInPhoneCall()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mVolKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mIsLongVol:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mIsLongVol:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mIsLongVol:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->handleVolKeyUp()V

    :goto_0
    return v1

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mIsLongVol:Z

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mLongPressRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mLongPressTime:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method

.method public startStopMusic()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Grx  "

    const-string v2, "Casque Double Tap"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "com.spotify.music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/16 v0, 0x55

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->sendMediaButton(I)V

    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.spotify.mobile.android.ui.widget.PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public updateSkipTracksOptions()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "skip_tracks"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mSkipTrackEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mSkipTrackEnabled:Z

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSkipTrackEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    const-string v3, "doble_click_skip_tracks"

    invoke-static {v0, v3, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleClickPlayStop:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    const/16 v1, 0x1f4

    const-string v2, "timeout_skip_tracks"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mLongPressTime:J

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    const-string v2, "timeout_dc_skip_tracks"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mDoubleTapTimeOut:J

    return-void
.end method

.method public vibrate()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    const-string v1, "skip_tracks_vibrate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->mContext:Landroid/content/Context;

    const-string v3, "skip_tracks_vibrate_level"

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/salt/SaltServerFrame;->setLeoHaptics(Landroid/content/Context;II)V

    return-void
.end method
