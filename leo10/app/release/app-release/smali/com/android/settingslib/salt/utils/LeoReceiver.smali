.class public Lcom/android/settingslib/salt/utils/LeoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LeoReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;
    }
.end annotation


# instance fields
.field public mBroadcastListener:Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/salt/utils/LeoReceiver;->mBroadcastListener:Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settingslib/salt/utils/LeoReceiver;->mBroadcastListener:Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;->onLeoChange(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
