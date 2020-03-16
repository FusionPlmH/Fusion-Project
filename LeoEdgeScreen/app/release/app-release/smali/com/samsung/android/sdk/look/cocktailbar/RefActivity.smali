.class Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;
.super Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;
.source "RefActivity.java"


# static fields
.field private static mInstance:Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->mInstance:Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->mInstance:Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->mInstance:Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    return-object v0
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "android.app.Activity"

    return-object v0
.end method

.method public getSubWindow(Landroid/app/Activity;)Landroid/view/Window;
    .locals 1

    const-string v0, "getSubWindow"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/Window;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/Window;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setSubContentView(Landroid/app/Activity;I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "setSubContentView"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSubContentView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "setSubContentView"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
