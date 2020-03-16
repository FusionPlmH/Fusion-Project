.class public Lcom/android/settingslib/salt/SaltFloatBall;
.super Landroid/widget/LinearLayout;
.source "SaltFloatBall.java"

# interfaces
.implements Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;


# static fields
.field private static final CLICK_LIMIT:J = 0xc8L

.field private static final LONG_CLICK_LIMIT:J = 0x12cL

.field private static final MODE_DOWN:I = 0x1

.field private static final MODE_GONE:I = 0x6

.field private static final MODE_LEFT:I = 0x3

.field private static final MODE_MOVE:I = 0x5

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_RIGHT:I = 0x4

.field private static final MODE_UP:I = 0x2

.field private static final OFFSET:I = 0x1e

.field private static final REMOVE_LIMIT:J = 0x5dcL

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public BallIcon:[Landroid/graphics/drawable/Drawable;

.field private mBigBallX:F

.field private mBigBallY:F

.field public mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mImgBg:Landroid/widget/ImageView;

.field private mImgBigBall:Landroid/widget/ImageView;

.field private mIsLongTouch:Z

.field private mIsTouching:Z

.field private mLastDownTime:J

.field private mLastDownX:F

.field private mLastDownY:F

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOffsetToParent:I

.field private mOffsetToParentY:I

.field private mRemoveBall:I

.field private mStatusBarHeight:I

.field private mTouchSlop:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settingslib/salt/SaltFloatBall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/salt/SaltFloatBall;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x12

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "tw_leo_tweaks"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ball_1"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ball_2"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ball_3"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ball_4"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ball_6"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ball_0"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ball_7"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "ball_8"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "ball_9"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "ball_10"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "ball_11"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ball_12"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "ball_14"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "ball_15"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "ball_16"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "ball_17"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "ball_18"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->BallIcon:[Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->initView()V

    invoke-direct {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->updateSetting()V

    new-instance p1, Lcom/android/settingslib/salt/utils/LeoReceiver;

    invoke-direct {p1, p0}, Lcom/android/settingslib/salt/utils/LeoReceiver;-><init>(Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "U0FMVF9VUERBVEVfRkxPQVRfR0VTVFVSRV9TRVRUSU5HUw=="

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private doGesture(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownY:F

    sub-float/2addr p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mTouchSlop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mTouchSlop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41f00000    # 30.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    cmpl-float p1, v0, v3

    if-lez p1, :cond_2

    iget p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallX:F

    add-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallY:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallX:F

    sub-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallY:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_1

    :cond_4
    cmpl-float p1, p1, v3

    if-lez p1, :cond_7

    iget p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    goto :goto_0

    :cond_5
    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallX:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallY:F

    add-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    new-instance p1, Lcom/android/settingslib/salt/-$$Lambda$SaltFloatBall$j_vvyMPdwHtzobWqvIH-B78owW8;

    invoke-direct {p1, p0}, Lcom/android/settingslib/salt/-$$Lambda$SaltFloatBall$j_vvyMPdwHtzobWqvIH-B78owW8;-><init>(Lcom/android/settingslib/salt/SaltFloatBall;)V

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    return-void

    :cond_8
    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallX:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallY:F

    sub-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    :goto_1
    return-void
.end method

.method private doUp()V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    const/16 v3, 0xcb

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallRightAction:I

    sget-object v2, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v2, v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settingslib/salt/SaltFloatBall;->updateAction(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallLeftAction:I

    sget-object v2, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v2, v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settingslib/salt/SaltFloatBall;->updateAction(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallUPAction:I

    sget-object v2, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const/16 v3, 0xc9

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settingslib/salt/SaltFloatBall;->updateAction(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallDownAction:I

    sget-object v2, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    const/16 v3, 0xca

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settingslib/salt/SaltFloatBall;->updateAction(Landroid/content/Context;ILjava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallX:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallY:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout/leo_floating"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/SaltFloatBall;->getLeoFloatResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/salt/SaltFloatBall;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "leo_floating_bg"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/salt/SaltFloatBall;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    const-string v0, "leo_floating_img"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/salt/SaltFloatBall;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mTouchSlop:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/widget/Until;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mStatusBarHeight:I

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p0, v0}, Lcom/android/settingslib/salt/SaltFloatBall;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mOffsetToParent:I

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mStatusBarHeight:I

    iget v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mOffsetToParent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mOffsetToParentY:I

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settingslib/salt/-$$Lambda$SaltFloatBall$6hSNrjGmq2coLfFpsnXz5A97xgk;

    invoke-direct {v1, p0}, Lcom/android/settingslib/salt/-$$Lambda$SaltFloatBall$6hSNrjGmq2coLfFpsnXz5A97xgk;-><init>(Lcom/android/settingslib/salt/SaltFloatBall;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settingslib/salt/-$$Lambda$SaltFloatBall$XEG56hcQzR_RZ0Oupy87Mu9ydSc;

    invoke-direct {v1, p0}, Lcom/android/settingslib/salt/-$$Lambda$SaltFloatBall$XEG56hcQzR_RZ0Oupy87Mu9ydSc;-><init>(Lcom/android/settingslib/salt/SaltFloatBall;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isClick(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownTime:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mTouchSlop:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    mul-float v3, v3, v4

    cmpg-float p1, p1, v3

    if-gez p1, :cond_0

    const-wide/16 v3, 0xc8

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isLongTouch()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mIsTouching:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mTouchSlop:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private toRemove()V
    .locals 2

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mRemoveBall:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/salt/SaltFloatBall;->Vibrate(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltFloatWindowManager;->removeBallView(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private updateAction(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/salt/SaltFloatBall;->Vibrate(Landroid/content/Context;)V

    if-gtz p2, :cond_0

    move p2, p4

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private updateSetting()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->doUp()V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallDownSlideDelete:I

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mRemoveBall:I

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->BallIcon:[Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallIconStyle:I

    aget-object v0, v0, v1

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallAlpha:I

    iget-object v2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallIconSize:F

    invoke-virtual {p0, v0}, Lcom/android/settingslib/salt/SaltFloatBall;->setViewSize(F)V

    return-void
.end method


# virtual methods
.method public CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public Vibrate(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallVibratorEnabled:I

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallVibratorLevel:I

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoHaptics(Landroid/content/Context;II)V

    return-void
.end method

.method public dip2px(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getLeoFloatResource(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic lambda$doGesture$3$SaltFloatBall()V
    .locals 2

    iget v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mIsTouching:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->toRemove()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$0$SaltFloatBall()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallX:F

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallY:F

    return-void
.end method

.method public synthetic lambda$initView$2$SaltFloatBall(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    goto/16 :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mIsLongTouch:Z

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/settingslib/salt/SaltFloatBall;->isTouchSlop(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-boolean p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mIsLongTouch:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    const/4 v0, 0x5

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mOffsetToParent:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mOffsetToParentY:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallX:F

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mBigBallY:F

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/settingslib/salt/SaltFloatBall;->doGesture(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mIsTouching:Z

    iget-boolean p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mIsLongTouch:Z

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mIsLongTouch:Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/settingslib/salt/SaltFloatBall;->isClick(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallClickAction:I

    sget-object v2, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const/16 v3, 0xc8

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/settingslib/salt/SaltFloatBall;->updateAction(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->doUp()V

    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iput v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mCurrentMode:I

    goto :goto_1

    :cond_7
    iput-boolean v1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mIsTouching:Z

    iget-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownTime:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLastDownY:F

    new-instance p1, Lcom/android/settingslib/salt/-$$Lambda$SaltFloatBall$B5-IS_-c2L1r9e9pjDYTh-kRgLg;

    invoke-direct {p1, p0}, Lcom/android/settingslib/salt/-$$Lambda$SaltFloatBall$B5-IS_-c2L1r9e9pjDYTh-kRgLg;-><init>(Lcom/android/settingslib/salt/SaltFloatBall;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/settingslib/salt/SaltFloatBall;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return v1
.end method

.method public synthetic lambda$null$1$SaltFloatBall()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->isLongTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mIsLongTouch:Z

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/salt/SaltFloatBall;->Vibrate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onLeoChange(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "U0FMVF9VUERBVEVfRkxPQVRfR0VTVFVSRV9TRVRUSU5HUw=="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/salt/SaltFloatBall;->updateSetting()V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/salt/SaltFloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public setViewSize(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/salt/SaltFloatBall;->setScaleX(F)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/salt/SaltFloatBall;->setScaleY(F)V

    return-void
.end method
