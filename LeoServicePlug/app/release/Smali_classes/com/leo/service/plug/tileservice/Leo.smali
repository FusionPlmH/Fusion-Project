.class public Lcom/leo/service/plug/tileservice/Leo;
.super Landroid/service/quicksettings/TileService;
.source "Leo.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/leo/service/plug/tileservice/Leo$1;

    invoke-direct {v1, p0}, Lcom/leo/service/plug/tileservice/Leo$1;-><init>(Lcom/leo/service/plug/tileservice/Leo;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->collapseStatusBar(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/Leo;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 33
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/Leo;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onStartListening()V
    .registers 3

    .line 37
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 38
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/Leo;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 39
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/Leo;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onTileAdded()V
    .registers 3

    .line 43
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/Leo;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 44
    invoke-virtual {p0}, Lcom/leo/service/plug/tileservice/Leo;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method
