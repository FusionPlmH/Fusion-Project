.class Lcom/leo/salt/activity/CleanActivity$1;
.super Ljava/lang/Object;
.source "CleanActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/activity/CleanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/activity/CleanActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/activity/CleanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/activity/CleanActivity$1;->this$0:Lcom/leo/salt/activity/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/activity/CleanActivity$1;->this$0:Lcom/leo/salt/activity/CleanActivity;

    invoke-virtual {p1}, Lcom/leo/salt/activity/CleanActivity;->finish()V

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
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/activity/CleanActivity$1;->this$0:Lcom/leo/salt/activity/CleanActivity;

    invoke-static {p1}, Lcom/leo/salt/activity/CleanActivity;->access$000(Lcom/leo/salt/activity/CleanActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/AndroidUtils;->clearmemory(Landroid/content/Context;)V

    return-void
.end method
