.class public Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;
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
    name = "AdvancedGridViewOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/OtherMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/OtherMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

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

    if-eqz p3, :cond_7

    const/4 p1, 0x1

    if-eq p3, p1, :cond_6

    const/4 p1, 0x2

    if-eq p3, p1, :cond_4

    const/4 p1, 0x3

    if-eq p3, p1, :cond_2

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->LeoDonateUnlock()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    const-class p4, Lcom/leo/salt/tweaks/FragSubActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object p3, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Log:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->LeoDonateUnlock()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    const-class p4, Lcom/leo/salt/tweaks/FragSubActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object p3, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Img:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->LeoDonateUnlock()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    const-class p4, Lcom/leo/salt/tweaks/FragSettingActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object p3, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->APPS:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    const-class p4, Lcom/leo/salt/tweaks/FragSubActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object p3, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->AutoStarts:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iput-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    const-string p2, "com.leo.ACTION_WIFI"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object p2, p1, Lcom/leo/salt/gridView/OtherMenuFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method