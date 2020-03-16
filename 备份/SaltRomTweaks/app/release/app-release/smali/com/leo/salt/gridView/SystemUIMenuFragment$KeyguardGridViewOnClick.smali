.class public Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridViewOnClick;
.super Ljava/lang/Object;
.source "SystemUIMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/SystemUIMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardGridViewOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/SystemUIMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

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
    iget-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->alarm:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SubMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->weatherwidget:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SubMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->KeyguardCarrier:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SettingMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)V

    :goto_0
    return-void
.end method
