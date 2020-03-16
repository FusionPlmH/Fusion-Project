.class final Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$2;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogAppOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogAppOptions.kt\ncom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$2\n*L\n1#1,670:1\n*E\n"
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

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->getAlert()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->getAlert()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->access$getError$p(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;

    invoke-virtual {v1}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->getAlert()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100094

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->access$getError$p(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method
