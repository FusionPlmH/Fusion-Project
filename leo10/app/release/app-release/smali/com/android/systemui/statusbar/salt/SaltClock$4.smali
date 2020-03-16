.class Lcom/android/systemui/statusbar/salt/SaltClock$4;
.super Ljava/lang/Object;
.source "SaltClock.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$4;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$4;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    iget-object v0, v0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$4;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClock()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$4;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$700(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    mul-long v1, v1, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
