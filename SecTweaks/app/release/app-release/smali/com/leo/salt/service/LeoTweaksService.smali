.class public Lcom/leo/salt/service/LeoTweaksService;
.super Landroid/service/quicksettings/TileService;
.source "LeoTweaksService.java"


# instance fields
.field private final INTENT_SU:Landroid/content/Intent;

.field private final LOG_TAG:Ljava/lang/String;

.field private final STATE_OFF:I

.field private final STATE_ON:I

.field private toggleState:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.leo.salt"

    const-string v3, "com.leo.salt.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/service/LeoTweaksService;->INTENT_SU:Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/service/LeoTweaksService;->STATE_OFF:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/leo/salt/service/LeoTweaksService;->STATE_ON:I

    const-string v1, "QuickFloatService"

    iput-object v1, p0, Lcom/leo/salt/service/LeoTweaksService;->LOG_TAG:Ljava/lang/String;

    iput v0, p0, Lcom/leo/salt/service/LeoTweaksService;->toggleState:I

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    iget v0, p0, Lcom/leo/salt/service/LeoTweaksService;->toggleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v1, p0, Lcom/leo/salt/service/LeoTweaksService;->toggleState:I

    invoke-virtual {p0}, Lcom/leo/salt/service/LeoTweaksService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800a5

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/service/LeoTweaksService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    iget-object v1, p0, Lcom/leo/salt/service/LeoTweaksService;->INTENT_SU:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/leo/salt/service/LeoTweaksService;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/leo/salt/service/LeoTweaksService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    invoke-virtual {p0}, Lcom/leo/salt/service/LeoTweaksService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void
.end method

.method public onStartListening()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/service/LeoTweaksService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const v1, 0x7f0800a5

    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    const v1, 0x7f100070

    invoke-virtual {p0, v1}, Lcom/leo/salt/service/LeoTweaksService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/leo/salt/service/LeoTweaksService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onStopListening()V
    .locals 2

    const-string v0, "QuickFloatService"

    const-string v1, "onStopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTileAdded()V
    .locals 2

    const-string v0, "QuickFloatService"

    const-string v1, "onTileAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTileRemoved()V
    .locals 2

    const-string v0, "QuickFloatService"

    const-string v1, "onTileRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
