.class public Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;
.super Ljava/lang/Object;
.source "OtherMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/OtherMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemGridViewOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/OtherMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/OtherMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

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

    const/4 p1, 0x2

    if-eq p3, p1, :cond_2

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Lcom/leo/salt/tools/DialogDPI;

    iget-object p2, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p2, p2, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/leo/salt/tools/DialogDPI;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    invoke-virtual {p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iget-object p3, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p3, p3, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, p2, p3}, Lcom/leo/salt/tools/DialogDPI;->modifyDPI(Landroid/view/Display;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    const-class p4, Lcom/leo/salt/tweaks/FragSubActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object p3, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Edge:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    invoke-static {p1}, Lcom/leo/salt/gridView/OtherMenuFragment;->access$000(Lcom/leo/salt/gridView/OtherMenuFragment;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    const-class p4, Lcom/leo/salt/tweaks/FragSubActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object p3, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->SoundSetting:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    const-class p4, Lcom/leo/salt/tweaks/FragSettingActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object p3, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->System:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
