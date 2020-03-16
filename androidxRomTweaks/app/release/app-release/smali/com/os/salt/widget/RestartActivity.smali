.class public Lcom/os/salt/widget/RestartActivity;
.super Landroid/app/Activity;
.source "RestartActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/os/salt/widget/RestartActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/os/salt/widget/RestartActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f080085

    invoke-static {p0, p1, v0}, Lcom/os/salt/OSBuild;->startWidgetShortcut(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/os/salt/widget/RestartActivity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/os/salt/globalactions/Utils;->S10reboot()I

    move-result p1

    invoke-static {p0, p1}, Lcom/os/salt/globalactions/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/os/salt/widget/RestartActivity;->finish()V

    return-void
.end method
