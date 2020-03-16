.class Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$1;
.super Ljava/lang/Object;
.source "ColorPickerDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

.field final synthetic val$onClickListener:Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;


# direct methods
.method constructor <init>(Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$1;->this$0:Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    iput-object p2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$1;->val$onClickListener:Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$1;->this$0:Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$1;->val$onClickListener:Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;

    invoke-static {p2, p1, v0}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->access$000(Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;Landroid/content/DialogInterface;Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)V

    return-void
.end method
