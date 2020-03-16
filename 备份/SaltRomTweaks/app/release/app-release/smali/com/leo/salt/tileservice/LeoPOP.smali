.class public Lcom/leo/salt/tileservice/LeoPOP;
.super Landroid/service/quicksettings/TileService;
.source "LeoPOP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoPOP;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xdb

    invoke-static {v0, v1}, Lcom/leo/salt/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoPOP;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoPOP;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoPOP;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoPOP;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onTileAdded()V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoPOP;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/salt/tileservice/LeoPOP;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method
