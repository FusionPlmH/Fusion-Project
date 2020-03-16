.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Ljava/lang/Object;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;
    }
.end annotation


# instance fields
.field private final LTE_ON_CDMA_FALSE:I

.field private final LTE_ON_CDMA_UNKNOWN:I

.field private mActiveSimCount:I

.field private mActivityIconSet:[I

.field public mApnBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mBootDataSvcAcquired:Z

.field public mBootVoiceSvcAcquired:Z

.field mContext:Landroid/content/Context;

.field private mCurSvcSate:I

.field private mCurrentSignalStrength:I

.field public mDataNetType:I

.field public mDataState:I

.field private mDataTypeIconAtSignalIconArea:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private mDisabledDataIcon:I

.field private mHandler:Landroid/os/Handler;

.field private mHasMobileData:Z

.field private mImsConnected:Z

.field public mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

.field private mInitialNetworkName:Ljava/lang/String;

.field private mIsATOCardUsingLTEIcon:Z

.field private mIsAnotherSlotCallingState:Z

.field private mIsAnotherSlotCtcCard:Z

.field private mIsCmccCard:Z

.field private mIsCtcCard:Z

.field private mIsLteOnCdma:Z

.field public mIsVoLteCallState:Z

.field private mIsVoWifiInfo:Z

.field private mLastCB:Ljava/lang/String;

.field public mLastDataSpn:Ljava/lang/String;

.field public mLastEFSPN:I

.field public mLastPlmn:Ljava/lang/String;

.field public mLastShowPlmn:Z

.field public mLastShowSpn:Z

.field public mLastSpn:Ljava/lang/String;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNWBoosterObserver:Landroid/database/ContentObserver;

.field public mNetworkManuallySelected:[Ljava/lang/String;

.field private mNetworkNameDefault:Ljava/lang/String;

.field private mPreSvcSate:I

.field public mPreciseAPNType:Ljava/lang/String;

.field public mPreciseDataState:I

.field public mServiceState:Landroid/telephony/ServiceState;

.field public mShouldBlockPLMNInfoUpdate:Z

.field public mSignalStrength:Landroid/telephony/SignalStrength;

.field public mSlotId:I

.field private mSubId:I

.field private mTargetSignalStrength:I

.field private mTransitionState:Z

.field private mVoLTEConnected:Z

.field public mVoWifiConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_ON_CDMA_FALSE:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_ON_CDMA_UNKNOWN:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    return-void
.end method

.method private isG5LeoICON()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->refreshSalt5GSignal()I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBar5GStyle:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settingslib/salt/SaltIcon;->mSalt5GConnected10:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settingslib/salt/SaltIcon;->mSalt5GConnected:I

    :goto_0
    return v0
.end method

.method private isShowSlot()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBar5Gicon:Z

    return v0
.end method

.method private refresh()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isG5LeoICON()I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settingslib/salt/SaltIcon;->getLeoStatusBarIcons()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSimplifiedMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-void
.end method

.method private shouldDisplayCTCOpSignalSpec()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refresh()V

    const/4 v0, 0x0

    return v0
.end method

.method private updateSimplifiedMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_SIMPLIFIED:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    invoke-static {}, Lcom/android/settingslib/salt/SaltIcon;->getLeoStatusBarIcons()V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    :cond_0
    const v1, 0x7f080698

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const v1, 0x7f08069f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isShowSlot()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const v1, 0x7f08069a

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_FOUR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isG5LeoICON()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const v1, 0x7f08069e

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const v1, 0x7f080696

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const v1, 0x7f08069c

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const v1, 0x7f08069d

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalSpec()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f080697

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataTypeIconAtSignalIconArea:I

    :goto_0
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getVoiceNetworkType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SALT_UPDATE_STATUSBARICON_SETTINGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refresh()V

    :cond_0
    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 0

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0

    return-void
.end method

.method public onDataActivity(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataActivity: direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 0

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    return-void
.end method
