.class Lcom/leo/salt/ui/AssistMenuFragment$7;
.super Ljava/lang/Object;
.source "AssistMenuFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ui/AssistMenuFragment;->SamsungGoodLuck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/ui/AssistMenuFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/ui/AssistMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/AssistMenuFragment$7;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/leo/salt/ui/AssistMenuFragment$7;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    invoke-virtual {p1}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "com.samsung.android.sidegesturepad"

    const-string v0, "com.samsung.android.sidegesturepad.settings.SGPSettingsActivity"

    const-string v1, "\u5355\u624b\u64cd\u4f5c"

    const-string v2, "com.samsung.android.sidegesturepad"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/leo/salt/widget/DialogUtil;->SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/leo/salt/ui/AssistMenuFragment$7;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    invoke-virtual {p1}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "com.samsung.android.pluginrecents"

    const-string v0, "com.samsung.android.pluginrecents.setting.SettingsActivity"

    const-string v1, "\u591a\u4efb\u52a1\u5207\u6362"

    const-string v2, "com.samsung.android.pluginrecents"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/leo/salt/widget/DialogUtil;->SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/leo/salt/ui/AssistMenuFragment$7;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    invoke-virtual {p1}, Lcom/leo/salt/ui/AssistMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "com.samsung.android.edgelightingeffectunit"

    const-string v0, "com.samsung.android.edgelightingeffectunit.activity.EdgeLightingUnitActivity"

    const-string v1, "\u4fa7\u5c4f\u95ea\u5149"

    const-string v2, "com.samsung.android.edgelightingeffectunit"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/leo/salt/widget/DialogUtil;->SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
