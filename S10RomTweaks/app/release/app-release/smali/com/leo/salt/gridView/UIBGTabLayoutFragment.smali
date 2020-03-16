.class public Lcom/leo/salt/gridView/UIBGTabLayoutFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "UIBGTabLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/gridView/UIBGTabLayoutFragment$TabAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/leo/salt/gridView/UIBGTabLayoutFragment$TabAdapter;

.field private mContext:Landroid/content/Context;

.field private mFragments:[Ljava/lang/String;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mTabs:Landroid/support/design/widget/TabLayout;

.field rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const-string v0, "uibg_tab_title"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mFragments:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/gridView/UIBGTabLayoutFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mFragments:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00b6

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->rootView:Landroid/view/View;

    new-instance p1, Lcom/leo/salt/gridView/UIBGTabLayoutFragment$TabAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/leo/salt/gridView/UIBGTabLayoutFragment$TabAdapter;-><init>(Lcom/leo/salt/gridView/UIBGTabLayoutFragment;Landroid/app/FragmentManager;)V

    iput-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mAdapter:Lcom/leo/salt/gridView/UIBGTabLayoutFragment$TabAdapter;

    iget-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090258

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object p2, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mAdapter:Lcom/leo/salt/gridView/UIBGTabLayoutFragment$TabAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090205

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout;

    iput-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mTabs:Landroid/support/design/widget/TabLayout;

    iget-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mTabs:Landroid/support/design/widget/TabLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    iget-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mTabs:Landroid/support/design/widget/TabLayout;

    iget-object p2, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
