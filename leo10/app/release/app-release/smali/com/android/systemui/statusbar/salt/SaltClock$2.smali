.class Lcom/android/systemui/statusbar/salt/SaltClock$2;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$SaltClock$2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    iget-object p1, p1, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    iget-object p1, p1, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    iget-object v0, v0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onReceive$1$SaltClock$2(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    iget-object v0, v0, Lcom/android/systemui/statusbar/salt/SaltClock;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    iput-object p1, v0, Lcom/android/systemui/statusbar/salt/SaltClock;->mLocale:Ljava/util/Locale;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$600(Lcom/android/systemui/statusbar/salt/SaltClock;)V

    return-void
.end method

.method public synthetic lambda$onReceive$2$SaltClock$2()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClock()V

    return-void
.end method

.method public synthetic lambda$onReceive$3$SaltClock$2()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockVisibility()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$200(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$bm2LYdCkHv_QMbuYQPop4aDNV-g;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$bm2LYdCkHv_QMbuYQPop4aDNV-g;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/salt/SaltClock;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$200(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$DoRlYgjPcGTOFo7E3fg5RUz_2TM;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$DoRlYgjPcGTOFo7E3fg5RUz_2TM;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock$2;Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$302(Lcom/android/systemui/statusbar/salt/SaltClock;Z)Z

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$302(Lcom/android/systemui/statusbar/salt/SaltClock;Z)Z

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$300(Lcom/android/systemui/statusbar/salt/SaltClock;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$54_LCsnCENzZWvTVrey_A4OUzEw;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$54_LCsnCENzZWvTVrey_A4OUzEw;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$400(Lcom/android/systemui/statusbar/salt/SaltClock;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$500(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$F8zSeoSKlcy0ELtGKmJ8x8o7jZw;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$F8zSeoSKlcy0ELtGKmJ8x8o7jZw;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
