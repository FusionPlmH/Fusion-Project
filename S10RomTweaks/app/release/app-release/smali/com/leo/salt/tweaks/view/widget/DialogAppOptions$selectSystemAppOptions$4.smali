.class final Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$selectSystemAppOptions$4;
.super Ljava/lang/Object;
.source "DialogAppOptions.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;->selectSystemAppOptions(Landroid/app/Activity;)V
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
.field final synthetic $dialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$selectSystemAppOptions$4;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$selectSystemAppOptions$4;->$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$selectSystemAppOptions$4;->$dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$selectSystemAppOptions$4;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;->uninstallAllOnlyUser()V

    return-void
.end method