.class public final synthetic Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;
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

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/leo/salt/utils/AppInfo$AppType;->values()[Lcom/leo/salt/utils/AppInfo$AppType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/utils/AppInfo$AppType;->USER:Lcom/leo/salt/utils/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/utils/AppInfo$AppType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/utils/AppInfo$AppType;->SYSTEM:Lcom/leo/salt/utils/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/utils/AppInfo$AppType;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/utils/AppInfo$AppType;->BACKUPFILE:Lcom/leo/salt/utils/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/utils/AppInfo$AppType;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lcom/leo/salt/utils/AppInfo$AppType;->values()[Lcom/leo/salt/utils/AppInfo$AppType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/leo/salt/utils/AppInfo$AppType;->SYSTEM:Lcom/leo/salt/utils/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/utils/AppInfo$AppType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/leo/salt/utils/AppInfo$AppType;->USER:Lcom/leo/salt/utils/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/utils/AppInfo$AppType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/leo/salt/utils/AppInfo$AppType;->BACKUPFILE:Lcom/leo/salt/utils/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/utils/AppInfo$AppType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
