.class public Lcom/leo/salt/colorpicker/builder/ColorWheelRendererBuilder;
.super Ljava/lang/Object;
.source "ColorWheelRendererBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRenderer(Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/leo/salt/colorpicker/renderer/ColorWheelRenderer;
    .locals 1

    sget-object v0, Lcom/leo/salt/colorpicker/builder/ColorWheelRendererBuilder$1;->$SwitchMap$com$leo$salt$colorpicker$ColorPickerView$WHEEL_TYPE:[I

    invoke-virtual {p0}, Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/leo/salt/colorpicker/renderer/FlowerColorWheelRenderer;

    invoke-direct {p0}, Lcom/leo/salt/colorpicker/renderer/FlowerColorWheelRenderer;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong WHEEL_TYPE"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/leo/salt/colorpicker/renderer/SimpleColorWheelRenderer;

    invoke-direct {p0}, Lcom/leo/salt/colorpicker/renderer/SimpleColorWheelRenderer;-><init>()V

    return-object p0
.end method
