.class public Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;
.super Ljava/lang/Object;
.source "AboutMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/AboutMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewItemOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/AboutMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

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

    if-eqz p3, :cond_4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    const/4 p2, 0x2

    if-eq p3, p2, :cond_2

    const/4 p2, 0x3

    if-eq p3, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseMainlandLanguage()Z

    move-result p2

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->ScienceHttp(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    const-string p2, "https://t.me/joinchat/EJAScg_-vxG8Ppj2HvUifw"

    invoke-virtual {p1, p2}, Lcom/leo/salt/gridView/AboutMenuFragment;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const-string p2, "4zUqpP7ZnFnqswJGwuTDkCbK6zxOZp-5"

    invoke-static {p1, p2}, Lcom/leo/salt/tweaks/view/widget/DialogView;->joinQQGroup(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p2, p2, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const-class p3, Lcom/leo/salt/tweaks/FragSubActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object p3, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Mail:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {p2, p1}, Lcom/leo/salt/gridView/AboutMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p2, p2, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "url"

    const-string p3, "https://weibo.com/leorom"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p2, p2, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
