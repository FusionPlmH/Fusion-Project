.class Lcom/leo/salt/preference/ColorPickerDialog$4;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/ColorPickerDialog;->setColorAndClickAction(Lcom/leo/salt/preference/ColorPickerPanelView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/ColorPickerDialog;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/ColorPickerDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog$4;->this$0:Lcom/leo/salt/preference/ColorPickerDialog;

    iput p2, p0, Lcom/leo/salt/preference/ColorPickerDialog$4;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog$4;->this$0:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-static {p1}, Lcom/leo/salt/preference/ColorPickerDialog;->access$100(Lcom/leo/salt/preference/ColorPickerDialog;)Lcom/leo/salt/preference/ColorPickerView;

    move-result-object p1

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerDialog$4;->val$color:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/leo/salt/preference/ColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
