.class public interface abstract Lcom/leo/salt/colorpicker/renderer/ColorWheelRenderer;
.super Ljava/lang/Object;
.source "ColorWheelRenderer.java"


# static fields
.field public static final GAP_PERCENTAGE:F = 0.025f


# virtual methods
.method public abstract draw()V
.end method

.method public abstract getColorCircleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/leo/salt/colorpicker/ColorCircle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRenderOption()Lcom/leo/salt/colorpicker/renderer/ColorWheelRenderOption;
.end method

.method public abstract initWith(Lcom/leo/salt/colorpicker/renderer/ColorWheelRenderOption;)V
.end method
