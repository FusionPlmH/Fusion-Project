.class public Lcom/leo/salt/tweaks/amber/AppsActivity;
.super Lcom/leo/salt/tweaks/base/BaseActivity;
.source "AppsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initAppBarLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c002c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090225

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/AppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/AppsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/AppsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/AppsActivity;->mContext:Landroid/app/Activity;

    const-string v1, "app_manage_name"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/AppsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/AppsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-direct {v0}, Lcom/leo/salt/tools/apps/FragmentApps;-><init>()V

    const v1, 0x7f090101

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

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
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/AppsActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setLeoTheme()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/AppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "AppTheme.Main.Dark"

    goto :goto_1

    :cond_1
    const-string v0, "AppTheme.Main.UI"

    :goto_1
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/AppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/AppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "style"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/AppsActivity;->setTheme(I)V

    :cond_2
    return-void
.end method
