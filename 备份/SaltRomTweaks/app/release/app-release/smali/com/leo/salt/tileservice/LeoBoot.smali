.class public Lcom/leo/salt/tileservice/LeoBoot;
.super Landroid/service/quicksettings/TileService;
.source "LeoBoot.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method static synthetic lambda$initInfoView$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public initInfoView(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f1100cf

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "restart_style_values"

    invoke-static {p2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tileservice/-$$Lambda$LeoBoot$keyaibmgDFtCMjEzOSSH74fDgoA;

    invoke-direct {p3, p0}, Lcom/leo/salt/tileservice/-$$Lambda$LeoBoot$keyaibmgDFtCMjEzOSSH74fDgoA;-><init>(Lcom/leo/salt/tileservice/LeoBoot;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Lcom/leo/salt/tileservice/-$$Lambda$LeoBoot$wMtZWq1Mx2PyecaYIyKd3w2ara0;->INSTANCE:Lcom/leo/salt/tileservice/-$$Lambda$LeoBoot$wMtZWq1Mx2PyecaYIyKd3w2ara0;

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

.method public synthetic lambda$initInfoView$1$LeoBoot(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/leo/salt/tileservice/-$$Lambda$LeoBoot$eL-HXYgEta5E3nazbR2Ysf9VnVE;

    invoke-direct {v1, p0, p2}, Lcom/leo/salt/tileservice/-$$Lambda$LeoBoot$eL-HXYgEta5E3nazbR2Ysf9VnVE;-><init>(Lcom/leo/salt/tileservice/LeoBoot;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public synthetic lambda$null$0$LeoBoot(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-static {p1, v0}, Lcom/leo/salt/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x7d4

    invoke-static {p1, v0}, Lcom/leo/salt/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x7d5

    invoke-static {p1, v0}, Lcom/leo/salt/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-static {p1, v0}, Lcom/leo/salt/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android"

    const-string v2, "tw_ic_do_restart"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f10002f

    invoke-virtual {p0, v0, v2, v1}, Lcom/leo/salt/tileservice/LeoBoot;->initInfoView(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/leo/salt/plug/Utils;->collapseStatusBar(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onTileAdded()V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoBoot;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method
