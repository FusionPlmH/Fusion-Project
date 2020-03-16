.class final Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1$1;
.super Ljava/lang/Object;
.source "FragmentApps.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;->run()V
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
.field final synthetic this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/FragmentApps;->access$getProcessBarDialog$p(Lcom/leo/salt/tools/apps/FragmentApps;)Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->hideDialog()V

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/FragmentApps;->access$setList(Lcom/leo/salt/tools/apps/FragmentApps;)V

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1$1;->this$0:Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;->$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
