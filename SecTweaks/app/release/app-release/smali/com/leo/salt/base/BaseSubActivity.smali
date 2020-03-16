.class public abstract Lcom/leo/salt/base/BaseSubActivity;
.super Lcom/leo/salt/base/BaseActivity;
.source "BaseSubActivity.java"


# static fields
.field public static KEY_TYPE:Ljava/lang/String;


# instance fields
.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initToolBar()V
    .locals 1

    const v0, 0x7f0901a5

    invoke-virtual {p0, v0}, Lcom/leo/salt/base/BaseSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/leo/salt/base/BaseSubActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/leo/salt/base/BaseSubActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/leo/salt/base/BaseSubActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method private setDisplayHomeEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseSubActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseSubActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private setToolbarTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/base/BaseSubActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/base/BaseSubActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method protected abstract initLayout()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseSubActivity;->initLayout()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseSubActivity;->initLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/base/BaseSubActivity;->setContentView(I)V

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/base/BaseSubActivity;->initToolBar()V

    invoke-static {p0}, Lcom/leo/salt/theme/Utils;->StatusBarColor(Landroid/app/Activity;)V

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
    invoke-virtual {p0}, Lcom/leo/salt/base/BaseSubActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setupToolBar(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/base/BaseSubActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/base/BaseSubActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/leo/salt/base/BaseSubActivity;->setDisplayHomeEnable(Z)V

    return-void
.end method
