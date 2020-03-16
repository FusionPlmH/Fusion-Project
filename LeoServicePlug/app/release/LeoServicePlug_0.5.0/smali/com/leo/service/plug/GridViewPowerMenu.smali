.class public Lcom/leo/service/plug/GridViewPowerMenu;
.super Lcom/leo/service/plug/LeoGlobalActions;
.source "GridViewPowerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/service/plug/GridViewPowerMenu$GridViewItemOnClick;,
        Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;
    }
.end annotation


# instance fields
.field private mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

.field private mSilence_selector:Landroid/widget/ImageView;

.field private mSound_selector:Landroid/widget/ImageView;

.field private mVibration_selector:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/service/plug/LeoGlobalActions;-><init>()V

    return-void
.end method


# virtual methods
.method protected initLayout()I
    .locals 1

    const v0, 0x7f060001

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe3

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe1

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe2

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f05000b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/service/plug/GridViewPowerMenu;->setLeoTheme()V

    invoke-super {p0, p1}, Lcom/leo/service/plug/LeoGlobalActions;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/service/plug/GridViewPowerMenu;->Background()V

    const p1, 0x7f050001

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/GridViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/service/plug/OverScrollGridView;

    iput-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

    new-instance v0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;

    invoke-direct {v0, p0, p0}, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;-><init>(Lcom/leo/service/plug/GridViewPowerMenu;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

    new-instance v0, Lcom/leo/service/plug/GridViewPowerMenu$GridViewItemOnClick;

    invoke-direct {v0, p0}, Lcom/leo/service/plug/GridViewPowerMenu$GridViewItemOnClick;-><init>(Lcom/leo/service/plug/GridViewPowerMenu;)V

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

    invoke-virtual {p0}, Lcom/leo/service/plug/GridViewPowerMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_item_number"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollGridView;->setNumColumns(I)V

    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

    invoke-virtual {p0}, Lcom/leo/service/plug/GridViewPowerMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_scroll_number"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollGridView;->setMaxOverScrollY(I)V

    const p1, 0x7f05000a

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/GridViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/GridViewPowerMenu;->setTextReminderStyele(Landroid/widget/TextView;)V

    const p1, 0x7f05000c

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/GridViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "sound_selector"

    invoke-static {v0, v1}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f05000d

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/GridViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "vibration_selector"

    invoke-static {v0, v1}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f05000b

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/GridViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "silence_selector"

    invoke-static {v0, v1}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
