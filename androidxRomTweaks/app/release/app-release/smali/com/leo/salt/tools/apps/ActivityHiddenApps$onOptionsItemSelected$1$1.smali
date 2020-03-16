.class final Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;
.super Ljava/lang/Object;
.source "ActivityHiddenApps.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->run()V
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
.field final synthetic $fail:Ljava/util/ArrayList;

.field final synthetic $hasConfigChange:Z

.field final synthetic $uninstalledApp:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;

    iput-object p2, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->$fail:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->$hasConfigChange:Z

    iput-object p4, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->$uninstalledApp:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$getProgressBarDialog$p(Lcom/leo/salt/tools/apps/ActivityHiddenApps;)Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->hideDialog()V

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->$fail:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->$fail:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->$hasConfigChange:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;

    iget-object v3, v3, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100048

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "reboot_dialog_title"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1$1;

    invoke-direct {v3, p0}, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1$1;-><init>(Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f100049

    sget-object v3, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1$2;->INSTANCE:Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1$2;

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "AlertDialog.Builder(this\u2026    .setCancelable(false)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/leo/script/DialogHelper$Companion;->animDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    iget-object v2, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;

    iget-object v2, v2, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f10004a

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getApksStringInt(R.strin\u2026ks_dead_state_title_xiaa)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "msg.toString()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/leo/script/DialogHelper$Companion;->helpInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    :goto_1
    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->$uninstalledApp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;

    iget-object v1, v1, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->$items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$loadData(Lcom/leo/salt/tools/apps/ActivityHiddenApps;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;

    iget-object v0, v0, Lcom/leo/salt/tools/apps/ActivityHiddenApps$onOptionsItemSelected$1;->this$0:Lcom/leo/salt/tools/apps/ActivityHiddenApps;

    invoke-static {v0}, Lcom/leo/salt/tools/apps/ActivityHiddenApps;->access$loadData(Lcom/leo/salt/tools/apps/ActivityHiddenApps;)V

    :cond_3
    :goto_2
    return-void
.end method
