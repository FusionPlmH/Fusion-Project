.class public Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;
.super Ljava/lang/Object;
.source "GestureBuilderMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/GestureBuilderMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureBuilderGridViewOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/GestureBuilderMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

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

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->LockVolumeAction:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SubMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)V

    :pswitch_1
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Fingerprint:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SubMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->MiniPOP:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SettingMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->FloatBall:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SettingMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->KeyguardAction:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SubMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->StatusBarAction:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SubMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->GesturesLauncher:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SettingMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->GlobalGestures:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SettingMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->HWKWYS:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SettingMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)V

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Power:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SubMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Bixby:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SubMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
