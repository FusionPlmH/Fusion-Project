.class final enum Lcom/leo/salt/tweaks/view/BannerLayout$Position;
.super Ljava/lang/Enum;
.source "BannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leo/salt/tweaks/view/BannerLayout$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leo/salt/tweaks/view/BannerLayout$Position;

.field public static final enum centerBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

.field public static final enum centerTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

.field public static final enum leftBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

.field public static final enum leftTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

.field public static final enum rightBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

.field public static final enum rightTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    const/4 v1, 0x0

    const-string v2, "centerBottom"

    invoke-direct {v0, v2, v1}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->centerBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    const/4 v2, 0x1

    const-string v3, "rightBottom"

    invoke-direct {v0, v3, v2}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->rightBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    const/4 v3, 0x2

    const-string v4, "leftBottom"

    invoke-direct {v0, v4, v3}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->leftBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    const/4 v4, 0x3

    const-string v5, "centerTop"

    invoke-direct {v0, v5, v4}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->centerTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    const/4 v5, 0x4

    const-string v6, "rightTop"

    invoke-direct {v0, v6, v5}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->rightTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    const/4 v6, 0x5

    const-string v7, "leftTop"

    invoke-direct {v0, v7, v6}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->leftTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    sget-object v7, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->centerBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    aput-object v7, v0, v1

    sget-object v1, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->rightBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->leftBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    aput-object v1, v0, v3

    sget-object v1, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->centerTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    aput-object v1, v0, v4

    sget-object v1, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->rightTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    aput-object v1, v0, v5

    sget-object v1, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->leftTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    aput-object v1, v0, v6

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->$VALUES:[Lcom/leo/salt/tweaks/view/BannerLayout$Position;

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

.method public static valueOf(Ljava/lang/String;)Lcom/leo/salt/tweaks/view/BannerLayout$Position;
    .locals 1

    const-class v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    return-object p0
.end method

.method public static values()[Lcom/leo/salt/tweaks/view/BannerLayout$Position;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->$VALUES:[Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    invoke-virtual {v0}, [Lcom/leo/salt/tweaks/view/BannerLayout$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    return-object v0
.end method
