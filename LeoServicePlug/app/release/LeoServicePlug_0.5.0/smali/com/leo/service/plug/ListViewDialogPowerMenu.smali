.class public Lcom/leo/service/plug/ListViewDialogPowerMenu;
.super Lcom/leo/service/plug/LeoGlobalActions;
.source "ListViewDialogPowerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/service/plug/ListViewDialogPowerMenu$GridViewItemOnClick;,
        Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;
    }
.end annotation


# instance fields
.field private mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

.field private mSilence_selector:Landroid/widget/ImageView;

.field private mSound_selector:Landroid/widget/ImageView;

.field private mVibration_selector:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/service/plug/LeoGlobalActions;-><init>()V

    return-void
.end method

.method private hideStatusBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected initLayout()I
    .locals 1

    const v0, 0x7f060003

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe3

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const/16 v0, 0xe1

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mContext:Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->DialogTheme()V

    invoke-super {p0, p1}, Lcom/leo/service/plug/LeoGlobalActions;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->hideStatusBar()V

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    const p1, 0x7f050006

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/service/plug/OverScrollListView;

    iput-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    new-instance v0, Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;

    invoke-direct {v0, p0, p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;-><init>(Lcom/leo/service/plug/ListViewDialogPowerMenu;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    new-instance v0, Lcom/leo/service/plug/ListViewDialogPowerMenu$GridViewItemOnClick;

    invoke-direct {v0, p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu$GridViewItemOnClick;-><init>(Lcom/leo/service/plug/ListViewDialogPowerMenu;)V

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_scroll_number"

    const/16 v2, 0x190

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollListView;->setMaxOverScrollY(I)V

    const p1, 0x7f05000c

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "sound_selector"

    invoke-static {v0, v1}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f05000d

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "vibration_selector"

    invoke-static {v0, v1}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f05000b

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mContext:Landroid/content/Context;

    const-string v1, "silence_selector"

    invoke-static {v0, v1}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->setdialog()V

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->GridViewNumber()V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mSound_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mVibration_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->mSilence_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
