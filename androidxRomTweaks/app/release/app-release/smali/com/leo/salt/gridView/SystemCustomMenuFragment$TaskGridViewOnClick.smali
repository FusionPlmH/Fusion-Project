.class public Lcom/leo/salt/gridView/SystemCustomMenuFragment$TaskGridViewOnClick;
.super Ljava/lang/Object;
.source "SystemCustomMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/SystemCustomMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskGridViewOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/SystemCustomMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/SystemCustomMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment$TaskGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemCustomMenuFragment;

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

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment$TaskGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemCustomMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->TaskBG:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SettingMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/gridView/SystemCustomMenuFragment$TaskGridViewOnClick;->this$0:Lcom/leo/salt/gridView/SystemCustomMenuFragment;

    iget-object p1, p1, Lcom/leo/salt/gridView/SystemCustomMenuFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Storage:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SettingMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;)V

    :goto_0
    return-void
.end method