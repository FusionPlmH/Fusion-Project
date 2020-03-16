.class public final enum Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;
.super Ljava/lang/Enum;
.source "FragSettingActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/FragSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum AppProcess:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum AppSetting:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum Battery:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum Blacklist:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum FloatBall:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum GesturesLauncher:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum GlobalGestures:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum HWKWYS:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum Icon:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum KeyguardCarrier:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum MiniPOP:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum NavBlacklist:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum NavigationBar:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum PowerMenu:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum PulldownDeviceInfo:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum QSDATE:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum StatusBarAction:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum StatusBarBG:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum Storage:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum System:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

.field public static final enum TaskBG:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;


# instance fields
.field mResTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/4 v1, 0x0

    const-string v2, "QSDATE"

    const-string v3, "grid_clockdate_title"

    invoke-direct {v0, v2, v1, v3}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->QSDATE:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/4 v2, 0x1

    const-string v3, "NavigationBar"

    const-string v4, "grid_navigation_bar_title"

    invoke-direct {v0, v3, v2, v4}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->NavigationBar:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/4 v3, 0x2

    const-string v4, "FloatBall"

    const-string v5, "grid_floatball"

    invoke-direct {v0, v4, v3, v5}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->FloatBall:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/4 v4, 0x3

    const-string v5, "NavBlacklist"

    const-string v6, "navbar_blacklist_title"

    invoke-direct {v0, v5, v4, v6}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->NavBlacklist:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/4 v5, 0x4

    const-string v6, "System"

    const-string v7, "grid_system"

    invoke-direct {v0, v6, v5, v7}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->System:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/4 v6, 0x5

    const-string v7, "StatusBarAction"

    const-string v8, "grid_other_statusbar_title"

    invoke-direct {v0, v7, v6, v8}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->StatusBarAction:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/4 v7, 0x6

    const-string v8, "StatusBarBG"

    const-string v9, "grid_status_bar_background"

    invoke-direct {v0, v8, v7, v9}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->StatusBarBG:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/4 v8, 0x7

    const-string v9, "AppSetting"

    const-string v10, "leo_slide_meun_settings"

    invoke-direct {v0, v9, v8, v10}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->AppSetting:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v9, 0x8

    const-string v10, "AppProcess"

    const-string v11, "grid_AppProcess"

    invoke-direct {v0, v10, v9, v11}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->AppProcess:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v10, 0x9

    const-string v11, "HWKWYS"

    const-string v12, "keypress_navigation_title"

    invoke-direct {v0, v11, v10, v12}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->HWKWYS:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v11, 0xa

    const-string v12, "Battery"

    const-string v13, "grid_battery"

    invoke-direct {v0, v12, v11, v13}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Battery:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v12, 0xb

    const-string v13, "Blacklist"

    const-string v14, "blacklist_title"

    invoke-direct {v0, v13, v12, v14}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Blacklist:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v13, 0xc

    const-string v14, "PowerMenu"

    const-string v15, "grid_powermenu_title"

    invoke-direct {v0, v14, v13, v15}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->PowerMenu:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v14, 0xd

    const-string v15, "GlobalGestures"

    const-string v13, "grid_screen_three_title"

    invoke-direct {v0, v15, v14, v13}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->GlobalGestures:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v13, 0xe

    const-string v15, "GesturesLauncher"

    const-string v14, "grid_screen_home_title"

    invoke-direct {v0, v15, v13, v14}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->GesturesLauncher:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const-string v14, "TaskBG"

    const/16 v15, 0xf

    const-string v13, "grid_system_task_bg_title"

    invoke-direct {v0, v14, v15, v13}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->TaskBG:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const-string v13, "KeyguardCarrier"

    const/16 v14, 0x10

    const-string v15, "grid_keyguard_carrier"

    invoke-direct {v0, v13, v14, v15}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->KeyguardCarrier:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const-string v13, "Storage"

    const/16 v14, 0x11

    const-string v15, "storage_name"

    invoke-direct {v0, v13, v14, v15}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Storage:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const-string v13, "MiniPOP"

    const/16 v14, 0x12

    const-string v15, "grid_minipop"

    invoke-direct {v0, v13, v14, v15}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->MiniPOP:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const-string v13, "PulldownDeviceInfo"

    const/16 v14, 0x13

    const-string v15, "grid_info_title"

    invoke-direct {v0, v13, v14, v15}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->PulldownDeviceInfo:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const-string v13, "Icon"

    const/16 v14, 0x14

    const-string v15, "grid_signal_logo"

    invoke-direct {v0, v13, v14, v15}, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Icon:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    sget-object v13, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->QSDATE:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->NavigationBar:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->FloatBall:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->NavBlacklist:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->System:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->StatusBarAction:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->StatusBarBG:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->AppSetting:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->AppProcess:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->HWKWYS:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Battery:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Blacklist:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->PowerMenu:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->GlobalGestures:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->GesturesLauncher:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->TaskBG:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->KeyguardCarrier:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Storage:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->MiniPOP:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->PulldownDeviceInfo:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Icon:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->$VALUES:[Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

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

    iput-object p3, p0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->mResTitle:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;
    .locals 1

    const-class v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    return-object p0
.end method

.method public static values()[Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->$VALUES:[Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-virtual {v0}, [Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    return-object v0
.end method
