.class public abstract Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseSettingUIActivity.java"


# instance fields
.field mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initToolBar()V
    .locals 1

    const v0, 0x7f0901b0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method private setDisplayHomeEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private setToolbarTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->showSnack(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method protected abstract initLayout()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->initLayout()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->initLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->setContentView(I)V

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->initToolBar()V

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
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setupToolBar(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->setToolbarTitle(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/leo/salt/tweaks/base/BaseSettingUIActivity;->setDisplayHomeEnable(Z)V

    return-void
.end method

.method public showSnack(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
