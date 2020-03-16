.class public Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridViewOnClick;
.super Ljava/lang/Object;
.source "SystemDisplayMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/SystemDisplayMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskGridViewOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/SystemDisplayMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

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

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->TaskBG:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SettingMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

    invoke-virtual {p1}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

    const-string p3, "goodlock_item_3"

    invoke-virtual {p2, p3}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.samsung.android.pluginrecents"

    const-string p4, "com.samsung.android.pluginrecents.setting.SettingsActivity"

    invoke-static {p1, p3, p4, p2}, Lcom/leo/salt/tweaks/view/widget/DialogView;->SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Storage:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SettingMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)V

    :goto_0
    return-void
.end method
