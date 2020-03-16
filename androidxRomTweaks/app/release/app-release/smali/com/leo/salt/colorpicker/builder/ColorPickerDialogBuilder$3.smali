.class Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$3;
.super Ljava/lang/Object;
.source "ColorPickerDialogBuilder.java"

# interfaces
.implements Lcom/leo/salt/colorpicker/OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->build()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

.field final synthetic val$colorImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$3;->this$0:Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    iput-object p2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$3;->val$colorImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$3;->val$colorImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/leo/salt/colorpicker/CircleColorDrawable;

    invoke-direct {v1, p1}, Lcom/leo/salt/colorpicker/CircleColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
