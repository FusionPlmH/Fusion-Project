.class public final enum Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;
.super Ljava/lang/Enum;
.source "FragUIActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/FragUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

.field public static final enum BatteryBar:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

.field public static final enum CLOCK:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

.field public static final enum Logo:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

.field public static final enum Navbg:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

.field public static final enum NetworkTraffic:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

.field public static final enum StatusbarCarrier:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

.field public static final enum Temp:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;


# instance fields
.field mResTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    const/4 v1, 0x0

    const-string v2, "CLOCK"

    const-string v3, "grid_clock"

    invoke-direct {v0, v2, v1, v3}, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->CLOCK:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    const/4 v2, 0x1

    const-string v3, "Logo"

    const-string v4, "grid_logo"

    invoke-direct {v0, v3, v2, v4}, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->Logo:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    const/4 v3, 0x2

    const-string v4, "BatteryBar"

    const-string v5, "grid_battery_bar"

    invoke-direct {v0, v4, v3, v5}, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->BatteryBar:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    const/4 v4, 0x3

    const-string v5, "Temp"

    const-string v6, "grid_temp"

    invoke-direct {v0, v5, v4, v6}, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->Temp:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    const/4 v5, 0x4

    const-string v6, "Navbg"

    const-string v7, "grid_navigation_bar_bg_title"

    invoke-direct {v0, v6, v5, v7}, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->Navbg:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    const/4 v6, 0x5

    const-string v7, "StatusbarCarrier"

    const-string v8, "grid_network_carrier"

    invoke-direct {v0, v7, v6, v8}, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->StatusbarCarrier:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    new-instance v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    const/4 v7, 0x6

    const-string v8, "NetworkTraffic"

    const-string v9, "grid_network_speed"

    invoke-direct {v0, v8, v7, v9}, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->NetworkTraffic:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    sget-object v8, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->CLOCK:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->Logo:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->BatteryBar:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->Temp:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->Navbg:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->StatusbarCarrier:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->NetworkTraffic:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->$VALUES:[Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

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

    iput-object p3, p0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->mResTitle:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;
    .locals 1

    const-class v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    return-object p0
.end method

.method public static values()[Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->$VALUES:[Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    invoke-virtual {v0}, [Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    return-object v0
.end method
