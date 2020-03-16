.class public Lcom/leo/salt/ui/QSClockTabLayoutFragment;
.super Landroid/app/Fragment;
.source "QSClockTabLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/ui/QSClockTabLayoutFragment$TabAdapter;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static final mFragments:[I


# instance fields
.field private mAdapter:Lcom/leo/salt/ui/QSClockTabLayoutFragment$TabAdapter;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mTabs:Landroid/support/design/widget/TabLayout;

.field rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mFragments:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f10032d
        0x7f10032c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    sget-object v0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mFragments:[I

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0085

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->rootView:Landroid/view/View;

    new-instance p1, Lcom/leo/salt/ui/QSClockTabLayoutFragment$TabAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/leo/salt/ui/QSClockTabLayoutFragment$TabAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object p1, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mAdapter:Lcom/leo/salt/ui/QSClockTabLayoutFragment$TabAdapter;

    iget-object p1, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0901b9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object p1, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object p2, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mAdapter:Lcom/leo/salt/ui/QSClockTabLayoutFragment$TabAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090189

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout;

    iput-object p1, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mTabs:Landroid/support/design/widget/TabLayout;

    iget-object p1, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mTabs:Landroid/support/design/widget/TabLayout;

    iget-object p2, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object p1, p0, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
