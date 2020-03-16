.class public abstract Lcom/leo/salt/tweaks/base/BaseSettingActivity;
.super Lcom/leo/salt/tweaks/base/BaseActivity;
.source "BaseSettingActivity.java"


# static fields
.field public static KEY_TYPE:Ljava/lang/String;


# instance fields
.field mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initToolBar()V
    .locals 1

    const v0, 0x7f090225

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method private setDisplayHomeEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private setToolbarTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->showSnack(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method protected abstract initLayout()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->fixStatusBarFg()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->initLayout()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->initLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->setContentView(I)V

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->initToolBar()V

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
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setupToolBar(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->setToolbarTitle(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->setDisplayHomeEnable(Z)V

    return-void
.end method

.method public showSnack(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->mContext:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const-string v0, "Action"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/base/BaseSettingActivity;->mContext:Landroid/app/Activity;

    const v2, 0x7f0400a5

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method
