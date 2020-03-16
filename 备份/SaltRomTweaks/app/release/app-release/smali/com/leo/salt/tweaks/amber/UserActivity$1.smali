.class Lcom/leo/salt/tweaks/amber/UserActivity$1;
.super Landroid/os/Handler;
.source "UserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/amber/UserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/UserActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/amber/UserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$400(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$600(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    const-string v0, "NO"

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$302(Lcom/leo/salt/tweaks/amber/UserActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$000(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    const v0, 0x7f100052

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$502(Lcom/leo/salt/tweaks/amber/UserActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    const-string v0, "NO!"

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$202(Lcom/leo/salt/tweaks/amber/UserActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$100(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$000(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$100(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    const-string v0, "YES"

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$202(Lcom/leo/salt/tweaks/amber/UserActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getDonationData()Ljava/lang/String;

    move-result-object p1

    const-string v3, "LeoROM\uff3bDonate\uff3d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$302(Lcom/leo/salt/tweaks/amber/UserActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$400(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    const v0, 0x7f100174

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$302(Lcom/leo/salt/tweaks/amber/UserActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$400(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    iget-object v0, p1, Lcom/leo/salt/tweaks/amber/UserActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->customization(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$502(Lcom/leo/salt/tweaks/amber/UserActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$700(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$300(Lcom/leo/salt/tweaks/amber/UserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$800(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$500(Lcom/leo/salt/tweaks/amber/UserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$900(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/UserActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->access$200(Lcom/leo/salt/tweaks/amber/UserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
