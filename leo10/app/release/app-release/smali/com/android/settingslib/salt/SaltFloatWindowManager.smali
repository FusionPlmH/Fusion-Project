.class public Lcom/android/settingslib/salt/SaltFloatWindowManager;
.super Ljava/lang/Object;
.source "SaltFloatWindowManager.java"


# static fields
.field private static mBallView:Lcom/android/settingslib/salt/SaltFloatBall;

.field private static mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBallView(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/android/settingslib/salt/SaltFloatWindowManager;->mBallView:Lcom/android/settingslib/salt/SaltFloatBall;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltFloatWindowManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    new-instance v3, Lcom/android/settingslib/salt/SaltFloatBall;

    invoke-direct {v3, p0}, Lcom/android/settingslib/salt/SaltFloatBall;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/settingslib/salt/SaltFloatWindowManager;->mBallView:Lcom/android/settingslib/salt/SaltFloatBall;

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, -0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x33

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x7d2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x28

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v1, Lcom/android/settingslib/salt/SaltFloatWindowManager;->mBallView:Lcom/android/settingslib/salt/SaltFloatBall;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/salt/SaltFloatBall;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v1, Lcom/android/settingslib/salt/SaltFloatWindowManager;->mBallView:Lcom/android/settingslib/salt/SaltFloatBall;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    sget-object v0, Lcom/android/settingslib/salt/SaltFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    sput-object p0, Lcom/android/settingslib/salt/SaltFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    sget-object p0, Lcom/android/settingslib/salt/SaltFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static removeBallView(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/settingslib/salt/SaltFloatWindowManager;->mBallView:Lcom/android/settingslib/salt/SaltFloatBall;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltFloatWindowManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    sget-object v0, Lcom/android/settingslib/salt/SaltFloatWindowManager;->mBallView:Lcom/android/settingslib/salt/SaltFloatBall;

    invoke-interface {p0, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/settingslib/salt/SaltFloatWindowManager;->mBallView:Lcom/android/settingslib/salt/SaltFloatBall;

    :cond_0
    return-void
.end method
