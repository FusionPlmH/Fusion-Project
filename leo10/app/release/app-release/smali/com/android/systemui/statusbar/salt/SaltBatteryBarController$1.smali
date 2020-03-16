.class Lcom/android/systemui/statusbar/salt/SaltBatteryBarController$1;
.super Landroid/content/BroadcastReceiver;
.source "SaltBatteryBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;

    const/4 v1, 0x0

    const-string v2, "level"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->access$002(Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;

    const-string v2, "status"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->access$102(Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;Z)Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->access$000(Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settingslib/salt/SaltConfigFrame$Prefs;->setLastBatteryLevel(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
