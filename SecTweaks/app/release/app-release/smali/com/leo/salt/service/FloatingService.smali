.class public Lcom/leo/salt/service/FloatingService;
.super Landroid/service/quicksettings/TileService;
.source "FloatingService.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final STATE_OFF:I

.field private final STATE_ON:I

.field private toggleState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/service/FloatingService;->STATE_OFF:I

    iput v0, p0, Lcom/leo/salt/service/FloatingService;->STATE_ON:I

    const-string v1, "QuickFloatService"

    iput-object v1, p0, Lcom/leo/salt/service/FloatingService;->LOG_TAG:Ljava/lang/String;

    iput v0, p0, Lcom/leo/salt/service/FloatingService;->toggleState:I

    return-void
.end method

.method public static isOmipopModel(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_tweaks_ball_display"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leo_tweaks_ball_display"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "\u2639 \u7981\u7528\u60ac\u6d6e\u7403"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u263a \u542f\u7528\u60ac\u6d6e\u7403"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/utils/Constants;->mNewline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u8fd9\u662f\u4e00\u4e2a\u4e0d\u9519\u7684\u5168\u9762\u5c4f\u5de5\u5177\u54e6"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    const-string v0, "QuickFloatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/service/FloatingService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/leo/salt/service/FloatingService;->toggleState:I

    const v1, 0x7f080084

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput v2, p0, Lcom/leo/salt/service/FloatingService;->toggleState:I

    invoke-virtual {p0}, Lcom/leo/salt/service/FloatingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/service/FloatingService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/salt/service/FloatingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/leo/salt/service/FloatingService;->isOmipopModel(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/leo/salt/service/FloatingService;->toggleState:I

    invoke-virtual {p0}, Lcom/leo/salt/service/FloatingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/service/FloatingService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/leo/salt/service/FloatingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/leo/salt/service/FloatingService;->isOmipopModel(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/service/FloatingService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    invoke-virtual {p0}, Lcom/leo/salt/service/FloatingService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public onStartListening()V
    .locals 0

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
