.class public Lcom/android/settingslib/salt/SaltValues;
.super Ljava/lang/Object;
.source "SaltValues.java"


# static fields
.field public static Values1:Ljava/lang/String;

.field public static Values10:Ljava/lang/String;

.field public static Values11:Ljava/lang/String;

.field public static Values12:Ljava/lang/String;

.field public static Values13:Ljava/lang/String;

.field public static Values14:Ljava/lang/String;

.field public static Values15:Ljava/lang/String;

.field public static Values16:Ljava/lang/String;

.field public static Values17:Ljava/lang/String;

.field public static Values18:Ljava/lang/String;

.field public static Values19:Ljava/lang/String;

.field public static Values2:Ljava/lang/String;

.field public static Values20:I

.field public static Values3:Ljava/lang/String;

.field public static Values4:Ljava/lang/String;

.field public static Values5:Ljava/lang/String;

.field public static Values6:Ljava/lang/String;

.field public static Values7:Ljava/lang/String;

.field public static Values8:Ljava/lang/String;

.field public static Values9:Ljava/lang/String;

.field public static capacityunit:Ljava/lang/String;

.field public static mDarkModeFillColor:I

.field public static mLightModeFillColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "light_mode_icon_color_single_tone"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settingslib/salt/SaltValues;->mLightModeFillColor:I

    const-string v0, "dark_mode_icon_color_single_tone"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settingslib/salt/SaltValues;->mDarkModeFillColor:I

    const-string v0, "id/left_clock_container"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values1:Ljava/lang/String;

    const-string v0, "id/middle_clock_container"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values2:Ljava/lang/String;

    const-string v0, "id/right_clock_container"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values3:Ljava/lang/String;

    const-string v0, "id/status_bar_left_side"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values4:Ljava/lang/String;

    const-string v0, "id/system_icons"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values5:Ljava/lang/String;

    const-string v0, "id/statusIcons"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values6:Ljava/lang/String;

    const-string v0, "id/battery"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values7:Ljava/lang/String;

    const-string v0, "leo_status_bar_carrier"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values9:Ljava/lang/String;

    const-string v0, "leo_keyguard_status_bar_carrier"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values8:Ljava/lang/String;

    const-string v0, "leo_notification_panel_carrier"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values10:Ljava/lang/String;

    const-string v0, "id/networkSpeed"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values11:Ljava/lang/String;

    const-string v0, "mAh"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->capacityunit:Ljava/lang/String;

    const-string v0, "id/notification_panel_carrier_label"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values12:Ljava/lang/String;

    const-string v0, "leo_pulldown_panel"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values13:Ljava/lang/String;

    const-string v0, "dimen/status_bar_header_height_expanded"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values14:Ljava/lang/String;

    const-string v0, "qs_service_box_clock"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values15:Ljava/lang/String;

    const-string v0, "qs_service_box_date"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values16:Ljava/lang/String;

    const-string v0, "leo_qs_battery_view"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values17:Ljava/lang/String;

    const-string v0, "leo_status_bar_action"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values18:Ljava/lang/String;

    const-string v0, "leo_status_bar_right_action"

    sput-object v0, Lcom/android/settingslib/salt/SaltValues;->Values19:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/salt/SaltConfigFrame;->mSaltContext:Landroid/content/Context;

    const-string v1, "color/qs_tile_label"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/settingslib/salt/SaltValues;->Values20:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
