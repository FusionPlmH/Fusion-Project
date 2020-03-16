.class public Lcom/leo/salt/gridView/GestureBuilderMenuFragment;
.super Landroid/app/Fragment;
.source "GestureBuilderMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;,
        Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridViewOnClick;,
        Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureScreenGridAdapter;,
        Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureScreenGridViewOnClick;,
        Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridAdapter;,
        Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field private mKyesGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mKyesName:Landroid/widget/TextView;

.field private mOtherGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mOtherName:Landroid/widget/TextView;

.field private mScreenGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mScreenName:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initGridView(Landroid/view/View;)V
    .locals 3

    const-string v0, "grid_keypress"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mKyesGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mKyesGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridAdapter;-><init>(Lcom/leo/salt/gridView/GestureBuilderMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mKyesGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;-><init>(Lcom/leo/salt/gridView/GestureBuilderMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "grid_screen"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mScreenGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mScreenGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureScreenGridAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureScreenGridAdapter;-><init>(Lcom/leo/salt/gridView/GestureBuilderMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mScreenGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureScreenGridViewOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureScreenGridViewOnClick;-><init>(Lcom/leo/salt/gridView/GestureBuilderMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "grid_other"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mOtherGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mOtherGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;-><init>(Lcom/leo/salt/gridView/GestureBuilderMenuFragment;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mOtherGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridViewOnClick;-><init>(Lcom/leo/salt/gridView/GestureBuilderMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initValues(Landroid/view/View;)V
    .locals 2

    const-string v0, "grid_keypress_title"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mKyesName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mKyesName:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "grid_screen_title"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mScreenName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mScreenName:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "grid_other_title"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mOtherName:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mOtherName:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public GridTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->getContext()Landroid/content/Context;

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

    const p3, 0x7f0c0085

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->initValues(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->initGridView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mView:Landroid/view/View;

    return-object p1
.end method
