.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x28

.field static final TRANSACTION_addMixForPolicy:I = 0x41

.field static final TRANSACTION_addPackage:I = 0x64

.field static final TRANSACTION_adjustStreamVolume:I = 0x6

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x5

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x20

.field static final TRANSACTION_disableRingtoneSync:I = 0x4b

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x3c

.field static final TRANSACTION_dismissVolumePanel:I = 0x78

.field static final TRANSACTION_dispatchFocusChange:I = 0x4d

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0x9

.field static final TRANSACTION_forceVolumeControlStream:I = 0x2e

.field static final TRANSACTION_getActivePlaybackConfigurations:I = 0x4a

.field static final TRANSACTION_getActiveRecordingConfigurations:I = 0x47

.field static final TRANSACTION_getAppDevice:I = 0x58

.field static final TRANSACTION_getAppVolume:I = 0x5a

.field static final TRANSACTION_getAudioServiceConfig:I = 0x55

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x2a

.field static final TRANSACTION_getCurrentAudioFocusPackageName:I = 0x79

.field static final TRANSACTION_getFineVolume:I = 0x60

.field static final TRANSACTION_getFocusRampTimeMs:I = 0x4c

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xf

.field static final TRANSACTION_getMediaVolumeSteps:I = 0x73

.field static final TRANSACTION_getMode:I = 0x1a

.field static final TRANSACTION_getMuteInterval:I = 0x6e

.field static final TRANSACTION_getPinAppInfo:I = 0x61

.field static final TRANSACTION_getPinDevice:I = 0x62

.field static final TRANSACTION_getPrevRingerMode:I = 0x70

.field static final TRANSACTION_getRadioOutputPath:I = 0x75

.field static final TRANSACTION_getRemainingMuteIntervalMs:I = 0x6f

.field static final TRANSACTION_getRingerModeExternal:I = 0x13

.field static final TRANSACTION_getRingerModeInternal:I = 0x14

.field static final TRANSACTION_getRingtonePlayer:I = 0x30

.field static final TRANSACTION_getSelectedAppList:I = 0x63

.field static final TRANSACTION_getStreamMaxVolume:I = 0xe

.field static final TRANSACTION_getStreamMinVolume:I = 0xd

.field static final TRANSACTION_getStreamVolume:I = 0xc

.field static final TRANSACTION_getStreamVolumeForDevice:I = 0x5f

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x31

.field static final TRANSACTION_getUidForDevice:I = 0x56

.field static final TRANSACTION_getVibrateSetting:I = 0x17

.field static final TRANSACTION_handleBluetoothA2dpDeviceConfigChange:I = 0x35

.field static final TRANSACTION_isAlreadyInDB:I = 0x66

.field static final TRANSACTION_isAudioServerRunning:I = 0x53

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x26

.field static final TRANSACTION_isBluetoothScoOn:I = 0x24

.field static final TRANSACTION_isCameraSoundForced:I = 0x37

.field static final TRANSACTION_isFMPlayerActive:I = 0x76

.field static final TRANSACTION_isForceSpeakerOn:I = 0x6b

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x3e

.field static final TRANSACTION_isInAllowedList:I = 0x67

.field static final TRANSACTION_isMasterMute:I = 0xa

.field static final TRANSACTION_isMultiSoundOn:I = 0x5c

.field static final TRANSACTION_isSafeMediaVolumeStateActive:I = 0x69

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x22

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x3b

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x3a

.field static final TRANSACTION_isStreamMute:I = 0x8

.field static final TRANSACTION_isUsingAudio:I = 0x7a

.field static final TRANSACTION_isValidRingerMode:I = 0x15

.field static final TRANSACTION_loadSoundEffects:I = 0x1d

.field static final TRANSACTION_makeBTVolumeSame:I = 0x68

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x39

.field static final TRANSACTION_playSoundEffect:I = 0x1b

.field static final TRANSACTION_playSoundEffectVolume:I = 0x1c

.field static final TRANSACTION_playerAttributes:I = 0x2

.field static final TRANSACTION_playerEvent:I = 0x3

.field static final TRANSACTION_playerHasOpPlayAudio:I = 0x4e

.field static final TRANSACTION_registerAudioPolicy:I = 0x3f

.field static final TRANSACTION_registerAudioServerStateDispatcher:I = 0x51

.field static final TRANSACTION_registerPlaybackCallback:I = 0x48

.field static final TRANSACTION_registerRecordingCallback:I = 0x45

.field static final TRANSACTION_releasePlayer:I = 0x4

.field static final TRANSACTION_reloadAudioSettings:I = 0x1f

.field static final TRANSACTION_removeMixForPolicy:I = 0x42

.field static final TRANSACTION_removePackageForName:I = 0x65

.field static final TRANSACTION_requestAudioFocus:I = 0x27

.field static final TRANSACTION_secGetActiveStreamType:I = 0x77

.field static final TRANSACTION_setAppDevice:I = 0x57

.field static final TRANSACTION_setAppVolume:I = 0x59

.field static final TRANSACTION_setAudioServiceConfig:I = 0x54

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x34

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent:I = 0x4f

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x25

.field static final TRANSACTION_setBluetoothScoOn:I = 0x23

.field static final TRANSACTION_setDeviceToForceByUser:I = 0x6c

.field static final TRANSACTION_setFineVolume:I = 0x5e

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x43

.field static final TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x50

.field static final TRANSACTION_setForceSpeakerOn:I = 0x6a

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x3d

.field static final TRANSACTION_setHearingAidDeviceConnectionState:I = 0x33

.field static final TRANSACTION_setMasterMute:I = 0xb

.field static final TRANSACTION_setMediaVolumeSteps:I = 0x72

.field static final TRANSACTION_setMicrophoneMute:I = 0x10

.field static final TRANSACTION_setMode:I = 0x19

.field static final TRANSACTION_setMultiSoundOn:I = 0x5b

.field static final TRANSACTION_setMuteInterval:I = 0x6d

.field static final TRANSACTION_setRadioOutputPath:I = 0x74

.field static final TRANSACTION_setRingerModeExternal:I = 0x11

.field static final TRANSACTION_setRingerModeInternal:I = 0x12

.field static final TRANSACTION_setRingtonePlayer:I = 0x2f

.field static final TRANSACTION_setSoundSettingEventBroadcastIntent:I = 0x71

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x21

.field static final TRANSACTION_setStreamVolume:I = 0x7

.field static final TRANSACTION_setStreamVolumeForDevice:I = 0x5d

.field static final TRANSACTION_setVibrateSetting:I = 0x16

.field static final TRANSACTION_setVolumeController:I = 0x38

.field static final TRANSACTION_setVolumePolicy:I = 0x44

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x32

.field static final TRANSACTION_shouldVibrate:I = 0x18

.field static final TRANSACTION_startBluetoothSco:I = 0x2b

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x2c

.field static final TRANSACTION_startWatchingRoutes:I = 0x36

.field static final TRANSACTION_stopBluetoothSco:I = 0x2d

.field static final TRANSACTION_trackPlayer:I = 0x1

.field static final TRANSACTION_unloadSoundEffects:I = 0x1e

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x29

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x40

.field static final TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x52

.field static final TRANSACTION_unregisterPlaybackCallback:I = 0x49

.field static final TRANSACTION_unregisterRecordingCallback:I = 0x46


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/media/IAudioService;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/media/IAudioService;

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
