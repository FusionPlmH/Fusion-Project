.class Lcom/leo/salt/preference/ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/ColorPickerDialog;->setUp(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/ColorPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog$2;->this$0:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog$2;->this$0:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-static {p1}, Lcom/leo/salt/preference/ColorPickerDialog;->access$000(Lcom/leo/salt/preference/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/leo/salt/preference/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog$2;->this$0:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-static {v0}, Lcom/leo/salt/preference/ColorPickerDialog;->access$100(Lcom/leo/salt/preference/ColorPickerDialog;)Lcom/leo/salt/preference/ColorPickerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/leo/salt/preference/ColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
