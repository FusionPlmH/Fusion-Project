.class public abstract Lcom/leo/salt/tweaks/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# static fields
.field public static final UPDATE_UI:I


# instance fields
.field protected mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field public mCheckUpdates:Lcom/leo/salt/tweaks/updates/UpdatesMessage;

.field protected mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field protected mContext:Landroid/app/Activity;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static StatusBarColor(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method


# virtual methods
.method public fixStatusBarFg()V
    .locals 5

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_0

    or-int/lit16 v1, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, -0x2001

    :goto_0
    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, -0x11

    :goto_1
    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x10104e0
        0x101056c
    .end array-data
.end method

.method protected abstract initAppBarLayout()I
.end method

.method protected abstract initLayout()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->setLeoTheme()V

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->setRequestedOrientation(I)V

    iput-object p0, p0, Lcom/leo/salt/tweaks/base/BaseActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->initLayout()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->initLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->setContentView(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->initAppBarLayout()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->initAppBarLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/base/BaseActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/FileUtils;->getInstance(Landroid/content/Context;)Lcom/leo/salt/utils/FileUtils;

    move-result-object p1

    const-string v0, "ota"

    const-string v1, "LeoTweaks/ota"

    invoke-virtual {p1, v0, v1}, Lcom/leo/salt/utils/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/leo/salt/utils/FileUtils;

    invoke-static {p0}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->get(Landroid/content/Context;)Lcom/leo/salt/utils/safety/FirmwareSecurity;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public reload()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/leo/salt/tweaks/base/BaseActivity;->overridePendingTransition(II)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->finish()V

    invoke-virtual {p0, v1, v1}, Lcom/leo/salt/tweaks/base/BaseActivity;->overridePendingTransition(II)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setLeoTheme()V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/PrefUtils;->DayNight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f11000a

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseActivity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f110009

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseActivity;->setTheme(I)V

    :goto_0
    return-void
.end method
