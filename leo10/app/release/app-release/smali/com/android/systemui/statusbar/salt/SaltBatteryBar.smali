.class public Lcom/android/systemui/statusbar/salt/SaltBatteryBar;
.super Landroid/widget/RelativeLayout;
.source "SaltBatteryBar.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final ANIM_DURATION:I = 0x3e8

.field private static final BATTERY_LOW_VALUE:I = 0xf

.field public static final STYLE_REGULAR:I = 0x0

.field public static final STYLE_SYMMETRIC:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private StandbyColor:I

.field private isAnimating:Z

.field private mAnimOffset:I

.field private mAttached:Z

.field mBarGradient:Landroid/graphics/drawable/GradientDrawable;

.field mBatteryBar:Landroid/view/View;

.field mBatteryBarLayout:Landroid/widget/LinearLayout;

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field private mBatteryLowColorWarning:I

.field mCharger:Landroid/view/View;

.field mChargerLayout:Landroid/widget/LinearLayout;

.field private mChargingColor:I

.field private mChargingLevel:I

.field private mColor:I

.field public mContext:Landroid/content/Context;

.field mGradientColors:[I

.field private mHighColor:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLowColor:I

.field private mNonAdaptedColor:I

.field private shouldAnimateCharging:Z

.field private useGradientColor:Z

.field vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mAttached:Z

    iput p2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLevel:I

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargingLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryCharging:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->shouldAnimateCharging:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->isAnimating:Z

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->StandbyColor:I

    const p3, -0xff0100

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargingColor:I

    const v1, -0x9a00

    iput v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLowColorWarning:I

    const/high16 v1, -0x10000

    iput v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mLowColor:I

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mHighColor:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->useGradientColor:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->vertical:Z

    new-instance p3, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;-><init>(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mContext:Landroid/content/Context;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mGradientColors:[I

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mGradientColors:[I

    iget p3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mLowColor:I

    aput p3, p1, p2

    iget p2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mHighColor:I

    aput p2, p1, v0

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object p2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object p3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mGradientColors:[I

    invoke-direct {p1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBarGradient:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryCharging:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryCharging:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->vertical:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryCharging:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryCharging:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->setProgress(I)V

    return-void
.end method

.method private colorToRgb(I)[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x18

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    aput v1, v0, v2

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    const/4 v2, 0x2

    aput v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x3

    aput p1, v0, v1

    return-object v0
.end method

.method private mixColors(IIF)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->colorToRgb(I)[I

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->colorToRgb(I)[I

    move-result-object p2

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mixedValue(IIF)I

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mixedValue(IIF)I

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mixedValue(IIF)I

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x3

    aget v1, p1, v0

    aget p2, p2, v0

    invoke-direct {p0, v1, p2, p3}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mixedValue(IIF)I

    move-result p2

    aput p2, p1, v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->rgbToColor([I)I

    move-result p1

    return p1
.end method

.method private mixedValue(IIF)I
    .locals 1

    int-to-float p1, p1

    mul-float p1, p1, p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    int-to-float p2, p2

    mul-float v0, v0, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x437f0000    # 255.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private rgbToColor([I)I
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget p1, p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private setProgress(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->vertical:Z

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getHeight()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v3

    int-to-double v3, p1

    mul-double v5, v5, v3

    add-double/2addr v5, v1

    double-to-int v0, v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getWidth()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v3

    int-to-double v3, p1

    mul-double v5, v5, v3

    add-double/2addr v5, v1

    double-to-int v0, v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->updateBatteryColor(I)V

    return-void
.end method


# virtual methods
.method public BatteryColor()Z
    .locals 2

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->isAnimating:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mAttached:Z

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBar:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBar:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->vertical:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mCharger:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mCharger:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->updateSettings()V

    :cond_1
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mNonAdaptedColor:I

    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLevel:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->setProgress(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->shouldAnimateCharging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->vertical:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getX()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->isAnimating:Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->isAnimating:Z

    return-void
.end method

.method public updateBatteryColor(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->BatteryColor()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->useGradientColor:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mGradientColors:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mHighColor:I

    iget v3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mLowColor:I

    invoke-direct {p0, v2, v3, p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mixColors(IIF)I

    move-result p1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBarGradient:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mGradientColors:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBar:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBarGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryCharging:Z

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargingColor:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xf

    if-le p1, v1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mColor:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLowColorWarning:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryBar:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mNonAdaptedColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method

.method public updateSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mColor:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarChargingColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargingColor:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarLowColorWarning:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLowColorWarning:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarAnimateCharging:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->shouldAnimateCharging:Z

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarLowColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mLowColor:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarHighColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mHighColor:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarGradientColorEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->useGradientColor:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryCharging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLevel:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->shouldAnimateCharging:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->stop()V

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mCharger:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->mChargingColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
