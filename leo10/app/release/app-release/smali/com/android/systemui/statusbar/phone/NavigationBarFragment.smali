.class public Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.super Landroid/support/v4/app/Fragment;
.source "NavigationBarFragment.java"


# instance fields
.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-void
.end method


# virtual methods
.method public setDoubleTapToSleep()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDoubleTapToSleep()V

    :cond_0
    return-void
.end method
