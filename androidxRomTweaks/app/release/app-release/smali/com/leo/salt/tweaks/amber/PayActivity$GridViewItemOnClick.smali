.class public Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/amber/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewItemOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/PayActivity;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/amber/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-eqz p3, :cond_5

    const/4 p1, 0x1

    if-eq p3, p1, :cond_4

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3

    const/4 p1, 0x3

    if-eq p3, p1, :cond_2

    const/4 p1, 0x4

    if-eq p3, p1, :cond_1

    const/4 p1, 0x5

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->finish()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->access$000(Lcom/leo/salt/tweaks/amber/PayActivity;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "scanner.ui.BaseScanUI"

    invoke-static {p1, p2}, Lcom/os/salt/OSBuild$Utils;->WeChatScan(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->finish()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->access$000(Lcom/leo/salt/tweaks/amber/PayActivity;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "collect.ui.CollectMainUI"

    invoke-static {p1, p2}, Lcom/os/salt/OSBuild$Utils;->WeChatScan(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->finish()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->access$000(Lcom/leo/salt/tweaks/amber/PayActivity;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "offline.ui.WalletOfflineCoinPurseUI"

    invoke-static {p1, p2}, Lcom/os/salt/OSBuild$Utils;->WeChatScan(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->finish()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->access$000(Lcom/leo/salt/tweaks/amber/PayActivity;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "10000007"

    invoke-static {p1, p2}, Lcom/os/salt/OSBuild$Utils;->toAliPayCode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->finish()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->access$000(Lcom/leo/salt/tweaks/amber/PayActivity;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "20000123"

    invoke-static {p1, p2}, Lcom/os/salt/OSBuild$Utils;->toAliPayCode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->finish()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->access$000(Lcom/leo/salt/tweaks/amber/PayActivity;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "20000056"

    invoke-static {p1, p2}, Lcom/os/salt/OSBuild$Utils;->toAliPayCode(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
