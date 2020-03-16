.class Lcom/android/systemui/statusbar/salt/SaltMainBattery$1;
.super Landroid/content/BroadcastReceiver;
.source "SaltMainBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/salt/SaltMainBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltMainBattery;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltMainBattery;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->access$000(Lcom/android/systemui/statusbar/salt/SaltMainBattery;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    const/4 v0, 0x0

    const-string v1, "level"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryLevel:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    const-string v1, "status"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->access$102(Lcom/android/systemui/statusbar/salt/SaltMainBattery;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->access$200(Lcom/android/systemui/statusbar/salt/SaltMainBattery;)V

    :cond_1
    return-void
.end method
