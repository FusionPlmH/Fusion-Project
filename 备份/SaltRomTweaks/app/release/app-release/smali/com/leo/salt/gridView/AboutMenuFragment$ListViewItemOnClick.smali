.class public Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;
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
    name = "ListViewItemOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/AboutMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

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

    if-eqz p3, :cond_3

    const/4 p1, 0x1

    if-eq p3, p1, :cond_2

    const/4 p1, 0x2

    if-eq p3, p1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "package:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {p3}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {p2, p1}, Lcom/leo/salt/gridView/AboutMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p2, p2, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const-class p3, Lcom/leo/salt/tweaks/FragSubActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object p3, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->HardwareInfo:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {p2, p1}, Lcom/leo/salt/gridView/AboutMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {p2}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "phone_info"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f080082

    iget-object p4, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p4, p4, Lcom/leo/salt/gridView/AboutMenuFragment;->phoneInfoName:[Ljava/lang/String;

    iget-object p5, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p5, p5, Lcom/leo/salt/gridView/AboutMenuFragment;->phoneInfoMessage:[Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/leo/salt/tweaks/view/widget/DialogView;->initInfoView(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {p2}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "android_info"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f08006e

    iget-object p4, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p4, p4, Lcom/leo/salt/gridView/AboutMenuFragment;->AndroidInfoName:[Ljava/lang/String;

    iget-object p5, p0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object p5, p5, Lcom/leo/salt/gridView/AboutMenuFragment;->AndroidInfoMessage:[Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/leo/salt/tweaks/view/widget/DialogView;->initInfoView(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
