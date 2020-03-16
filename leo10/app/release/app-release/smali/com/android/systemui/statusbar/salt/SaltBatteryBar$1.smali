.class Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;
.super Landroid/content/BroadcastReceiver;
.source "SaltBatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/salt/SaltBatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    const/4 v0, 0x0

    const-string v2, "level"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->access$002(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;I)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    const-string v2, "status"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->access$102(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->access$100(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->access$000(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;)I

    move-result p1

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->stop()V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->access$000(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->access$200(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;I)V

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->stop()V

    goto :goto_1

    :cond_3
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->access$100(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->access$000(Lcom/android/systemui/statusbar/salt/SaltBatteryBar;)I

    move-result p1

    if-ge p1, v1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->start()V

    :cond_4
    :goto_1
    return-void
.end method
