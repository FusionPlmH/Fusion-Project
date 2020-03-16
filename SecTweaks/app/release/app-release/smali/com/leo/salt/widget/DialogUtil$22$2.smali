.class Lcom/leo/salt/widget/DialogUtil$22$2;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/DialogUtil$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/widget/DialogUtil$22;


# direct methods
.method constructor <init>(Lcom/leo/salt/widget/DialogUtil$22;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/DialogUtil$22$2;->this$0:Lcom/leo/salt/widget/DialogUtil$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$22$2;->this$0:Lcom/leo/salt/widget/DialogUtil$22;

    iget-object p2, p2, Lcom/leo/salt/widget/DialogUtil$22;->val$context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/widget/DialogUtil$22$2;->this$0:Lcom/leo/salt/widget/DialogUtil$22;

    iget-object v1, v1, Lcom/leo/salt/widget/DialogUtil$22;->val$context:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/donate/DonateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
