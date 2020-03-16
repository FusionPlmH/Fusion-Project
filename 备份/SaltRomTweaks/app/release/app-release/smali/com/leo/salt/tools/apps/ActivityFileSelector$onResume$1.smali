.class final Lcom/leo/salt/tools/apps/ActivityFileSelector$onResume$1;
.super Ljava/lang/Object;
.source "ActivityFileSelector.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/ActivityFileSelector;->onResume()V
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
.field final synthetic this$0:Lcom/leo/salt/tools/apps/ActivityFileSelector;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/ActivityFileSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector$onResume$1;->this$0:Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector$onResume$1;->this$0:Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->access$getAdapterFileSelector$p(Lcom/leo/salt/tools/apps/ActivityFileSelector;)Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->getSelectedFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector$onResume$1;->this$0:Lcom/leo/salt/tools/apps/ActivityFileSelector;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "file"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector$onResume$1;->this$0:Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-virtual {v0}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->finish()V

    :cond_1
    return-void
.end method
