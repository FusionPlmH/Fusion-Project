.class final Lcom/leo/salt/utils/ktshell/KeepShell$showMsg$1;
.super Ljava/lang/Object;
.source "KeepShell.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/KeepShell;->showMsg(Ljava/lang/String;)V
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
        0xd
    }
.end annotation


# instance fields
.field final synthetic $msg:Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/KeepShell;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$showMsg$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    iput-object p2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$showMsg$1;->$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$showMsg$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getContext$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$showMsg$1;->$msg:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
