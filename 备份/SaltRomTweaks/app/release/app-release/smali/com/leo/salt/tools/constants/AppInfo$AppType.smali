.class public final enum Lcom/leo/salt/tools/constants/AppInfo$AppType;
.super Ljava/lang/Enum;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/constants/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leo/salt/tools/constants/AppInfo$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leo/salt/tools/constants/AppInfo$AppType;

.field public static final enum BACKUPFILE:Lcom/leo/salt/tools/constants/AppInfo$AppType;

.field public static final enum SYSTEM:Lcom/leo/salt/tools/constants/AppInfo$AppType;

.field public static final enum UNKNOW:Lcom/leo/salt/tools/constants/AppInfo$AppType;

.field public static final enum USER:Lcom/leo/salt/tools/constants/AppInfo$AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;

    const/4 v1, 0x0

    const-string v2, "UNKNOW"

    invoke-direct {v0, v2, v1}, Lcom/leo/salt/tools/constants/AppInfo$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;->UNKNOW:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    new-instance v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;

    const/4 v2, 0x1

    const-string v3, "USER"

    invoke-direct {v0, v3, v2}, Lcom/leo/salt/tools/constants/AppInfo$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;->USER:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    new-instance v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;

    const/4 v3, 0x2

    const-string v4, "SYSTEM"

    invoke-direct {v0, v4, v3}, Lcom/leo/salt/tools/constants/AppInfo$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;->SYSTEM:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    new-instance v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;

    const/4 v4, 0x3

    const-string v5, "BACKUPFILE"

    invoke-direct {v0, v5, v4}, Lcom/leo/salt/tools/constants/AppInfo$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;->BACKUPFILE:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/leo/salt/tools/constants/AppInfo$AppType;

    sget-object v5, Lcom/leo/salt/tools/constants/AppInfo$AppType;->UNKNOW:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/leo/salt/tools/constants/AppInfo$AppType;->USER:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tools/constants/AppInfo$AppType;->SYSTEM:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/leo/salt/tools/constants/AppInfo$AppType;->BACKUPFILE:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;->$VALUES:[Lcom/leo/salt/tools/constants/AppInfo$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leo/salt/tools/constants/AppInfo$AppType;
    .locals 1

    const-class v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/tools/constants/AppInfo$AppType;

    return-object p0
.end method

.method public static values()[Lcom/leo/salt/tools/constants/AppInfo$AppType;
    .locals 1

    sget-object v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;->$VALUES:[Lcom/leo/salt/tools/constants/AppInfo$AppType;

    invoke-virtual {v0}, [Lcom/leo/salt/tools/constants/AppInfo$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leo/salt/tools/constants/AppInfo$AppType;

    return-object v0
.end method
