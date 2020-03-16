.class public final synthetic Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;
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
        0xf
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->values()[Lcom/leo/salt/tools/constants/AppInfo$AppType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/tools/constants/AppInfo$AppType;->USER:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/tools/constants/AppInfo$AppType;->SYSTEM:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/leo/salt/tools/constants/AppInfo$AppType;->BACKUPFILE:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->values()[Lcom/leo/salt/tools/constants/AppInfo$AppType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/leo/salt/tools/constants/AppInfo$AppType;->SYSTEM:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/leo/salt/tools/constants/AppInfo$AppType;->USER:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/leo/salt/tools/constants/AppInfo$AppType;->BACKUPFILE:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
