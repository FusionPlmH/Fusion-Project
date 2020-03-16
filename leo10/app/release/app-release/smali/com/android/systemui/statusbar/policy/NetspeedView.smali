.class public Lcom/android/systemui/statusbar/policy/NetspeedView;
.super Landroid/widget/TextView;
.source "NetspeedView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Ljava/util/Observer;


# static fields
.field public static mActiveInterface:Ljava/lang/String; = null

.field public static mContext:Landroid/content/Context; = null

.field public static mNetspeedSwitch:Z = false

.field public static mVpnConnected:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isDexMode:Z

.field private mAttached:Z

.field private mBatteryIconDarkModeAlpha:F

.field private mBatteryIconLightModeAlpha:F

.field private mDarkModeFillColor:I

.field private mIsForceTintColor:Z

.field private mLightModeFillColor:I

.field public mNetworkStats:Z

.field public mNetworkStatsHandler:Landroid/os/Handler;

.field private mShouldUseQsTintColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "NetworkSpeedView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIsForceTintColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    sput-object p1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "NetworkSpeedView"

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIsForceTintColor:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    sput-object p1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "NetworkSpeedView"

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIsForceTintColor:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    sput-object p1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private registerListener()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    return-void
.end method

.method public setForceQsTintColor(ZF)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    const v0, -0x42000001    # -0.12499999f

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
