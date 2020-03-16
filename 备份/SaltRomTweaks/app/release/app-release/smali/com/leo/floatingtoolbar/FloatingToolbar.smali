.class public Lcom/leo/floatingtoolbar/FloatingToolbar;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/floatingtoolbar/FloatingToolbar$SavedState;,
        Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;,
        Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;
    }
.end annotation


# static fields
.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field mAnimating:Z

.field private mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

.field private mAppBar:Landroid/support/design/widget/AppBarLayout;

.field private mAutoHide:Z

.field private mClickListener:Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;

.field private mCustomView:Landroid/view/View;

.field mFab:Landroid/support/design/widget/FloatingActionButton;

.field mHandleFabClick:Z

.field private mItemBackground:I

.field private mMenu:Landroid/view/Menu;

.field private mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

.field private mMenuRes:I

.field private mMorphListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mScrollListener:Lcom/leo/floatingtoolbar/FloatingScrollListener;

.field private mShowToast:Z

.field mShowing:Z

.field private mSnackBarManager:Lcom/leo/floatingtoolbar/FloatingSnackBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mViewClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/leo/floatingtoolbar/FloatingToolbar;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Lcom/leo/floatingtoolbar/FloatingToolbar$1;

    invoke-direct {p3, p0}, Lcom/leo/floatingtoolbar/FloatingToolbar$1;-><init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V

    iput-object p3, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mViewClickListener:Landroid/view/View$OnClickListener;

    sget-object p3, Lcom/leo/salt/tweaks/R$styleable;->FloatingToolbar:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x7f040091

    invoke-virtual {v1, v3, p3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, p3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x101030e

    invoke-virtual {v1, v3, p3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMorphListeners:Ljava/util/List;

    new-instance v1, Lcom/leo/floatingtoolbar/FloatingScrollListener;

    invoke-direct {v1, p0}, Lcom/leo/floatingtoolbar/FloatingScrollListener;-><init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V

    iput-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mScrollListener:Lcom/leo/floatingtoolbar/FloatingScrollListener;

    const/4 v1, 0x5

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowToast:Z

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mHandleFabClick:Z

    const/4 v1, 0x3

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mItemBackground:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAutoHide:Z

    const/4 p3, 0x4

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuRes:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mCustomView:Landroid/view/View;

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge p1, v2, :cond_2

    new-instance p1, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;

    invoke-direct {p1, p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;-><init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-direct {p1, p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;-><init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    :goto_0
    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    iget-object v3, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v3}, Lcom/leo/floatingtoolbar/FloatingAnimator;->setContentView(Landroid/view/View;)V

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f07009a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setElevation(F)V

    :cond_4
    iget p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuRes:I

    if-eqz p1, :cond_5

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->createMenuLayout()V

    invoke-direct {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->addMenuItems()V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p1, v1}, Lcom/leo/floatingtoolbar/FloatingAnimator;->setContentView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, p3}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setVisibility(I)V

    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setOrientation(I)V

    new-instance p1, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;

    invoke-direct {p1, p0}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;-><init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mSnackBarManager:Lcom/leo/floatingtoolbar/FloatingSnackBarManager;

    return-void
.end method

.method private addMenuItems()V
    .locals 5

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuRes:I

    iget-object v2, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/SupportMenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setWeightSum(F)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/support/v7/widget/AppCompatImageButton;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->genViewId()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatImageButton;->setId(I)V

    iget v4, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mItemBackground:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatImageButton;->setBackgroundResource(I)V

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/AppCompatImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/AppCompatImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private createMenuLayout()V
    .locals 3

    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-direct {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->genViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->setId(I)V

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0, v1, v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method static dpToPixels(Landroid/content/Context;I)F
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    return p1
.end method

.method private genViewId()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/leo/floatingtoolbar/FloatingToolbar;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const v2, 0xffffff

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object v2, Lcom/leo/floatingtoolbar/FloatingToolbar;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_2
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addMorphListener(Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMorphListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMorphListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public attachAppBarLayout(Landroid/support/design/widget/AppBarLayout;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAppBar:Landroid/support/design/widget/AppBarLayout;

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAppBar:Landroid/support/design/widget/AppBarLayout;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAppBar:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1, v0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->setAppBarLayout(Landroid/support/design/widget/AppBarLayout;)V

    :cond_0
    return-void
.end method

.method public attachFab(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->setFab(Landroid/support/design/widget/FloatingActionButton;)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-virtual {p1, p0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->setFloatingAnimatorListener(Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;)V

    iget-boolean p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mHandleFabClick:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public attachRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mScrollListener:Lcom/leo/floatingtoolbar/FloatingScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public detachAppBarLayout()V
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAppBar:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/floatingtoolbar/FloatingAnimator;->setAppBarLayout(Landroid/support/design/widget/AppBarLayout;)V

    iput-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAppBar:Landroid/support/design/widget/AppBarLayout;

    :cond_0
    return-void
.end method

.method public detachFab()V
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/floatingtoolbar/FloatingAnimator;->setFab(Landroid/support/design/widget/FloatingActionButton;)V

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    :cond_0
    return-void
.end method

.method public detachRecyclerView()V
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mScrollListener:Lcom/leo/floatingtoolbar/FloatingScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    :cond_0
    return-void
.end method

.method dispatchHide()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setVisibility(I)V

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->hide()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimating:Z

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMorphListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;

    invoke-interface {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;->onUnmorphStart()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method dispatchShow()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimating:Z

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->show()V

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMorphListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;

    invoke-interface {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;->onMorphStart()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public enableAutoHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAutoHide:Z

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public handleFabClick(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mHandleFabClick:Z

    iget-boolean p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mHandleFabClick:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mSnackBarManager:Lcom/leo/floatingtoolbar/FloatingSnackBarManager;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->hasSnackBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mSnackBarManager:Lcom/leo/floatingtoolbar/FloatingSnackBarManager;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->dismissAndHide()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->dispatchHide()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FloatingActionButton not attached.Please, use attachFab(FloatingActionButton fab)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isHandlingFabClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mHandleFabClick:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    return v0
.end method

.method public onAnimationFinished()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimating:Z

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMorphListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;

    invoke-interface {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;->onUnmorphEnd()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMorphListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;

    invoke-interface {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;->onMorphEnd()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAutoHide:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->hide()V

    :cond_1
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mClickListener:Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mClickListener:Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;

    invoke-interface {v0, p1}, Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;->onItemClick(Landroid/view/MenuItem;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAppBar:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mClickListener:Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowToast:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mToast:Landroid/widget/Toast;

    const/16 v2, 0x50

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mClickListener:Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;

    invoke-interface {v0, p1}, Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;->onItemLongClick(Landroid/view/MenuItem;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/leo/floatingtoolbar/FloatingToolbar$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/leo/floatingtoolbar/FloatingToolbar$SavedState;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingToolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lcom/leo/floatingtoolbar/FloatingToolbar$SavedState;->morphed:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07009b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/leo/floatingtoolbar/FloatingToolbar$SavedState;

    invoke-direct {v1, v0}, Lcom/leo/floatingtoolbar/FloatingToolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    iput-boolean v0, v1, Lcom/leo/floatingtoolbar/FloatingToolbar$SavedState;->morphed:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutCompat;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimator;->updateDelay()V

    return-void
.end method

.method public removeMorphListener(Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMorphListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMorphListeners()V
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMorphListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setClickListener(Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mClickListener:Lcom/leo/floatingtoolbar/FloatingToolbar$ItemClickListener;

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->removeAllViews()V

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/leo/floatingtoolbar/FloatingAnimator;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setMenu(I)V
    .locals 2

    new-instance v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/view/SupportMenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 1

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->createMenuLayout()V

    :cond_0
    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutCompat;->removeAllViews()V

    invoke-direct {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->addMenuItems()V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimator:Lcom/leo/floatingtoolbar/FloatingAnimator;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mMenuLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p1, v0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mFab:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimating:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mSnackBarManager:Lcom/leo/floatingtoolbar/FloatingSnackBarManager;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->hasSnackBar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mSnackBarManager:Lcom/leo/floatingtoolbar/FloatingSnackBarManager;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->dismissAndShow()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->dispatchShow()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FloatingActionButton not attached.Please, use attachFab(FloatingActionButton fab)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showSnackBar(Landroid/support/design/widget/Snackbar;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mSnackBarManager:Lcom/leo/floatingtoolbar/FloatingSnackBarManager;

    invoke-virtual {v0, p1}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->showSnackBar(Landroid/support/design/widget/Snackbar;)V

    return-void
.end method
