.class Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ExtraInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/extrainfo/ExtraInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$002(Lcom/leo/salt/extrainfo/ExtraInfoFragment;I)I

    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    const-string v0, "temperature"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v2, v0

    invoke-static {p1, v2, v3}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$102(Lcom/leo/salt/extrainfo/ExtraInfoFragment;D)D

    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$100(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    iput-wide v2, p1, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->T:D

    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    const-string v0, "technology"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->technology:Ljava/lang/String;

    const-string p1, "plugged"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    const-string v0, "USB"

    iput-object v0, p1, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->acString:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->acString:Ljava/lang/String;

    :goto_0
    const-string p1, "status"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$302(Lcom/leo/salt/extrainfo/ExtraInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$302(Lcom/leo/salt/extrainfo/ExtraInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$302(Lcom/leo/salt/extrainfo/ExtraInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$302(Lcom/leo/salt/extrainfo/ExtraInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$302(Lcom/leo/salt/extrainfo/ExtraInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    const-string p1, "health"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_2

    goto :goto_2

    :pswitch_7
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000d4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$402(Lcom/leo/salt/extrainfo/ExtraInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :pswitch_8
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000d3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$402(Lcom/leo/salt/extrainfo/ExtraInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :pswitch_9
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000d5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$402(Lcom/leo/salt/extrainfo/ExtraInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :pswitch_a
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000d2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$402(Lcom/leo/salt/extrainfo/ExtraInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :pswitch_b
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000d1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$402(Lcom/leo/salt/extrainfo/ExtraInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    iget-object p1, p1, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->TV:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$000(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$300(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$400(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    iget-wide v0, v0, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->T:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\u2103\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    iget-object v0, v0, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->acString:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    iget-object v0, v0, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->technology:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$500(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$600(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$700(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-virtual {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->getDesignCapacity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$200(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/extrainfo/ExtraInfoFragment;

    invoke-static {v0}, Lcom/leo/salt/extrainfo/ExtraInfoFragment;->access$800(Lcom/leo/salt/extrainfo/ExtraInfoFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
