.class final Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$1;
.super Ljava/lang/Object;
.source "DialogAppOptions.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->handleMessage(Landroid/os/Message;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->getAlert()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->getAlert()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    return-void
.end method