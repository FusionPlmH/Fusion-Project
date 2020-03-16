.class final Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;
.super Ljava/lang/Object;
.source "DialogDPI.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/DialogDPI;->modifyDPI(Landroid/view/Display;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $dpiInput:Landroid/widget/EditText;

.field final synthetic $heightInput:Landroid/widget/EditText;

.field final synthetic $widthInput:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/leo/salt/tools/DialogDPI;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/DialogDPI;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;->this$0:Lcom/leo/salt/tools/DialogDPI;

    iput-object p2, p0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;->$widthInput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;->$heightInput:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;->$dpiInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;->$widthInput:Landroid/widget/EditText;

    const/16 v0, 0x5a0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;->$heightInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;->this$0:Lcom/leo/salt/tools/DialogDPI;

    invoke-static {v1, v0}, Lcom/leo/salt/tools/DialogDPI;->access$getHeightScaleValue(Lcom/leo/salt/tools/DialogDPI;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;->$dpiInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;->this$0:Lcom/leo/salt/tools/DialogDPI;

    invoke-static {v1, v0}, Lcom/leo/salt/tools/DialogDPI;->access$getDpiScaleValue(Lcom/leo/salt/tools/DialogDPI;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "WQHD+(2960\u00d71440)"

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->ToastALL(Ljava/lang/String;)V

    return-void
.end method
