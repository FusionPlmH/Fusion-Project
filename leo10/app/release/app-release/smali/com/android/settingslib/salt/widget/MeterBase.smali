.class public abstract Lcom/android/settingslib/salt/widget/MeterBase;
.super Landroid/widget/ImageView;
.source "MeterBase.java"


# static fields
.field public static MeterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/salt/widget/MeterBase;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;

.field public static baseX:I

.field public static baseY:I


# instance fields
.field private Selected:Ljava/lang/String;

.field private handler4LongClick:Landroid/os/Handler;

.field private hasMoved:Z

.field public isLongClick:Z

.field public mContext:Landroid/content/Context;

.field private final mTime4LongClick:J

.field public mWindowManager:Landroid/view/WindowManager;

.field private resId:Ljava/lang/String;

.field private runnable4LongClick:Ljava/lang/Runnable;

.field public wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput v0, Lcom/android/settingslib/salt/widget/MeterBase;->baseX:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/settingslib/salt/widget/MeterBase;->baseY:I

    const-class v0, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/salt/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/salt/widget/MeterBase;->hasMoved:Z

    iput-boolean v0, p0, Lcom/android/settingslib/salt/widget/MeterBase;->isLongClick:Z

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->mTime4LongClick:J

    sget-object v1, Lcom/android/settingslib/salt/widget/-$$Lambda$MeterBase$Fi7oaW2EQEnTpI3wQczK4CbuTXw;->INSTANCE:Lcom/android/settingslib/salt/widget/-$$Lambda$MeterBase$Fi7oaW2EQEnTpI3wQczK4CbuTXw;

    iput-object v1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0xc0008

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x33

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/android/settingslib/salt/widget/MeterBase;->baseX:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v1, Lcom/android/settingslib/salt/widget/MeterBase;->baseY:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/settingslib/salt/widget/MeterBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/salt/widget/MeterBase;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic lambda$new$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected abstract Click()V
.end method

.method public MiniButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/salt/widget/MeterBase;->MiniDrawable(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settingslib/salt/widget/MeterBase;->resId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/salt/widget/MeterBase;->Selected:Ljava/lang/String;

    return-void
.end method

.method public MiniDrawable(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/salt/widget/MeterBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/salt/widget/MeterBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public Register(Ljava/lang/String;Lcom/android/settingslib/salt/widget/MeterBase;)V
    .locals 1

    sget-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public moved()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/salt/widget/MeterBase;->hasMoved:Z

    iget-object v0, p0, Lcom/android/settingslib/salt/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->shrinkStart()V

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->resId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/salt/widget/MeterBase;->MiniDrawable(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->hasMoved:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->isLongClick:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/salt/widget/MeterBase;->Click()V

    :cond_2
    iget-boolean p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->isLongClick:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->hasMoved:Z

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->hasMoved:Z

    iput-boolean p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->isLongClick:Z

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->start()V

    return v0

    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->Selected:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/salt/widget/MeterBase;->MiniDrawable(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->stop()V

    return v0
.end method

.method public update(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/salt/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/android/settingslib/salt/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateAction(ILjava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingslib/salt/widget/MeterBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoMiniVibratorEnabled:I

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoMiniVibratorLevel:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoHaptics(Landroid/content/Context;II)V

    if-gtz p1, :cond_0

    move p1, p3

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I\'m from China"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "developer"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterBase;->TAG:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p2, p1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    nop

    :array_0
    .array-data 2
        0x73s
        0x61s
        0x6cs
        0x74s
    .end array-data
.end method
