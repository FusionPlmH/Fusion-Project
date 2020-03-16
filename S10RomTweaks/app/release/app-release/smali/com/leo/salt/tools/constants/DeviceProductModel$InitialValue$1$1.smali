.class final Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1$1;
.super Ljava/lang/Object;
.source "DeviceProductModel.kt"

# interfaces
.implements Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1;->onClick(Lcom/leo/SweetAlert/SweetAlertDialog;)V
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
        "sDialog1",
        "Lcom/leo/SweetAlert/SweetAlertDialog;",
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
.field final synthetic this$0:Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1$1;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    iget-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1$1;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1;

    iget-object p1, p1, Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/leo/salt/tweaks/view/widget/DialogView;->Reboot()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/leo/salt/utils/PrefUtils;->ScriptsLogClear(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
