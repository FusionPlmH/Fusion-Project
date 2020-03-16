.class public Lcom/android/settingslib/salt/widget/MeterFlashlight;
.super Lcom/android/settingslib/salt/widget/MeterBase;
.source "MeterFlashlight.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settingslib/salt/widget/MeterFlashlight;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/salt/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/salt/widget/MeterBase;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, p0}, Lcom/android/settingslib/salt/widget/MeterFlashlight;->Register(Ljava/lang/String;Lcom/android/settingslib/salt/widget/MeterBase;)V

    const-string p1, "flashlight_selector"

    const-string v0, "pop_flashlight"

    const-string v1, "flashlight_pressed"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/salt/widget/MeterFlashlight;->MiniButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Click()V
    .locals 3

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoMiniFlashlightAction:I

    sget-object v1, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    const/16 v2, 0xd6

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/salt/widget/MeterFlashlight;->updateAction(ILjava/lang/String;I)V

    return-void
.end method
