.class Lcom/android/systemui/statusbar/salt/SaltClock$3;
.super Landroid/content/BroadcastReceiver;
.source "SaltClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/salt/SaltClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$3;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$3;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$700(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$3;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$700(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock$3;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$800(Lcom/android/systemui/statusbar/salt/SaltClock;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$3;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$700(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$3;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$700(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock$3;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$800(Lcom/android/systemui/statusbar/salt/SaltClock;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long v0, v0, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
