.class public final enum Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;
.super Ljava/lang/Enum;
.source "AppBarStateChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

.field public static final enum COLLAPSED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

.field public static final enum EXPANDED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

.field public static final enum IDLE:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    const/4 v1, 0x0

    const-string v2, "EXPANDED"

    invoke-direct {v0, v2, v1}, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->EXPANDED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    new-instance v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    const/4 v2, 0x1

    const-string v3, "COLLAPSED"

    invoke-direct {v0, v3, v2}, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->COLLAPSED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    new-instance v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    const/4 v3, 0x2

    const-string v4, "IDLE"

    invoke-direct {v0, v4, v3}, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->IDLE:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    sget-object v4, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->EXPANDED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    aput-object v4, v0, v1

    sget-object v1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->COLLAPSED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->IDLE:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->$VALUES:[Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;
    .locals 1

    const-class v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    return-object p0
.end method

.method public static values()[Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->$VALUES:[Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    invoke-virtual {v0}, [Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    return-object v0
.end method
