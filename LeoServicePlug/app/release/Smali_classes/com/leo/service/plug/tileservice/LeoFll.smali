.class public Lcom/leo/service/plug/tileservice/LeoFll;
.super Landroid/service/quicksettings/TileService;
.source "LeoFll.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 15
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFll;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xdd

    invoke-static {v0, v1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 16
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->collapseStatusBar(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFll;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 18
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFll;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onStartListening()V
    .registers 3

    .line 22
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 23
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFll;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 24
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFll;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onTileAdded()V
    .registers 3

    .line 28
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFll;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 29
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/LeoFll;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method
