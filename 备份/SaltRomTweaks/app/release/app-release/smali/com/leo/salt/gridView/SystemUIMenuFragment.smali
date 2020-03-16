.class public Lcom/leo/salt/gridView/SystemUIMenuFragment;
.super Landroid/app/Fragment;
.source "SystemUIMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/gridView/SystemUIMenuFragment$StatusBarGridAdapter;,
        Lcom/leo/salt/gridView/SystemUIMenuFragment$StatusBarGridViewOnClick;,
        Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridViewOnClick;,
        Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;,
        Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridViewOnClick;,
        Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridAdapter;
    }
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field public mContext:Landroid/content/Context;

.field private mKeyguardGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mKeyguardName:Landroid/widget/TextView;

.field private mPanelGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mPanelName:Landroid/widget/TextView;

.field private mStatusBarGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mStatusBarName:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initGridView(Landroid/view/View;)V
    .locals 3

    const-string v0, "grid_statusbar"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mStatusBarGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mStatusBarGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/SystemUIMenuFragment$StatusBarGridAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/gridView/SystemUIMenuFragment$StatusBarGridAdapter;-><init>(Lcom/leo/salt/gridView/SystemUIMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mStatusBarGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/SystemUIMenuFragment$StatusBarGridViewOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/SystemUIMenuFragment$StatusBarGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemUIMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "grid_notificationpanel"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mPanelGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mPanelGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;-><init>(Lcom/leo/salt/gridView/SystemUIMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mPanelGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridViewOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemUIMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "grid_keyguard"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mKeyguardGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mKeyguardGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v0, Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridAdapter;-><init>(Lcom/leo/salt/gridView/SystemUIMenuFragment;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mKeyguardGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v0, Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/SystemUIMenuFragment$KeyguardGridViewOnClick;-><init>(Lcom/leo/salt/gridView/SystemUIMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initValues(Landroid/view/View;)V
    .locals 2

    const-string v0, "grid_system_statusbar"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mStatusBarName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mStatusBarName:Landroid/widget/TextView;

    const-string v1, "grid_status_bar_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "grid_system_notificationpanel"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mPanelName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mPanelName:Landroid/widget/TextView;

    const-string v1, "grid_notificationpanel_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "grid_system_keyguard"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mKeyguardName:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mKeyguardName:Landroid/widget/TextView;

    const-string v0, "grid_keyguard_title"

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public GridTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->getContext()Landroid/content/Context;

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

    const p3, 0x7f0c0087

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->initValues(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->initGridView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mView:Landroid/view/View;

    return-object p1
.end method
