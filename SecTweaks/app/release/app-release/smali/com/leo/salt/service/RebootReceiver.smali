.class public Lcom/leo/salt/service/RebootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RebootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/leo/salt/utils/root/Helpers$Companion;->LeoRestartMeun(Landroid/content/Context;I)V

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method
