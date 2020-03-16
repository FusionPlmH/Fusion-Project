.class Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$2;
.super Landroid/content/BroadcastReceiver;
.source "SaltNetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p2}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1500(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->refreshSaltNetworkTraffic()V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1502(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->refreshSaltNetworkTraffic()V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1502(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$800(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V

    :cond_3
    :goto_0
    return-void
.end method
