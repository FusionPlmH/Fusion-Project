.class final Lcom/leo/salt/LauncherActivity$onCreate$2;
.super Ljava/lang/Object;
.source "LauncherActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/LauncherActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/leo/salt/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/LauncherActivity$onCreate$2;->this$0:Lcom/leo/salt/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/LauncherActivity$onCreate$2;->this$0:Lcom/leo/salt/LauncherActivity;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/leo/salt/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/LauncherActivity$onCreate$2;->this$0:Lcom/leo/salt/LauncherActivity;

    invoke-virtual {v1}, Lcom/leo/salt/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "getIntent()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/leo/salt/LauncherActivity$onCreate$2;->this$0:Lcom/leo/salt/LauncherActivity;

    invoke-virtual {v1}, Lcom/leo/salt/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "getIntent()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/LauncherActivity$onCreate$2;->this$0:Lcom/leo/salt/LauncherActivity;

    invoke-virtual {v1, v0}, Lcom/leo/salt/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/leo/salt/LauncherActivity$onCreate$2;->this$0:Lcom/leo/salt/LauncherActivity;

    invoke-virtual {v0}, Lcom/leo/salt/LauncherActivity;->finish()V

    return-void
.end method
