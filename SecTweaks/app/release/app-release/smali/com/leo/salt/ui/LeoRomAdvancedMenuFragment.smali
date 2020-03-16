.class public Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "LeoRomAdvancedMenuFragment.java"


# instance fields
.field private FragmentContainer:Landroid/content/Intent;

.field gridmode:Landroid/widget/LinearLayout;

.field private gv:Lcom/leo/salt/ui/LineGridView;

.field private gvcall:Lcom/leo/salt/ui/LineGridView;

.field private gvkeyguard:Lcom/leo/salt/ui/LineGridView;

.field private gvkeys:Lcom/leo/salt/ui/LineGridView;

.field private gvpower:Lcom/leo/salt/ui/LineGridView;

.field private gvpulldown:Lcom/leo/salt/ui/LineGridView;

.field private gvsystem:Lcom/leo/salt/ui/LineGridView;

.field private gvtask:Lcom/leo/salt/ui/LineGridView;

.field private listgv:Lcom/leo/salt/ui/LineGridView;

.field private listgvcall:Lcom/leo/salt/ui/LineGridView;

.field private listgvkeyguard:Lcom/leo/salt/ui/LineGridView;

.field private listgvkeys:Lcom/leo/salt/ui/LineGridView;

.field private listgvpower:Lcom/leo/salt/ui/LineGridView;

.field private listgvpulldown:Lcom/leo/salt/ui/LineGridView;

.field private listgvsystem:Lcom/leo/salt/ui/LineGridView;

.field private listgvtask:Lcom/leo/salt/ui/LineGridView;

.field listmode:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->statusbarItem(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->pulldownItem(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->keyguardItem(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->keysItem(I)I

    move-result p0

    return p0
.end method

.method private keyguardItem(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->City:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Launcher:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Recents:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Weather:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Alarm:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->KeyguardMore:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->PowerMeun:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->KeyguardCarrier:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private keysItem(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Floating:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->POP:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->GestureStatusBar:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->GestureHome:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->GestureFinger:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->GestureKeys:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pulldownItem(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelButton:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelOther:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->AnalogClock:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelDeviceInfo:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelCarrier:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->NotificationPanelTime:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private statusbarItem(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Voltage:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarBackground:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarBattery:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarTemperature:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarNetworkspeed:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarLabel:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarIcon:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->StatusBarTime:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    const p3, 0x7f0c004d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->uuThemeView()V

    iget-object p1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gv:Lcom/leo/salt/ui/LineGridView;

    new-instance p2, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$1;

    invoke-direct {p2, p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$1;-><init>(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;)V

    invoke-virtual {p1, p2}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gvpulldown:Lcom/leo/salt/ui/LineGridView;

    new-instance p2, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$2;

    invoke-direct {p2, p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$2;-><init>(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;)V

    invoke-virtual {p1, p2}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gvkeyguard:Lcom/leo/salt/ui/LineGridView;

    new-instance p2, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$3;

    invoke-direct {p2, p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$3;-><init>(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;)V

    invoke-virtual {p1, p2}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgvkeys:Lcom/leo/salt/ui/LineGridView;

    new-instance p2, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$4;

    invoke-direct {p2, p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$4;-><init>(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;)V

    invoke-virtual {p1, p2}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gvkeys:Lcom/leo/salt/ui/LineGridView;

    new-instance p2, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$5;

    invoke-direct {p2, p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$5;-><init>(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;)V

    invoke-virtual {p1, p2}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgv:Lcom/leo/salt/ui/LineGridView;

    new-instance p2, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$6;

    invoke-direct {p2, p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$6;-><init>(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;)V

    invoke-virtual {p1, p2}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgvpulldown:Lcom/leo/salt/ui/LineGridView;

    new-instance p2, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$7;

    invoke-direct {p2, p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$7;-><init>(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;)V

    invoke-virtual {p1, p2}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgvkeyguard:Lcom/leo/salt/ui/LineGridView;

    new-instance p2, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$8;

    invoke-direct {p2, p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment$8;-><init>(Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;)V

    invoke-virtual {p1, p2}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public uuThemeView()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/ui/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gv:Lcom/leo/salt/ui/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gv:Lcom/leo/salt/ui/LineGridView;

    new-instance v1, Lcom/leo/salt/ui/StatusBarMenuGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leo/salt/ui/StatusBarMenuGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/ui/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gvpulldown:Lcom/leo/salt/ui/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gvpulldown:Lcom/leo/salt/ui/LineGridView;

    new-instance v1, Lcom/leo/salt/ui/NotificationPanelGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leo/salt/ui/NotificationPanelGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/ui/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gvkeyguard:Lcom/leo/salt/ui/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gvkeyguard:Lcom/leo/salt/ui/LineGridView;

    new-instance v1, Lcom/leo/salt/ui/KeyguardGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leo/salt/ui/KeyguardGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/ui/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gvkeys:Lcom/leo/salt/ui/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gvkeys:Lcom/leo/salt/ui/LineGridView;

    new-instance v1, Lcom/leo/salt/ui/GesturesFragmentGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leo/salt/ui/GesturesFragmentGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/ui/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgv:Lcom/leo/salt/ui/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgv:Lcom/leo/salt/ui/LineGridView;

    new-instance v1, Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/ui/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgvpulldown:Lcom/leo/salt/ui/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgvpulldown:Lcom/leo/salt/ui/LineGridView;

    new-instance v1, Lcom/leo/salt/ui/list/NotificationPanelGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leo/salt/ui/list/NotificationPanelGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/ui/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgvkeyguard:Lcom/leo/salt/ui/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgvkeyguard:Lcom/leo/salt/ui/LineGridView;

    new-instance v1, Lcom/leo/salt/ui/list/KeyguardGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leo/salt/ui/list/KeyguardGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/ui/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgvkeys:Lcom/leo/salt/ui/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listgvkeys:Lcom/leo/salt/ui/LineGridView;

    new-instance v1, Lcom/leo/salt/ui/list/GesturesFragmentGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leo/salt/ui/list/GesturesFragmentGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listmode:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->view:Landroid/view/View;

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gridmode:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_tweaks_ui_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gridmode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listmode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->listmode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/ui/LeoRomAdvancedMenuFragment;->gridmode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
