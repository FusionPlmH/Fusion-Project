.class public Lcom/leo/salt/gridView/SystemDisplayMenuFragment;
.super Landroid/app/Fragment;
.source "SystemDisplayMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;,
        Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridViewOnClick;,
        Lcom/leo/salt/gridView/SystemDisplayMenuFragment$PowerMenuGridAdapter;,
        Lcom/leo/salt/gridView/SystemDisplayMenuFragment$PowerMenuGridViewOnClick;,
        Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridViewOnClick;,
        Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridAdapter;
    }
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field public mContext:Landroid/content/Context;

.field private mNavigationBarGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mNavigationBarName:Landroid/widget/TextView;

.field private mPowerMenuGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mPowerMenuName:Landroid/widget/TextView;

.field private mTaskGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mTaskName:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initGridView(Landroid/view/View;)V
    .locals 3

    const-string v0, "grid_powermenu"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mPowerMenuGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mPowerMenuGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$PowerMenuGridAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$PowerMenuGridAdapter;-><init>(Lcom/leo/salt/gridView/SystemDisplayMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mPowerMenuGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$PowerMenuGridViewOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$PowerMenuGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemDisplayMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "grid_navigationbar"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mNavigationBarGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mNavigationBarGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;-><init>(Lcom/leo/salt/gridView/SystemDisplayMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mNavigationBarGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridViewOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemDisplayMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "grid_task"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mTaskGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mTaskGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridAdapter;-><init>(Lcom/leo/salt/gridView/SystemDisplayMenuFragment;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mTaskGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$TaskGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemDisplayMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initValues(Landroid/view/View;)V
    .locals 2

    const-string v0, "grid_system_powermenu"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mPowerMenuName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mPowerMenuName:Landroid/widget/TextView;

    const-string v1, "grid_powermenu_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "grid_system_navigationbar"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mNavigationBarName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mNavigationBarName:Landroid/widget/TextView;

    const-string v1, "grid_navigation_bar_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "grid_system_task"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mTaskName:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mTaskName:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public GridTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0084

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->initValues(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->initGridView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mView:Landroid/view/View;

    return-object p1
.end method
