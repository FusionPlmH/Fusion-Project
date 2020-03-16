.class public Lcom/leo/salt/ui/AssistMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "AssistMenuFragment.java"


# static fields
.field public static final DB_MAIN_BATTERY:Ljava/lang/String; = "leo_battery_GoodLock"

.field private static final Edge:Ljava/lang/String; = "\u4fa7\u5c4f\u95ea\u5149"

.field private static final EdgeLightingUnitActivity:Ljava/lang/String; = "com.samsung.android.edgelightingeffectunit.activity.EdgeLightingUnitActivity"

.field private static final Gesture:Ljava/lang/String; = "\u5355\u624b\u64cd\u4f5c"

.field private static final GestureLightingUnitActivity:Ljava/lang/String; = "com.samsung.android.sidegesturepad.settings.SGPSettingsActivity"

.field private static final Gesturelightingeffectunit:Ljava/lang/String; = "com.samsung.android.sidegesturepad"

.field private static final Recents:Ljava/lang/String; = "\u591a\u4efb\u52a1\u5207\u6362"

.field private static final RecentsLightingUnitActivity:Ljava/lang/String; = "com.samsung.android.pluginrecents.setting.SettingsActivity"

.field private static final Recentslightingeffectunit:Ljava/lang/String; = "com.samsung.android.pluginrecents"

.field private static final edgelightingeffectunit:Ljava/lang/String; = "com.samsung.android.edgelightingeffectunit"


# instance fields
.field public BatterName:Ljava/lang/String;

.field public Batteryurl:Ljava/lang/String;

.field private FragmentContainer:Landroid/content/Intent;

.field gridmode:Landroid/widget/LinearLayout;

.field listmode:Landroid/widget/LinearLayout;

.field private mAdvanced:Lcom/leo/salt/ui/LineGridView;

.field private mContext:Landroid/content/Context;

.field private mListAdvanced:Lcom/leo/salt/ui/LineGridView;

.field private mListSystem:Lcom/leo/salt/ui/LineGridView;

.field private mListSystemUrl:Lcom/leo/salt/ui/LineGridView;

.field private mSystem:Lcom/leo/salt/ui/LineGridView;

.field private mSystemUrl:Lcom/leo/salt/ui/LineGridView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "GoodLock\u7ec4\u4ef6\u56fe\u6807"

    iput-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->BatterName:Ljava/lang/String;

    const-string v0, "file:///android_asset/Samsung.html"

    iput-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->Batteryurl:Ljava/lang/String;

    return-void
.end method

.method private AdvancedItem(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Log:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Property:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->IMG:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Apps:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Autostart:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->Spit()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/WifiPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/ui/AssistMenuFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private SamsungGoodLuck()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/ui/AssistMenuFragment$7;

    invoke-direct {v1, p0}, Lcom/leo/salt/ui/AssistMenuFragment$7;-><init>(Lcom/leo/salt/ui/AssistMenuFragment;)V

    const/high16 v2, 0x7f030000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Spit()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100159

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/ui/AssistMenuFragment$9;

    invoke-direct {v1, p0}, Lcom/leo/salt/ui/AssistMenuFragment$9;-><init>(Lcom/leo/salt/ui/AssistMenuFragment;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/ui/AssistMenuFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/ui/AssistMenuFragment;->AdvancedItem(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/leo/salt/ui/AssistMenuFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/ui/AssistMenuFragment;->systemItem(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/leo/salt/ui/AssistMenuFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/ui/AssistMenuFragment;->systemURLItem(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/leo/salt/ui/AssistMenuFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/ui/AssistMenuFragment;->componetName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/leo/salt/ui/AssistMenuFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private componetName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const p2, 0x7f1002c0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private systemItem(I)I
    .locals 7

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Edge:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Sound:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->SamsungGoodLuck()V

    new-instance v1, Lcom/leo/salt/widget/WebDialog;

    iget-object v2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/leo/salt/ui/AssistMenuFragment;->BatterName:Ljava/lang/String;

    iget-object v4, p0, Lcom/leo/salt/ui/AssistMenuFragment;->Batteryurl:Ljava/lang/String;

    const-string v5, "leo_battery_GoodLock"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->Animation:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->FragmentContainer:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private systemURLItem(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "com.android.systemui"

    const-string v1, "com.android.systemui.egg.MLandActivity"

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/ui/AssistMenuFragment;->componetName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "com.android.systemui"

    const-string v1, "com.android.systemui.DessertCase"

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/ui/AssistMenuFragment;->componetName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.location.AGPSFunctionSwitchList"

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/ui/AssistMenuFragment;->componetName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "\u9996\u6b21\u6253\u5f00\u5f00\u53d1\u8005\u6a21\u5f0f\uff0c\u4f60\u9700\u8981\u624b\u52a8\u8fdb\u5165\u8bbe\u5b9a-\u5173\u4e8e\u624b\u673a-\u8f6f\u4ef6\u4fe1\u606f\u3001\u8fde\u7eed\u70b9\u51fb\u51e0\u6b21\u7f16\u8bd1\u7248\u672c\u53f7\uff0c\u4e0b\u6b21\u5373\u53ef\u6253\u5f00\u5f00\u53d1\u8005\u6a21\u5f0f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10038c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f03003a

    new-instance v2, Lcom/leo/salt/ui/AssistMenuFragment$8;

    invoke-direct {v2, p0}, Lcom/leo/salt/ui/AssistMenuFragment$8;-><init>(Lcom/leo/salt/ui/AssistMenuFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    const v0, 0x7f0c002c

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->listmode:Landroid/widget/LinearLayout;

    const p2, 0x7f0900b9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->gridmode:Landroid/widget/LinearLayout;

    const p2, 0x7f0900e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/ui/LineGridView;

    iput-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mListSystemUrl:Lcom/leo/salt/ui/LineGridView;

    const p2, 0x7f0900be

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/ui/LineGridView;

    iput-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mSystemUrl:Lcom/leo/salt/ui/LineGridView;

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mSystemUrl:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/SystemUrlGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leo/salt/ui/SystemUrlGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mListSystemUrl:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/list/SystemUrlGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leo/salt/ui/list/SystemUrlGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p2, 0x7f0900e0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/ui/LineGridView;

    iput-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mListAdvanced:Lcom/leo/salt/ui/LineGridView;

    const p2, 0x7f0900bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/ui/LineGridView;

    iput-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mAdvanced:Lcom/leo/salt/ui/LineGridView;

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mAdvanced:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/AdvancedGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leo/salt/ui/AdvancedGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mListAdvanced:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/list/AdvancedGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leo/salt/ui/list/AdvancedGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p2, 0x7f0900e8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/ui/LineGridView;

    iput-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mListSystem:Lcom/leo/salt/ui/LineGridView;

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mListSystem:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/list/SystemGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leo/salt/ui/list/SystemGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p2, 0x7f0900bc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/ui/LineGridView;

    iput-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mSystem:Lcom/leo/salt/ui/LineGridView;

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mListAdvanced:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/AssistMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/ui/AssistMenuFragment$1;-><init>(Lcom/leo/salt/ui/AssistMenuFragment;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mAdvanced:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/AssistMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/leo/salt/ui/AssistMenuFragment$2;-><init>(Lcom/leo/salt/ui/AssistMenuFragment;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mSystem:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/AssistMenuFragment$3;

    invoke-direct {v0, p0}, Lcom/leo/salt/ui/AssistMenuFragment$3;-><init>(Lcom/leo/salt/ui/AssistMenuFragment;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mListSystem:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/AssistMenuFragment$4;

    invoke-direct {v0, p0}, Lcom/leo/salt/ui/AssistMenuFragment$4;-><init>(Lcom/leo/salt/ui/AssistMenuFragment;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mListSystemUrl:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/AssistMenuFragment$5;

    invoke-direct {v0, p0}, Lcom/leo/salt/ui/AssistMenuFragment$5;-><init>(Lcom/leo/salt/ui/AssistMenuFragment;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mSystemUrl:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/AssistMenuFragment$6;

    invoke-direct {v0, p0}, Lcom/leo/salt/ui/AssistMenuFragment$6;-><init>(Lcom/leo/salt/ui/AssistMenuFragment;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mSystem:Lcom/leo/salt/ui/LineGridView;

    new-instance v0, Lcom/leo/salt/ui/SystemGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leo/salt/ui/SystemGridViewAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/leo/salt/ui/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_tweaks_ui_style"

    invoke-static {p2, v0, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x8

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->gridmode:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->listmode:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->listmode:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/leo/salt/ui/AssistMenuFragment;->gridmode:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-object p1
.end method
