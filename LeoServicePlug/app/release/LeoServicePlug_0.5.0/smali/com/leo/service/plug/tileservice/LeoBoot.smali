.class public Lcom/leo/service/plug/tileservice/LeoBoot;
.super Landroid/service/quicksettings/TileService;
.source "LeoBoot.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method public static synthetic lambda$initInfoView$1(Lcom/leo/service/plug/tileservice/LeoBoot;Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$gM0c0kIfpiBms7TwtDJ9SrHQTJs;

    invoke-direct {v1, p0, p2}, Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$gM0c0kIfpiBms7TwtDJ9SrHQTJs;-><init>(Lcom/leo/service/plug/tileservice/LeoBoot;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$initInfoView$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$null$0(Lcom/leo/service/plug/tileservice/LeoBoot;I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x7d4

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x7d5

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-static {p1, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public initInfoView(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f090001

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "restart_style_values"

    invoke-static {p2}, Lcom/leo/service/plug/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$3pWP6mwOkunuIi02biq5MiNq51k;

    invoke-direct {p3, p0}, Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$3pWP6mwOkunuIi02biq5MiNq51k;-><init>(Lcom/leo/service/plug/tileservice/LeoBoot;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$_qYibcxMTmRY-gv-pYyq5Shr3Kw;->INSTANCE:Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$_qYibcxMTmRY-gv-pYyq5Shr3Kw;

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7d3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android"

    const-string v2, "tw_ic_do_restart"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f080007

    invoke-virtual {p0, v0, v2, v1}, Lcom/leo/service/plug/tileservice/LeoBoot;->initInfoView(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/leo/service/plug/Utils;->collapseStatusBar(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onTileAdded()V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method
