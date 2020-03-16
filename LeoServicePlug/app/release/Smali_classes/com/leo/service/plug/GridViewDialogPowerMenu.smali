.class public Lcom/leo/service/plug/GridViewDialogPowerMenu;
.super Lcom/leo/service/plug/LeoGlobalActions;
.source "GridViewDialogPowerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/service/plug/GridViewDialogPowerMenu$GridViewItemOnClick;,
        Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;
    }
.end annotation


# instance fields
.field private mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

.field private mSilence_selector:Landroid/widget/ImageView;

.field private mSound_selector:Landroid/widget/ImageView;

.field private mVibration_selector:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/leo/service/plug/LeoGlobalActions;-><init>()V

    return-void
.end method


# virtual methods
.method protected initLayout()I
    .registers 2

    const v0, 0x7f060002

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_20

    goto :goto_1f

    .line 74
    :pswitch_8
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe3

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_1f

    .line 71
    :pswitch_10
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe1

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_1f

    .line 78
    :pswitch_18
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe2

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x7f05000b
        :pswitch_18
        :pswitch_10
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 38
    invoke-virtual {p0}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->DialogTheme()V

    .line 39
    invoke-super {p0, p1}, Lcom/leo/service/plug/LeoGlobalActions;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->setdialog()V

    const p1, 0x7f050001

    .line 42
    invoke-virtual {p0, p1}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/service/plug/OverScrollGridView;

    iput-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

    .line 43
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

    new-instance v0, Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;-><init>(Lcom/leo/service/plug/GridViewDialogPowerMenu;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

    new-instance v0, Lcom/leo/service/plug/GridViewDialogPowerMenu$GridViewItemOnClick;

    invoke-direct {v0, p0}, Lcom/leo/service/plug/GridViewDialogPowerMenu$GridViewItemOnClick;-><init>(Lcom/leo/service/plug/GridViewDialogPowerMenu;)V

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

    invoke-virtual {p0}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_scroll_number"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollGridView;->setMaxOverScrollY(I)V

    .line 47
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollGridView;

    invoke-virtual {p0}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_item_number"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollGridView;->setNumColumns(I)V

    .line 48
    invoke-virtual {p0}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->GridViewNumber()V

    const p1, 0x7f05000c

    .line 49
    invoke-virtual {p0, p1}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    .line 50
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "sound_selector"

    invoke-static {v0, v1}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f05000d

    .line 51
    invoke-virtual {p0, p1}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    .line 52
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "vibration_selector"

    invoke-static {v0, v1}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f05000b

    .line 53
    invoke-virtual {p0, p1}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    .line 54
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "silence_selector"

    invoke-static {v0, v1}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
