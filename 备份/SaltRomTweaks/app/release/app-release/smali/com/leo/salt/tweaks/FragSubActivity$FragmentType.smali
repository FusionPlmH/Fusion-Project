.class public final enum Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;
.super Ljava/lang/Enum;
.source "FragSubActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/FragSubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum AutoStarts:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum Bixby:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum Edge:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum Fingerprint:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum HardwareInfo:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum Img:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum KeyguardAction:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum Log:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum Mail:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum Power:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum PulldownCarrier:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum QSbutton:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum SIM:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum SoundSetting:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum SystemUninstall:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum alarm:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum analogclock:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum wallpaper:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

.field public static final enum weatherwidget:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;


# instance fields
.field mResTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/4 v1, 0x0

    const-string v2, "HardwareInfo"

    const-string v3, "device_info"

    invoke-direct {v0, v2, v1, v3}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->HardwareInfo:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/4 v2, 0x1

    const-string v3, "Edge"

    const-string v4, "grid_edge"

    invoke-direct {v0, v3, v2, v4}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Edge:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/4 v3, 0x2

    const-string v4, "SystemUninstall"

    const-string v5, "recommend_uninstall_apps"

    invoke-direct {v0, v4, v3, v5}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->SystemUninstall:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/4 v4, 0x3

    const-string v5, "AutoStarts"

    const-string v6, "autostarts_name"

    invoke-direct {v0, v5, v4, v6}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->AutoStarts:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/4 v5, 0x4

    const-string v6, "alarm"

    const-string v7, "grid_keyguard_alarm"

    invoke-direct {v0, v6, v5, v7}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->alarm:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/4 v6, 0x5

    const-string v7, "KeyguardAction"

    const-string v8, "grid_keyguard_gesture"

    invoke-direct {v0, v7, v6, v8}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->KeyguardAction:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/4 v7, 0x6

    const-string v8, "weatherwidget"

    const-string v9, "widget_name"

    invoke-direct {v0, v8, v7, v9}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->weatherwidget:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/4 v8, 0x7

    const-string v9, "Img"

    const-string v10, "img_name"

    invoke-direct {v0, v9, v8, v10}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Img:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v9, 0x8

    const-string v10, "QSbutton"

    const-string v11, "grid_button"

    invoke-direct {v0, v10, v9, v11}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->QSbutton:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v10, 0x9

    const-string v11, "analogclock"

    const-string v12, "grid_analogclock_title"

    invoke-direct {v0, v11, v10, v12}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->analogclock:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v11, 0xa

    const-string v12, "PulldownCarrier"

    const-string v13, "grid_carrier_title"

    invoke-direct {v0, v12, v11, v13}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->PulldownCarrier:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v12, 0xb

    const-string v13, "Mail"

    const-string v14, "about_service"

    invoke-direct {v0, v13, v12, v14}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Mail:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v13, 0xc

    const-string v14, "SIM"

    const-string v15, "grid_datausage_more"

    invoke-direct {v0, v14, v13, v15}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->SIM:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v14, 0xd

    const-string v15, "Log"

    const-string v13, "grid_log"

    invoke-direct {v0, v15, v14, v13}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Log:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v13, 0xe

    const-string v15, "wallpaper"

    const-string v14, "grid_system_launcher_home_title"

    invoke-direct {v0, v15, v13, v14}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->wallpaper:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const-string v14, "SoundSetting"

    const/16 v15, 0xf

    const-string v13, "grid_sound"

    invoke-direct {v0, v14, v15, v13}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->SoundSetting:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const-string v13, "Bixby"

    const/16 v14, 0x10

    const-string v15, "keypress_bixby_title"

    invoke-direct {v0, v13, v14, v15}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Bixby:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const-string v13, "Power"

    const/16 v14, 0x11

    const-string v15, "keypress_power_title"

    invoke-direct {v0, v13, v14, v15}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Power:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const-string v13, "Fingerprint"

    const/16 v14, 0x12

    const-string v15, "keypress_fingerprint_title"

    invoke-direct {v0, v13, v14, v15}, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Fingerprint:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    sget-object v13, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->HardwareInfo:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Edge:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->SystemUninstall:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->AutoStarts:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->alarm:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->KeyguardAction:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->weatherwidget:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Img:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->QSbutton:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->analogclock:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->PulldownCarrier:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Mail:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->SIM:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Log:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->wallpaper:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->SoundSetting:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Bixby:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Power:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Fingerprint:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->$VALUES:[Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->mResTitle:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;
    .locals 1

    const-class v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    return-object p0
.end method

.method public static values()[Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->$VALUES:[Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-virtual {v0}, [Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    return-object v0
.end method
