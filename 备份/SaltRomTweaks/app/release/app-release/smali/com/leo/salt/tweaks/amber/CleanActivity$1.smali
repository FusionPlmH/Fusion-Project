.class Lcom/leo/salt/tweaks/amber/CleanActivity$1;
.super Ljava/lang/Object;
.source "CleanActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/amber/CleanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/CleanActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/amber/CleanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/CleanActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/CleanActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/CleanActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/CleanActivity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    const-string p1, "ro.build.leo"

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->safety:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.leo.global.action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/String;

    const-string v2, "bGVvX2FjdGlvbg=="

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/16 v0, 0x7cf

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/CleanActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/CleanActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/CleanActivity;->access$000(Lcom/leo/salt/tweaks/amber/CleanActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/CleanActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/CleanActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/CleanActivity;->access$000(Lcom/leo/salt/tweaks/amber/CleanActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "global_no_donate_info"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
