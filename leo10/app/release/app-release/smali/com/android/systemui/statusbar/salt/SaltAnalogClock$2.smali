.class Lcom/android/systemui/statusbar/salt/SaltAnalogClock$2;
.super Landroid/content/BroadcastReceiver;
.source "SaltAnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/salt/SaltAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "time-zone"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    new-instance v0, Landroid/text/format/Time;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->access$102(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->access$000(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->invalidate()V

    return-void
.end method
