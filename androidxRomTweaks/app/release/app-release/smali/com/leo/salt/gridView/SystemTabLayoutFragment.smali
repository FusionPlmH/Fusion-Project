.class public Lcom/leo/salt/gridView/SystemTabLayoutFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "SystemTabLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/gridView/SystemTabLayoutFragment$TabAdapter;
    }
.end annotation


# static fields
.field private static final mFragments:[I


# instance fields
.field private mAdapter:Lcom/leo/salt/gridView/SystemTabLayoutFragment$TabAdapter;

.field private mContext:Landroid/content/Context;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mTabs:Landroid/support/design/widget/TabLayout;

.field rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mFragments:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1003a4
        0x7f1003a6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    sget-object v0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mFragments:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/leo/salt/gridView/SystemTabLayoutFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00b6

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->rootView:Landroid/view/View;

    new-instance p1, Lcom/leo/salt/gridView/SystemTabLayoutFragment$TabAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/leo/salt/gridView/SystemTabLayoutFragment$TabAdapter;-><init>(Lcom/leo/salt/gridView/SystemTabLayoutFragment;Landroid/app/FragmentManager;)V

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mAdapter:Lcom/leo/salt/gridView/SystemTabLayoutFragment$TabAdapter;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090258

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object p2, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mAdapter:Lcom/leo/salt/gridView/SystemTabLayoutFragment$TabAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090205

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout;

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mTabs:Landroid/support/design/widget/TabLayout;

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mTabs:Landroid/support/design/widget/TabLayout;

    iget-object p2, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/SystemTabLayoutFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method