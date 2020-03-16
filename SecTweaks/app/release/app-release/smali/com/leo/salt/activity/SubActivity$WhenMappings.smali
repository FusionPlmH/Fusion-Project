.class public final synthetic Lcom/leo/salt/activity/SubActivity$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/activity/SubActivity$FragmentType;->values()[Lcom/leo/salt/activity/SubActivity$FragmentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarTime:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarIcon:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarLabel:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarTemperature:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarNetworkspeed:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarBattery:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarBackground:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarWallpaperPicker:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelTime:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelButton:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelCarrier:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelOther:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelBackground:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelWallpaperPicker:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->TaskBackground:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->TaskWallpaperPicker:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->KeyguardCarrier:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->KeyguardMore:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->AnalogClock:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->GestureFinger:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Autostart:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Animation:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->PowerWallpaperPicker:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->POP:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->GestureKeys:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Tools:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Log:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->IMG:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Property:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Apps:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelDeviceInfo:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->PowerMeun:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Sound:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->GestureHome:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Floating:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->GestureStatusBar:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Voltage:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->stockpowerBG:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Edge:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Recents:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->LauncherWallpaperPicker:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Launcher:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Alarm:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Weather:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/activity/SubActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->City:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$FragmentType;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1

    return-void
.end method
