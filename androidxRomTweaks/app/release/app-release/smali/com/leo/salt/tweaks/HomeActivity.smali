.class public Lcom/leo/salt/tweaks/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/HomeActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/HomeActivity;->finish()V

    return-void
.end method
