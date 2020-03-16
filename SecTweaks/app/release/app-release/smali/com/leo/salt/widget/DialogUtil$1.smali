.class final Lcom/leo/salt/widget/DialogUtil$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/DialogUtil;->getQQ(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/DialogUtil$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$1;->val$context:Landroid/app/Activity;

    const-string v0, "MXBxvdB3lrh5wrfulRmklP8ueAH-i9QR"

    invoke-static {p2, v0}, Lcom/leo/salt/widget/DialogUtil;->joinQQGroup(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$1;->val$context:Landroid/app/Activity;

    const-string v0, "4zUqpP7ZnFnqswJGwuTDkCbK6zxOZp-5"

    invoke-static {p2, v0}, Lcom/leo/salt/widget/DialogUtil;->joinQQGroup(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
