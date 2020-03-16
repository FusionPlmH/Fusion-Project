.class public Lcom/android/server/utils/salt/SaltPhoneWindowManager;
.super Ljava/lang/Object;
.source "SaltPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;,
        Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;
    }
.end annotation


# static fields
.field public static EnablePowerGlobalService:Z

.field public static final TAG:Ljava/lang/String;

.field public static mAppsManager:Ljava/lang/String;

.field private static mKillWhiteList:Ljava/lang/String;

.field public static mLeoManager:Ljava/lang/String;

.field public static mSearch:Ljava/lang/String;

.field public static mVideoManager:Ljava/lang/String;

.field public static mWIFIManager:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field public mSaltPhoneWindowAction:Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "com.leo.salt/com.leo.salt.tweaks.activity.AppsActivity"

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mAppsManager:Ljava/lang/String;

    const-string v0, "com.leo.salt/com.leo.salt.tweaks.activity.WifiPasswordActivity"

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mWIFIManager:Ljava/lang/String;

    const-string v0, "com.leo.salt/com.leo.salt.SplashActivity"

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mLeoManager:Ljava/lang/String;

    const-string v0, "com.sec.app.screenrecorder/com.sec.app.screenrecorder.activity.LauncherActivity"

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mVideoManager:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.galaxyfinder/com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mSearch:Ljava/lang/String;

    const-string v0, "com.android.systemui##com.android.phone##com.leo.salt##com.sec.android.app.launcher"

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mKillWhiteList:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->EnablePowerGlobalService:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    new-instance p1, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    invoke-direct {p1, p0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;-><init>(Lcom/android/server/utils/salt/SaltPhoneWindowManager;)V

    iput-object p1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mSaltPhoneWindowAction:Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    return-void
.end method

.method public static PowerMenuService(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->EnablePowerGlobalService:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "Y29tLmxlby5BQ1RJT05fR0xPQkFMQUNUSU9OUw=="

    invoke-static {v1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->EnablePowerGlobalService:Z

    :goto_0
    return-void
.end method

.method public static setKillWhiteList()[Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mKillWhiteList:Ljava/lang/String;

    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->mKillWhite:Ljava/lang/String;

    const-string v2, "##"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLeoBixbyAction()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyClickKeyguardAction:I

    if-gtz v1, :cond_1

    const/16 v1, 0x104

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setBixbyClickAction:Ljava/lang/String;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyClickAction:I

    if-gtz v1, :cond_1

    const/16 v1, 0xe5

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return v1
.end method

.method public getSaltBixbyLongPressAction()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sget v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyLongPressKeyguardAction:I

    if-gtz v2, :cond_1

    const/16 v2, 0x104

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setBixbyLongAction:Ljava/lang/String;

    sget v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBixbyLongPressAction:I

    if-gtz v2, :cond_1

    const/16 v2, 0xe5

    :cond_1
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return v2
.end method

.method public getSaltLongHomeAction()V
    .locals 3

    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLongPressOnHomeAction:Ljava/lang/String;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLongPressOnHomeAction:I

    iget-object v2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeowGlobalHwKyesVibratorEnable:I

    sget v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalHwKyesVibratorLevel:I

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/salt/SaltServerFrame;->setLeoHaptics(Landroid/content/Context;II)V

    return-void
.end method

.method public getSaltLongPressbackAction()V
    .locals 3

    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLongPressOnBackAction:Ljava/lang/String;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLongPressOnBackAction:I

    iget-object v2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeowGlobalHwKyesVibratorEnable:I

    sget v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalHwKyesVibratorLevel:I

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/salt/SaltServerFrame;->setLeoHaptics(Landroid/content/Context;II)V

    return-void
.end method

.method public getSaltLongRecentAction()V
    .locals 3

    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLongPressOnRecentAction:Ljava/lang/String;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLongPressOnRecentAction:I

    iget-object v2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeowGlobalHwKyesVibratorEnable:I

    sget v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalHwKyesVibratorLevel:I

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/salt/SaltServerFrame;->setLeoHaptics(Landroid/content/Context;II)V

    return-void
.end method

.method public getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mSaltPhoneWindowAction:Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    return-object v0
.end method

.method public getSaltPowerDoubleAction()V
    .locals 3

    sget-boolean v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerEnableAction:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    const/16 v1, 0xdc

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerDoubleKeyguardAction:I

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setPowerDoubleAction:Ljava/lang/String;

    sget v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerDoubleAction:I

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public getSaltPowerLongAction()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    const/16 v1, 0xcd

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerLongPressKeyguardAction:I

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setPowerLongPressAction:Ljava/lang/String;

    sget v2, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalPowerLongPressAction:I

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
