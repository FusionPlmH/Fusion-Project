.class Lcom/leo/salt/ui/AssistMenuFragment$8;
.super Ljava/lang/Object;
.source "AssistMenuFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ui/AssistMenuFragment;->systemURLItem(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/ui/AssistMenuFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/ui/AssistMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/AssistMenuFragment$8;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment$8;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    const-string v0, "com.samsung.hiddennetworksetting"

    const-string v1, "com.samsung.hiddennetworksetting.MainActivity"

    invoke-static {p2, v0, v1}, Lcom/leo/salt/ui/AssistMenuFragment;->access$300(Lcom/leo/salt/ui/AssistMenuFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment$8;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    invoke-static {v0}, Lcom/leo/salt/ui/AssistMenuFragment;->access$400(Lcom/leo/salt/ui/AssistMenuFragment;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/leo/salt/activity/PingActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment$8;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    invoke-static {v0}, Lcom/leo/salt/ui/AssistMenuFragment;->access$400(Lcom/leo/salt/ui/AssistMenuFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment$8;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.RadioInfo"

    invoke-static {p2, v0, v1}, Lcom/leo/salt/ui/AssistMenuFragment;->access$300(Lcom/leo/salt/ui/AssistMenuFragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
