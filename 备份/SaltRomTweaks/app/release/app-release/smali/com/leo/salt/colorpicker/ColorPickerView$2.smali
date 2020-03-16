.class Lcom/leo/salt/colorpicker/ColorPickerView$2;
.super Ljava/lang/Object;
.source "ColorPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/colorpicker/ColorPickerView;->setColorPreview(Landroid/widget/LinearLayout;Ljava/lang/Integer;)V
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

    iput-object p1, p0, Lcom/leo/salt/colorpicker/ColorPickerView$2;->this$0:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/colorpicker/ColorPickerView$2;->this$0:Lcom/leo/salt/colorpicker/ColorPickerView;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/colorpicker/ColorPickerView;->setSelectedColor(I)V

    :cond_2
    :goto_0
    return-void
.end method
