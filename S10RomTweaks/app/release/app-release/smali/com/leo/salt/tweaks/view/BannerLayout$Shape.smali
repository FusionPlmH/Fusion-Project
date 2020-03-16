.class final enum Lcom/leo/salt/tweaks/view/BannerLayout$Shape;
.super Ljava/lang/Enum;
.source "BannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leo/salt/tweaks/view/BannerLayout$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

.field public static final enum oval:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

.field public static final enum rect:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    const/4 v1, 0x0

    const-string v2, "rect"

    invoke-direct {v0, v2, v1}, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->rect:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    const/4 v2, 0x1

    const-string v3, "oval"

    invoke-direct {v0, v3, v2}, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->oval:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    sget-object v3, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->rect:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    aput-object v3, v0, v1

    sget-object v1, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->oval:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    aput-object v1, v0, v2

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->$VALUES:[Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

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

.method public static valueOf(Ljava/lang/String;)Lcom/leo/salt/tweaks/view/BannerLayout$Shape;
    .locals 1

    const-class v0, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    return-object p0
.end method

.method public static values()[Lcom/leo/salt/tweaks/view/BannerLayout$Shape;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->$VALUES:[Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    invoke-virtual {v0}, [Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    return-object v0
.end method
