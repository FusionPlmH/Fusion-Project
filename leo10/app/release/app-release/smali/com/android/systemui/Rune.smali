.class public Lcom/android/systemui/Rune;
.super Ljava/lang/Object;
.source "Rune.java"


# static fields
.field public static final KEYWI_SUPPORT_PERSIAN_CALENDAR:Z = false

.field public static final KEYWI_SUPPORT_SERVICEBOX:Z = false

.field public static KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z = true

.field public static final KEYWI_VALUE_CLOCK_FONT_STYLE:Ljava/lang/String; = ""

.field public static final NAVBAR_ENABLED:Z = true

.field public static final NAVBAR_FLOATING_FEATURES:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

.field public static final NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z = true

.field public static final NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

.field public static final NAVBAR_SUPPORT_STABLE_LAYOUT:Z = true

.field public static final QPANEL_SUPPORT_SUPPORT_PERSIAN_CALENDAR:Z

.field public static STATBAR_CONFIG_DEVICE_CORNER_ROUND:F = 0.0f

.field public static STATBAR_CONFIG_STATUSBAR_SIDE_PADDING:I = 0x0

.field public static STATBAR_DISPLAY_LTE_INSTEAD_OF_4G_ICON:Z = false

.field public static STATBAR_ICON_BRANDING:Ljava/lang/String; = null

.field public static STATBAR_MAX_SIGNAL_LEVEL:I = 0x0

.field public static final STATBAR_SUPPORT_DISABLED_DATA_ICON:Z = true

.field public static final STATBAR_SUPPORT_HSDPA_DATA_ICON:Z = true

.field public static final STATBAR_SUPPORT_PURE_SIGNAL_ICON:Z = false

.field public static STATBAR_SUPPORT_SIMPLIFIED_SIGNAL_CLUSTER:Z = false

.field public static final SYSUI_IS_TABLET_DEVICE:Z

.field public static final SYSUI_SUPPORT_APPLOCK:Z = false

.field public static mLeo4GLTE:Z = true

.field public static mLeoSignalChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.build.characteristics"

    const-string v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CscFeature_Common_SupportPersianCalendar"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SUPPORT_PERSIAN_CALENDAR:Z

    sput-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_SIMPLIFIED_SIGNAL_CLUSTER:Z

    sput-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigMaxRssiLevel"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/Rune;->STATBAR_CONFIG_DEVICE_CORNER_ROUND:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
