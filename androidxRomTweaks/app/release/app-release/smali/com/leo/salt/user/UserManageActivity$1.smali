.class Lcom/leo/salt/user/UserManageActivity$1;
.super Landroid/os/Handler;
.source "UserManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/user/UserManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/user/UserManageActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/user/UserManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$100(Lcom/leo/salt/user/UserManageActivity;)Landroid/support/v7/widget/CardView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$900(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$1200(Lcom/leo/salt/user/UserManageActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    const-string v0, "NO"

    invoke-static {p1, v0}, Lcom/leo/salt/user/UserManageActivity;->access$802(Lcom/leo/salt/user/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$000(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    const v0, 0x7f10007e

    invoke-virtual {p1, v0}, Lcom/leo/salt/user/UserManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/user/UserManageActivity;->access$1002(Lcom/leo/salt/user/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    const-string v0, "NO!"

    invoke-static {p1, v0}, Lcom/leo/salt/user/UserManageActivity;->access$302(Lcom/leo/salt/user/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$200(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$000(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$100(Lcom/leo/salt/user/UserManageActivity;)Landroid/support/v7/widget/CardView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$200(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    const-string v0, "YES"

    invoke-static {p1, v0}, Lcom/leo/salt/user/UserManageActivity;->access$302(Lcom/leo/salt/user/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->LeoDonateUnlock()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$400(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f06005c

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getColorInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$500(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f060052

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getColorInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$600(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f0600de

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getColorInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$700(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f0600be

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getColorInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1, v0}, Lcom/leo/salt/user/UserManageActivity;->access$802(Lcom/leo/salt/user/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$900(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    const v0, 0x7f10025f

    invoke-virtual {p1, v0}, Lcom/leo/salt/user/UserManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/user/UserManageActivity;->access$802(Lcom/leo/salt/user/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$900(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$1100(Lcom/leo/salt/user/UserManageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->customization(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/user/UserManageActivity;->access$1002(Lcom/leo/salt/user/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$700(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {v0}, Lcom/leo/salt/user/UserManageActivity;->access$800(Lcom/leo/salt/user/UserManageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$600(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {v0}, Lcom/leo/salt/user/UserManageActivity;->access$1000(Lcom/leo/salt/user/UserManageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {p1}, Lcom/leo/salt/user/UserManageActivity;->access$500(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity$1;->this$0:Lcom/leo/salt/user/UserManageActivity;

    invoke-static {v0}, Lcom/leo/salt/user/UserManageActivity;->access$300(Lcom/leo/salt/user/UserManageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
