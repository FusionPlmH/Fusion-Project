.class public Lcom/leo/service/plug/tileservice/LeoFall;
.super Landroid/service/quicksettings/TileService;
.source "LeoFall.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 14
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFall;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd9

    invoke-static {v0, v1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 15
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFall;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 16
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFall;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onStartListening()V
    .registers 3

    .line 20
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 21
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFall;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 22
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFall;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onTileAdded()V
    .registers 3

    .line 26
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFall;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 27
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFall;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method
