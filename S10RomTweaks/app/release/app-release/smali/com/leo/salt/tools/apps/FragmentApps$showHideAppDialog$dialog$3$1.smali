.class final Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3$1;
.super Ljava/lang/Object;
.source "FragmentApps.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic $cmds:Ljava/lang/StringBuffer;

.field final synthetic $edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3;Ljava/lang/StringBuffer;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3;

    iput-object p2, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3$1;->$cmds:Ljava/lang/StringBuffer;

    iput-object p3, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3$1;->$edit:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    iget-object v1, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3$1;->$cmds:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmds.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/FragmentApps;->access$getMyHandler$p(Lcom/leo/salt/tools/apps/FragmentApps;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/FragmentApps;->access$getMyHandler$p(Lcom/leo/salt/tools/apps/FragmentApps;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v1, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3$1$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3$1$1;-><init>(Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$dialog$3$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
