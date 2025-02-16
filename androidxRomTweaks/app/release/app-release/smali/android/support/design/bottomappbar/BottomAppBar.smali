.class public Landroid/support/design/bottomappbar/BottomAppBar;
.super Landroid/support/v7/widget/Toolbar;
.source "BottomAppBar.java"

# interfaces
.implements Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/bottomappbar/BottomAppBar$SavedState;,
        Landroid/support/design/bottomappbar/BottomAppBar$Behavior;,
        Landroid/support/design/bottomappbar/BottomAppBar$FabAlignmentMode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x12cL

.field public static final FAB_ALIGNMENT_MODE_CENTER:I = 0x0

.field public static final FAB_ALIGNMENT_MODE_END:I = 0x1


# instance fields
.field private attachAnimator:Landroid/animation/Animator;

.field private fabAlignmentMode:I

.field fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private fabAttached:Z

.field private final fabOffsetEndMode:I

.field private hideOnScroll:Z

.field private final materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

.field private menuAnimator:Landroid/animation/Animator;

.field private modeAnimator:Landroid/animation/Animator;

.field private final topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/design/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/design/R$attr;->bottomAppBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$7;

    invoke-direct {v1, p0}, Landroid/support/design/bottomappbar/BottomAppBar$7;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    iput-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    sget-object v4, Landroid/support/design/R$styleable;->BottomAppBar:[I

    sget v6, Landroid/support/design/R$style;->Widget_MaterialComponents_BottomAppBar:I

    const/4 v1, 0x0

    new-array v7, v1, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v2 .. v7}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Landroid/support/design/R$styleable;->BottomAppBar_backgroundTint:I

    invoke-static {p1, p2, p3}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    sget p3, Landroid/support/design/R$styleable;->BottomAppBar_fabCradleMargin:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    int-to-float p3, p3

    sget v2, Landroid/support/design/R$styleable;->BottomAppBar_fabCradleRoundedCornerRadius:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Landroid/support/design/R$styleable;->BottomAppBar_fabCradleVerticalOffset:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    sget v4, Landroid/support/design/R$styleable;->BottomAppBar_fabAlignmentMode:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    sget v4, Landroid/support/design/R$styleable;->BottomAppBar_hideOnScroll:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->hideOnScroll:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Landroid/support/design/R$dimen;->mtrl_bottomappbar_fabOffsetEndMode:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    new-instance p2, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {p2, p3, v2, v3}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;-><init>(FFF)V

    iput-object p2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    new-instance p2, Landroid/support/design/shape/ShapePathModel;

    invoke-direct {p2}, Landroid/support/design/shape/ShapePathModel;-><init>()V

    iget-object p3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {p2, p3}, Landroid/support/design/shape/ShapePathModel;->setTopEdge(Landroid/support/design/shape/EdgeTreatment;)V

    new-instance p3, Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-direct {p3, p2}, Landroid/support/design/shape/MaterialShapeDrawable;-><init>(Landroid/support/design/shape/ShapePathModel;)V

    iput-object p3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    iget-object p2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {p2, v0}, Landroid/support/design/shape/MaterialShapeDrawable;->setShadowEnabled(Z)V

    iget-object p2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->setPaintStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-static {p2, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$002(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;
    .locals 0

    iget-object p0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->addFabAnimationListeners(Landroid/support/design/widget/FloatingActionButton;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/widget/FloatingActionButton;
    .locals 0

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Landroid/support/design/bottomappbar/BottomAppBar;)Z
    .locals 0

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isAnimationRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->setCutoutState()V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/design/bottomappbar/BottomAppBar;)F
    .locals 0

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/shape/MaterialShapeDrawable;
    .locals 0

    iget-object p0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    return-object p0
.end method

.method static synthetic access$302(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/bottomappbar/BottomAppBar;->translateActionMenuView(Landroid/support/v7/widget/ActionMenuView;IZ)V

    return-void
.end method

.method static synthetic access$502(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Landroid/support/design/bottomappbar/BottomAppBar;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    return p0
.end method

.method static synthetic access$700(Landroid/support/design/bottomappbar/BottomAppBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateAttachChange(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/design/bottomappbar/BottomAppBar;)I
    .locals 0

    iget p0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return p0
.end method

.method static synthetic access$900(Landroid/support/design/bottomappbar/BottomAppBar;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    return-void
.end method

.method private addFabAnimationListeners(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->removeFabAnimationListeners(Landroid/support/design/widget/FloatingActionButton;)V

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private cancelAnimations()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    return-void
.end method

.method private createCradleShapeAnimation(ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v2}, Landroid/support/design/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBar$6;

    invoke-direct {v0, p0}, Landroid/support/design/bottomappbar/BottomAppBar$6;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createCradleTranslationAnimation(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v2}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getHorizontalOffset()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result p1

    int-to-float p1, p1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBar$2;

    invoke-direct {v0, p0}, Landroid/support/design/bottomappbar/BottomAppBar$2;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createFabTranslationXAnimation(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string p1, "translationX"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createFabTranslationYAnimation(ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY(Z)F

    move-result p1

    aput p1, v1, v2

    const-string p1, "translationY"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createMenuViewTranslationAnimation(IZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getActionMenuView()Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v5, "alpha"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-boolean v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    if-nez v6, :cond_1

    if-eqz p2, :cond_2

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    if-eq v6, v1, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_4

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_0
    new-array v3, v1, [F

    const/4 v6, 0x0

    aput v6, v3, v4

    invoke-static {v0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Landroid/support/design/bottomappbar/BottomAppBar$4;

    invoke-direct {v5, p0, v0, p1, p2}, Landroid/support/design/bottomappbar/BottomAppBar$4;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0x96

    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v3, p2, v4

    aput-object v2, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private findDependentFab()Landroid/support/design/widget/FloatingActionButton;
    .locals 4

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Landroid/support/design/widget/FloatingActionButton;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/support/design/widget/FloatingActionButton;

    return-object v2

    :cond_2
    return-object v1
.end method

.method private getActionMenuView()Landroid/support/v7/widget/ActionMenuView;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/support/v7/widget/ActionMenuView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFabTranslationX()F
    .locals 1

    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    invoke-direct {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getFabTranslationX(I)I
    .locals 3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    sub-int/2addr p1, v1

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    :cond_1
    mul-int v1, p1, v2

    :cond_2
    return v1
.end method

.method private getFabTranslationY()F
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY(Z)F

    move-result v0

    return v0
.end method

.method private getFabTranslationY(Z)F
    .locals 6

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v3, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    int-to-float v3, v1

    :cond_1
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v1

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    add-float/2addr v4, v1

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    if-eqz p1, :cond_2

    move v0, v4

    :cond_2
    add-float/2addr v1, v0

    return v1
.end method

.method private isAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVisibleFab()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->isOrWillBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeAnimateAttachChange(Z)V
    .locals 2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->createCradleShapeAnimation(ZLjava/util/List;)V

    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->createFabTranslationYAnimation(ZLjava/util/List;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBar$5;

    invoke-direct {v0, p0}, Landroid/support/design/bottomappbar/BottomAppBar$5;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private maybeAnimateMenuView(IZ)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    new-instance p2, Landroid/support/design/bottomappbar/BottomAppBar$3;

    invoke-direct {p2, p0}, Landroid/support/design/bottomappbar/BottomAppBar$3;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private maybeAnimateModeChange(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    if-eq v0, p1, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->createCradleTranslationAnimation(ILjava/util/List;)V

    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->createFabTranslationXAnimation(ILjava/util/List;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBar$1;

    invoke-direct {v0, p0}, Landroid/support/design/bottomappbar/BottomAppBar$1;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeFabAnimationListeners(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setCutoutState()V
    .locals 4

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    iget-boolean v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setTranslationX(F)V

    :cond_1
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getActionMenuView()Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->setAlpha(F)V

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/support/design/bottomappbar/BottomAppBar;->translateActionMenuView(Landroid/support/v7/widget/ActionMenuView;IZ)V

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iget-boolean v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/bottomappbar/BottomAppBar;->translateActionMenuView(Landroid/support/v7/widget/ActionMenuView;IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private translateActionMenuView(Landroid/support/v7/widget/ActionMenuView;IZ)V
    .locals 8

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p0, v3}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/Toolbar$LayoutParams;

    iget v6, v6, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    const v7, 0x800007

    and-int/2addr v6, v7

    const v7, 0x800003

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->getRight()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->getLeft()I

    move-result v0

    :goto_4
    sub-int/2addr v4, v0

    if-ne p2, v2, :cond_6

    if-eqz p3, :cond_6

    int-to-float p2, v4

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ActionMenuView;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Landroid/support/design/shape/MaterialShapeDrawable;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
            "Landroid/support/design/bottomappbar/BottomAppBar;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;-><init>()V

    return-object v0
.end method

.method public getCradleVerticalOffset()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result v0

    return v0
.end method

.method public getFabAlignmentMode()I
    .locals 1

    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return v0
.end method

.method public getFabCradleMargin()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleMargin()F

    move-result v0

    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleRoundedCornerRadius()F

    move-result v0

    return v0
.end method

.method public getHideOnScroll()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->hideOnScroll:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/Toolbar;->onLayout(ZIIII)V

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->cancelAnimations()V

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->setCutoutState()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    invoke-virtual {p1}, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    iput v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iget-boolean p1, p1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    iput-boolean p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iput v0, v1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    iput-boolean v0, v1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    return-object v1
.end method

.method public replaceMenu(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->inflateMenu(I)V

    return-void
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0, p1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateModeChange(I)V

    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    iput p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0, p1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleMargin(F)V

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0, p1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleRoundedCornerRadius(F)V

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method setFabDiameter(I)V
    .locals 1

    int-to-float p1, p1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabDiameter()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0, p1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabDiameter(F)V

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->hideOnScroll:Z

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
