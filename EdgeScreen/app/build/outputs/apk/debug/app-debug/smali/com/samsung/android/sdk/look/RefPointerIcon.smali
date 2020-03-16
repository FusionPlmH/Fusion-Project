.class Lcom/samsung/android/sdk/look/RefPointerIcon;
.super Lcom/samsung/android/sdk/look/AbstractBaseReflection;
.source "RefPointerIcon.java"


# static fields
.field private static sInstance:Lcom/samsung/android/sdk/look/RefPointerIcon;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/AbstractBaseReflection;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/sdk/look/RefPointerIcon;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/look/RefPointerIcon;->sInstance:Lcom/samsung/android/sdk/look/RefPointerIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/look/RefPointerIcon;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/RefPointerIcon;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/RefPointerIcon;->sInstance:Lcom/samsung/android/sdk/look/RefPointerIcon;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/look/RefPointerIcon;->sInstance:Lcom/samsung/android/sdk/look/RefPointerIcon;

    return-object v0
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "android.view.PointerIcon"

    return-object v0
.end method

.method public setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    nop

    const-string v2, "setHoveringSpenIcon"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    aput-object p2, v0, v4

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/sdk/look/RefPointerIcon;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2
.end method

.method public setHoveringSpenIcon(II)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    nop

    const-string v2, "setHoveringSpenIcon"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/sdk/look/RefPointerIcon;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
