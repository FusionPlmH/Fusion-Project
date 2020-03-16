.class public Lcom/android/systemui/statusbar/phone/NavBarPresenter;
.super Ljava/lang/Object;
.source "NavBarPresenter.java"


# instance fields
.field private mAllKeyDisabled:Z

.field private mContext:Landroid/content/Context;

.field public mImmersiveToastShowing:Z

.field private mIsKeyguard:Z

.field private mIsNightModeOn:Z

.field private mIsThemeDefault:Z

.field private mLastPinButtonClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNightModeOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsNightModeOn:Z

    return v0
.end method
