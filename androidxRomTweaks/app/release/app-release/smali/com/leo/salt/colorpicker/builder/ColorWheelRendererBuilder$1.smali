.class synthetic Lcom/leo/salt/colorpicker/builder/ColorWheelRendererBuilder$1;
.super Ljava/lang/Object;
.source "ColorWheelRendererBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/colorpicker/builder/ColorWheelRendererBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$leo$salt$colorpicker$ColorPickerView$WHEEL_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;->values()[Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/leo/salt/colorpicker/builder/ColorWheelRendererBuilder$1;->$SwitchMap$com$leo$salt$colorpicker$ColorPickerView$WHEEL_TYPE:[I

    :try_start_0
    sget-object v0, Lcom/leo/salt/colorpicker/builder/ColorWheelRendererBuilder$1;->$SwitchMap$com$leo$salt$colorpicker$ColorPickerView$WHEEL_TYPE:[I

    sget-object v1, Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;->CIRCLE:Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;

    invoke-virtual {v1}, Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/leo/salt/colorpicker/builder/ColorWheelRendererBuilder$1;->$SwitchMap$com$leo$salt$colorpicker$ColorPickerView$WHEEL_TYPE:[I

    sget-object v1, Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;->FLOWER:Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;

    invoke-virtual {v1}, Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
