.class public Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;
.super Landroid/widget/TextView;
.source "SaltNetworkTraffic.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final BOTH:I = 0x0

.field private static final DOWN:I = 0x2

.field private static final FONT_FAMILY_MEDIUM:Ljava/lang/String; = "sans-serif-medium"

.field private static final GB:I = 0x40000000

.field private static final KB:I = 0x400

.field private static final MB:I = 0x100000

.field public static final TRAFFIC_TAG:Ljava/lang/String; = "leo_statusbar_traffic_view"

.field private static final UP:I = 0x1

.field private static decimalFormat:Ljava/text/DecimalFormat; = null

.field private static final symbol:Ljava/lang/String; = "B/s"


# instance fields
.field public DownIcom:I

.field public LeoRes:Landroid/content/res/Resources;

.field public UpDownIcom:I

.field public UpIcom:I

.field private lastUpdateTime:J

.field private line:Ljava/lang/String;

.field private mAttached:Z

.field private mAutoHideThreshold:I

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHideArrow:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEnabled:Z

.field private mLocationArrow:Z

.field private mNetworkTrafficColor:I

.field private mNetworkTrafficColorCustom:Z

.field private mNetworkTrafficDrawableColor:I

.field private mNetworkTrafficDrawableType:I

.field private mNetworkTrafficMergeColor:Z

.field private mRefreshInterval:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private mTintColor:I

.field private mTrafficHandler:Landroid/os/Handler;

.field private mTrafficType:I

.field protected mTrafficVisible:Z

.field private totalRxBytes:J

.field private totalTxBytes:J

.field private txtImgPadding:I

.field private txtSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    sget-object v0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    sget-object v0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, ""

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->line:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mLocationArrow:Z

    sget p3, Lcom/android/settingslib/salt/SaltValues;->mLightModeFillColor:I

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTintColor:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficVisible:Z

    const/4 p3, 0x2

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mRefreshInterval:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mScreenOn:Z

    iput p2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficDrawableType:I

    new-instance p2, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;-><init>(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltNetworkTraffic$ut2Gfpks5JnMJtSyvwG73A_JXLU;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltNetworkTraffic$ut2Gfpks5JnMJtSyvwG73A_JXLU;-><init>(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    new-instance p2, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$2;-><init>(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    sget-object p3, Lcom/android/settingslib/salt/SaltConfigFrame;->LEOFRAMEWORK:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->LeoRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mContext:Landroid/content/Context;

    const-string p1, "leo_statusbar_traffic_view"

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->refreshSaltNetworkTraffic()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mRefreshInterval:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/text/DecimalFormat;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->getlineSymbol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->getConnectAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mAutoHideThreshold:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->totalRxBytes:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->totalRxBytes:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->totalTxBytes:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->totalTxBytes:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->line:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficType:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->updateVisibility()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->updateTextSize()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->clearHandlerCallbacks()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private clearHandlerCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getConnectAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private getlineSymbol()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficType:I

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    :goto_0
    return-object v0
.end method

.method private updateTextSize()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->txtSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarNetworkFont:I

    const-string v2, "sans-serif-medium"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private updateTrafficColor()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficColorCustom:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficColor:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficMergeColor:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficDrawableColor:I

    :goto_0
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTintColor:I

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setTextColor(I)V

    return-void
.end method

.method private updateTrafficDrawable()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficDrawableType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->getLeoNetworkIconStyle(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mIsEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mHideArrow:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->UpIcom:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->DownIcom:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->UpDownIcom:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mHideArrow:Z

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->LeoRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->updateTrafficColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->updateTrafficDrawableLocation()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_1
    return-void
.end method

.method private updateTrafficDrawableLocation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarNetworkArrowsPadding:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->txtImgPadding:I

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->txtImgPadding:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setCompoundDrawablePadding(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mLocationArrow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateVisibility()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->line:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public NetworkIconStyle(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "stat_sys_network_traffic_a"

    return-object p1

    :pswitch_0
    const-string p1, "stat_sys_network_traffic_h"

    return-object p1

    :pswitch_1
    const-string p1, "stat_sys_network_traffic_g"

    return-object p1

    :pswitch_2
    const-string p1, "stat_sys_network_traffic_f"

    return-object p1

    :pswitch_3
    const-string p1, "stat_sys_network_traffic_e"

    return-object p1

    :pswitch_4
    const-string p1, "stat_sys_network_traffic_d"

    return-object p1

    :pswitch_5
    const-string p1, "stat_sys_network_traffic_c"

    return-object p1

    :pswitch_6
    const-string p1, "stat_sys_network_traffic_b"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLeoIcon(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->LeoRes:Landroid/content/res/Resources;

    sget-object v1, Lcom/android/settingslib/salt/SaltConfigFrame;->LEOFRAMEWORK:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLeoNetworkIconStyle(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->NetworkIconStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_updown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->getLeoIcon(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->UpDownIcom:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->NetworkIconStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->getLeoIcon(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->UpIcom:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->NetworkIconStyle(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_down"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->getLeoIcon(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->DownIcom:I

    return-void
.end method

.method public synthetic lambda$new$0$SaltNetworkTraffic()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->refreshSaltNetworkTraffic()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTintColor:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->updateTrafficColor()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mAttached:Z

    :cond_0
    return-void
.end method

.method public refreshSaltNetworkMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "network_speed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mIsEnabled:Z

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarNetworkEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mIsEnabled:Z

    :goto_0
    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarNetworkTrafficType:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficType:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarNetworkArrowPosition:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mLocationArrow:Z

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarNetworkAutoHideThreshold:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mAutoHideThreshold:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarNetworkArrowEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mHideArrow:Z

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarNetworkRefreshInterval:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mRefreshInterval:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarNetworkTextSize:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->txtSize:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarNetworkExtendsColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficMergeColor:Z

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarNetworkCustomColorEnabled:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficColorCustom:Z

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarNetworkIconColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficDrawableColor:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarNetworkColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficColor:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarNetworkArrowStyle:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mNetworkTrafficDrawableType:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarNetworkStartPadding:F

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarNetworkEndPadding:F

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->setLeoTextPadding(Landroid/widget/TextView;FF)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->updateTrafficColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->updateTrafficDrawableLocation()V

    return-void
.end method

.method public refreshSaltNetworkTraffic()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->updateVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->updateTextSize()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mIsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->totalRxBytes:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->lastUpdateTime:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->updateTrafficDrawable()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->clearHandlerCallbacks()V

    return-void
.end method
