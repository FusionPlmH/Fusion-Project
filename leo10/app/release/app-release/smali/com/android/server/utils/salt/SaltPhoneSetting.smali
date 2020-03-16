.class public Lcom/android/server/utils/salt/SaltPhoneSetting;
.super Ljava/lang/Object;
.source "SaltPhoneSetting.java"


# static fields
.field public static Config:Ljava/lang/String; = "salt-server"

.field public static ConfigManager:Ljava/lang/String; = null

.field public static final LEOPREFE:Ljava/lang/String;

.field public static final LockScreenAction:Ljava/lang/String; = "keyguard_"

.field public static final SecurityCode:Ljava/lang/String;

.field public static mKillWhite:Ljava/lang/String;

.field public static mLeoGlobalService:Ljava/lang/String;

.field public static final setBixbyClickAction:Ljava/lang/String;

.field public static final setBixbyClickKeyguardAction:Ljava/lang/String;

.field public static final setBixbyLongAction:Ljava/lang/String;

.field public static final setBixbyLongKeyguardAction:Ljava/lang/String;

.field public static final setFingerprintDownAction:Ljava/lang/String;

.field public static final setFingerprintUPAction:Ljava/lang/String;

.field public static setGlobalAmberLeoLandscapeNavBarHeight:I

.field public static setGlobalAmberLeoNavBarHeightLandscape:Z

.field public static setGlobalAmberLeoNavBarHeightPortrait:Z

.field public static setGlobalAmberLeoPortraitNavBarHeight:I

.field public static final setGlobalBottomActionGestures:Ljava/lang/String;

.field public static final setGlobalLeftActionGestures:Ljava/lang/String;

.field public static final setGlobalRightActionGestures:Ljava/lang/String;

.field public static setGlobalToastWarn:I

.field public static final setGlobalTopActionGestures:Ljava/lang/String;

.field public static setLeoGlobalBixbyClickAction:I

.field public static setLeoGlobalBixbyClickKeyguardAction:I

.field public static setLeoGlobalBixbyEnableAction:I

.field public static setLeoGlobalBixbyLongPressAction:I

.field public static setLeoGlobalBixbyLongPressKeyguardAction:I

.field public static setLeoGlobalBottomActionGestures:I

.field public static setLeoGlobalEnableFingerGestures:Z

.field public static setLeoGlobalEnablePowerGlobalActionsStyle:Z

.field public static setLeoGlobalFingerGesturesCount:I

.field public static setLeoGlobalFingerGesturesVibratorLevel:I

.field public static setLeoGlobalFingerprintDownAction:I

.field public static setLeoGlobalFingerprintUPAction:I

.field public static setLeoGlobalHwKeysEnableAction:Z

.field public static setLeoGlobalHwKyesVibratorLevel:I

.field public static setLeoGlobalLeftActionGestures:I

.field public static setLeoGlobalLongPressOnBackAction:I

.field public static setLeoGlobalLongPressOnHomeAction:I

.field public static setLeoGlobalLongPressOnRecentAction:I

.field public static setLeoGlobalPowerDoubleAction:I

.field public static setLeoGlobalPowerDoubleKeyguardAction:I

.field public static setLeoGlobalPowerEnableAction:Z

.field public static setLeoGlobalPowerGlobalActionsStyle:I

.field public static setLeoGlobalPowerLongPressAction:I

.field public static setLeoGlobalPowerLongPressKeyguardAction:I

.field public static setLeoGlobalRightActionGestures:I

.field public static setLeoGlobalTopActionGestures:I

.field public static setLeowGlobalFingerGesturesVibratorEnable:I

.field public static setLeowGlobalHwKyesVibratorEnable:I

.field public static final setLongPressOnBackAction:Ljava/lang/String;

.field public static final setLongPressOnHomeAction:Ljava/lang/String;

.field public static final setLongPressOnRecentAction:Ljava/lang/String;

.field public static final setPowerDoubleAction:Ljava/lang/String;

.field public static final setPowerDoubleKeyguardAction:Ljava/lang/String;

.field public static final setPowerLongPressAction:Ljava/lang/String;

.field public static final setPowerLongPressKeyguardAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->Config:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoService()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->mLeoGlobalService:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoframe()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->ConfigManager:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyLongPressAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyLongPressKeyguardAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeowGlobalHwKyesVibratorEnable:I

    const/16 v1, 0xf

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalHwKyesVibratorLevel:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyClickAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyClickKeyguardAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyEnableAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerDoubleAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerLongPressAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerDoubleKeyguardAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerLongPressKeyguardAction:I

    sput-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerEnableAction:Z

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerprintUPAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerprintDownAction:I

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoPreList()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalBixbyClickAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setBixbyClickAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalBixbyLongPressAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setBixbyLongAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "keyguard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalBixbyClickAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setBixbyClickKeyguardAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalBixbyLongPressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setBixbyLongKeyguardAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalPowerDoubleAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setPowerDoubleAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalPowerDoubleAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setPowerDoubleKeyguardAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalPowerLongPressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setPowerLongPressAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalPowerLongPressAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setPowerLongPressKeyguardAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerprintUPAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setFingerprintUPAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerprintDownAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setFingerprintDownAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalLongPressOnRecentAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLongPressOnRecentAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalLongPressOnHomeAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLongPressOnHomeAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalLongPressOnBackAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLongPressOnBackAction:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalHwKeysEnableAction:Z

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLongPressOnRecentAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLongPressOnHomeAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLongPressOnBackAction:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalTopActionGestures:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLeftActionGestures:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalRightActionGestures:I

    const/4 v2, 0x3

    sput v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerGesturesCount:I

    sput-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalEnableFingerGestures:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerTopActionGestures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalTopActionGestures:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerLeftActionGestures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalLeftActionGestures:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerRightActionGestures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalRightActionGestures:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerBottomActionGestures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalBottomActionGestures:Ljava/lang/String;

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeowGlobalFingerGesturesVibratorEnable:I

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerGesturesVibratorLevel:I

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBottomActionGestures:I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalEnablePowerGlobalActionsStyle:Z

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getSafetyCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->SecurityCode:Ljava/lang/String;

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerGlobalActionsStyle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LeoSetting(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "leo_phone_action_toast"

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalToastWarn:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoKillWhiteList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->mKillWhite:Ljava/lang/String;

    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setBixbyLongAction:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyLongPressAction:I

    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setBixbyClickAction:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyClickAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalBixbyEnableAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyEnableAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalHwKeysEnableAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalVibratorEnable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeowGlobalHwKyesVibratorEnable:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalHwKeysEnableAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalVibratorLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalHwKyesVibratorLevel:I

    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setBixbyClickKeyguardAction:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyClickKeyguardAction:I

    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setBixbyLongKeyguardAction:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyLongPressKeyguardAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalPowerEnableAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerEnableAction:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalPowerDoubleAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerDoubleAction:I

    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setPowerDoubleKeyguardAction:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerDoubleKeyguardAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalPowerLongPressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerLongPressAction:I

    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setPowerLongPressKeyguardAction:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerLongPressKeyguardAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerprintUPAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerprintUPAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerprintDownAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerprintDownAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalHwKeysEnableAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalHwKeysEnableAction:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalLongPressOnRecentAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLongPressOnRecentAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalLongPressOnHomeAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLongPressOnHomeAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalLongPressOnBackAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLongPressOnBackAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalEnableFingerGestures()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sput-boolean v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalEnableFingerGestures:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalEnableFingerGestures()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalVibratorEnable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeowGlobalFingerGesturesVibratorEnable:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalEnableFingerGestures()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalVibratorLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerGesturesVibratorLevel:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerTopActionGestures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalTopActionGestures:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerLeftActionGestures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLeftActionGestures:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerRightActionGestures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalRightActionGestures:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerBottomActionGestures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBottomActionGestures:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerGesturesCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerGesturesCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalFingerGesturesCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerGesturesCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalPowerGlobalActionsStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    sput-boolean v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalEnablePowerGlobalActionsStyle:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalPowerGlobalActionsStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerGlobalActionsStyle:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalAmberLeoNavBarHeightLandscape()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    sput-boolean v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalAmberLeoNavBarHeightLandscape:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalAmberLeoNavBarHeightPortrait()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    sput-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalAmberLeoNavBarHeightPortrait:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalAmberLeoNavBarHeightLandscape()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {p0, v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalAmberLeoLandscapeNavBarHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalAmberLeoNavBarHeightPortrait()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getLeoGlobalStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalAmberLeoPortraitNavBarHeight:I

    return-void
.end method

.method public static native getCodeNumber()Ljava/lang/String;
.end method

.method public static native getLeoGlobalAmberLeoNavBarHeightLandscape()Ljava/lang/String;
.end method

.method public static native getLeoGlobalAmberLeoNavBarHeightPortrait()Ljava/lang/String;
.end method

.method public static native getLeoGlobalBixbyClickAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalBixbyEnableAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalBixbyLongPressAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalEnableFingerGestures()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerBottomActionGestures()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerGesturesCount()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerLeftActionGestures()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerRightActionGestures()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerTopActionGestures()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerprintDownAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerprintUPAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalHwKeysEnableAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalLongPressOnBackAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalLongPressOnHomeAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalLongPressOnRecentAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalPowerDoubleAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalPowerEnableAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalPowerGlobalActionsStyle()Ljava/lang/String;
.end method

.method public static native getLeoGlobalPowerLongPressAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalStyle()Ljava/lang/String;
.end method

.method public static native getLeoGlobalVibratorEnable()Ljava/lang/String;
.end method

.method public static native getLeoGlobalVibratorLevel()Ljava/lang/String;
.end method

.method public static native getLeoKillWhiteList()Ljava/lang/String;
.end method

.method static native getLeoPreList()Ljava/lang/String;
.end method

.method static native getLeoService()Ljava/lang/String;
.end method

.method static native getLeoframe()Ljava/lang/String;
.end method

.method public static native getSafety()Ljava/lang/String;
.end method

.method public static native getSafetyCode()Ljava/lang/String;
.end method

.method public static getSafetyVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneSetting;->getSafety()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
