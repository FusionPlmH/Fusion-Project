.class public abstract Lcom/leo/salt/tweaks/base/BaseSubActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseSubActivity.java"


# static fields
.field public static KEY_TYPE:Ljava/lang/String;


# instance fields
.field protected mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field protected mContext:Landroid/app/Activity;

.field mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initToolBar()V
    .locals 1

    const v0, 0x7f090225

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSubActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSubActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_0
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSubActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    return-void
.end method

.method private setDisplayHomeEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private setToolbarTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->showSnack(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSubActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method protected abstract initAppBarLayout()I
.end method

.method protected abstract initLayout()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/leo/salt/tweaks/base/BaseSubActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->initLayout()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->initLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->setContentView(I)V

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->initToolBar()V

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
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setupToolBar(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSubActivity;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSubActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->setToolbarTitle(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/leo/salt/tweaks/base/BaseSubActivity;->setDisplayHomeEnable(Z)V

    return-void
.end method

.method public showSnack(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseSubActivity;->mContext:Landroid/app/Activity;

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

    iget-object v1, p0, Lcom/leo/salt/tweaks/base/BaseSubActivity;->mContext:Landroid/app/Activity;

    const v2, 0x7f0400a5

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method
