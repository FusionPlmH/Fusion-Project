.class public Lcom/os/salt/globalactions/GridViewPowerMenu;
.super Lcom/os/salt/globalactions/LeoGlobalActions;
.source "GridViewPowerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/os/salt/globalactions/GridViewPowerMenu$GridViewItemOnClick;,
        Lcom/os/salt/globalactions/GridViewPowerMenu$setAdapterView;
    }
.end annotation


# instance fields
.field private mOverScrollGridView:Lcom/os/salt/globalactions/OverScrollGridView;

.field private mSilence_selector:Landroid/widget/ImageView;

.field private mSound_selector:Landroid/widget/ImageView;

.field private mVibration_selector:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;-><init>()V

    return-void
.end method


# virtual methods
.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0058

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901e5

    if-eq p1, v0, :cond_2

    const v0, 0x7f0901eb

    if-eq p1, v0, :cond_1

    const v0, 0x7f090251

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe3

    invoke-static {p1, v0}, Lcom/os/salt/globalactions/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe1

    invoke-static {p1, v0}, Lcom/os/salt/globalactions/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe2

    invoke-static {p1, v0}, Lcom/os/salt/globalactions/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/os/salt/globalactions/GridViewPowerMenu;->setLeoTheme()V

    invoke-super {p0, p1}, Lcom/os/salt/globalactions/LeoGlobalActions;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/os/salt/globalactions/GridViewPowerMenu;->Background()V

    const p1, 0x7f090106

    invoke-virtual {p0, p1}, Lcom/os/salt/globalactions/GridViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/os/salt/globalactions/OverScrollGridView;

    iput-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mOverScrollGridView:Lcom/os/salt/globalactions/OverScrollGridView;

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mOverScrollGridView:Lcom/os/salt/globalactions/OverScrollGridView;

    new-instance v0, Lcom/os/salt/globalactions/GridViewPowerMenu$setAdapterView;

    invoke-direct {v0, p0, p0}, Lcom/os/salt/globalactions/GridViewPowerMenu$setAdapterView;-><init>(Lcom/os/salt/globalactions/GridViewPowerMenu;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/os/salt/globalactions/OverScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mOverScrollGridView:Lcom/os/salt/globalactions/OverScrollGridView;

    new-instance v0, Lcom/os/salt/globalactions/GridViewPowerMenu$GridViewItemOnClick;

    invoke-direct {v0, p0}, Lcom/os/salt/globalactions/GridViewPowerMenu$GridViewItemOnClick;-><init>(Lcom/os/salt/globalactions/GridViewPowerMenu;)V

    invoke-virtual {p1, v0}, Lcom/os/salt/globalactions/OverScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mOverScrollGridView:Lcom/os/salt/globalactions/OverScrollGridView;

    invoke-virtual {p0}, Lcom/os/salt/globalactions/GridViewPowerMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_item_number"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/os/salt/globalactions/OverScrollGridView;->setNumColumns(I)V

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mOverScrollGridView:Lcom/os/salt/globalactions/OverScrollGridView;

    invoke-virtual {p0}, Lcom/os/salt/globalactions/GridViewPowerMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_scroll_number"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/os/salt/globalactions/OverScrollGridView;->setMaxOverScrollY(I)V

    const p1, 0x7f0901a7

    invoke-virtual {p0, p1}, Lcom/os/salt/globalactions/GridViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/os/salt/globalactions/GridViewPowerMenu;->setTextReminderStyele(Landroid/widget/TextView;)V

    const p1, 0x7f0901eb

    invoke-virtual {p0, p1}, Lcom/os/salt/globalactions/GridViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "sound_selector"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090251

    invoke-virtual {p0, p1}, Lcom/os/salt/globalactions/GridViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "vibration_selector"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0901e5

    invoke-virtual {p0, p1}, Lcom/os/salt/globalactions/GridViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "silence_selector"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
