.class Lcom/leo/salt/colorpicker/ColorPickerView$1;
.super Ljava/lang/Object;
.source "ColorPickerView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/colorpicker/ColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/colorpicker/ColorPickerView;


# direct methods
.method constructor <init>(Lcom/leo/salt/colorpicker/ColorPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/colorpicker/ColorPickerView$1;->this$0:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/colorpicker/ColorPickerView$1;->this$0:Lcom/leo/salt/colorpicker/ColorPickerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/colorpicker/ColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
