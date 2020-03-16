.class final Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2$1;
.super Ljava/lang/Object;
.source "FragmentApplistions.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic $cmds:Ljava/lang/StringBuffer;

.field final synthetic $edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2;


# direct methods
.method constructor <init>(Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2;Ljava/lang/StringBuffer;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2;

    iput-object p2, p0, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2$1;->$cmds:Ljava/lang/StringBuffer;

    iput-object p3, p0, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2$1;->$edit:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2$1;->$cmds:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmds.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2$1;->this$0:Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2;

    iget-object v0, v0, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2;->this$0:Lcom/leo/salt/kt/FragmentApplistions;

    invoke-static {v0}, Lcom/leo/salt/kt/FragmentApplistions;->access$getMyHandler$p(Lcom/leo/salt/kt/FragmentApplistions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2$1$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2$1$1;-><init>(Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
