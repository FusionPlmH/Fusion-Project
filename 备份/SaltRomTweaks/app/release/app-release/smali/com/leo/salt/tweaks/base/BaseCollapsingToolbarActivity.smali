.class public abstract Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;
.super Lcom/leo/salt/tweaks/base/BaseActivity;
.source "BaseCollapsingToolbarActivity.java"


# instance fields
.field protected toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract initCollapsingTextText()Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0901b0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p0, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0901b1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object p1, p0, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->initCollapsingTextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->initCollapsingTextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->showSnacknAME(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onResume()V

    return-void
.end method

.method public showSnack(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->mContext:Landroid/app/Activity;

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

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public showSnacknAME(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->mContext:Landroid/app/Activity;

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

    iget-object v1, p0, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->mContext:Landroid/app/Activity;

    const v2, 0x7f040091

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method
