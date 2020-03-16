.class public Lcom/leo/salt/tweaks/view/BannerLayout;
.super Landroid/widget/RelativeLayout;
.source "BannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/BannerLayout$ImageLoader;,
        Lcom/leo/salt/tweaks/view/BannerLayout$FixedSpeedScroller;,
        Lcom/leo/salt/tweaks/view/BannerLayout$LoopPagerAdapter;,
        Lcom/leo/salt/tweaks/view/BannerLayout$SavedState;,
        Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;,
        Lcom/leo/salt/tweaks/view/BannerLayout$Position;,
        Lcom/leo/salt/tweaks/view/BannerLayout$Shape;
    }
.end annotation


# instance fields
.field private WHAT_AUTO_PLAY:I

.field private autoPlayDuration:I

.field private currentPosition:I

.field private handler:Landroid/os/Handler;

.field private imageLoader:Lcom/leo/salt/tweaks/view/BannerLayout$ImageLoader;

.field private indicatorContainer:Landroid/widget/LinearLayout;

.field private indicatorMargin:I

.field private indicatorPosition:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

.field private indicatorShape:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

.field private indicatorSpace:I

.field private isAutoPlay:Z

.field private itemCount:I

.field private onBannerItemClickListener:Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private scrollDuration:I

.field private selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private selectedIndicatorColor:I

.field private selectedIndicatorHeight:I

.field private selectedIndicatorWidth:I

.field private unSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private unSelectedIndicatorColor:I

.field private unSelectedIndicatorHeight:I

.field private unSelectedIndicatorWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/tweaks/view/BannerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/leo/salt/tweaks/view/BannerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->WHAT_AUTO_PLAY:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->isAutoPlay:Z

    const/high16 p1, -0x10000

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorColor:I

    const p1, -0x77777778

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorColor:I

    sget-object p1, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->oval:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorShape:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    const/4 p1, 0x6

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorHeight:I

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorWidth:I

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorHeight:I

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorWidth:I

    sget-object p1, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->centerBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorPosition:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    const/16 p1, 0xfa0

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->autoPlayDuration:I

    const/16 p1, 0x384

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->scrollDuration:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorSpace:I

    const/16 p1, 0xa

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorMargin:I

    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/BannerLayout$1;-><init>(Lcom/leo/salt/tweaks/view/BannerLayout;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->handler:Landroid/os/Handler;

    invoke-direct {p0, p2, p3}, Lcom/leo/salt/tweaks/view/BannerLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/view/BannerLayout;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->WHAT_AUTO_PLAY:I

    return p0
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/view/BannerLayout;)Landroid/support/v4/view/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/tweaks/view/BannerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->isAutoPlay:Z

    return p0
.end method

.method static synthetic access$300(Lcom/leo/salt/tweaks/view/BannerLayout;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->autoPlayDuration:I

    return p0
.end method

.method static synthetic access$400(Lcom/leo/salt/tweaks/view/BannerLayout;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/leo/salt/tweaks/view/BannerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->currentPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/leo/salt/tweaks/view/BannerLayout;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->itemCount:I

    return p0
.end method

.method static synthetic access$700(Lcom/leo/salt/tweaks/view/BannerLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->switchIndicator(I)V

    return-void
.end method

.method private getImageView(Ljava/lang/String;I)Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/leo/salt/tweaks/view/-$$Lambda$BannerLayout$zjxB3lxBO5EfDW_UiET09Zk_dZM;

    invoke-direct {v1, p0, p2}, Lcom/leo/salt/tweaks/view/-$$Lambda$BannerLayout$zjxB3lxBO5EfDW_UiET09Zk_dZM;-><init>(Lcom/leo/salt/tweaks/view/BannerLayout;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->imageLoader:Lcom/leo/salt/tweaks/view/BannerLayout$ImageLoader;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2, v1, p1, v0}, Lcom/leo/salt/tweaks/view/BannerLayout$ImageLoader;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/tweaks/R$styleable;->BannerLayoutStyle:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iget p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorColor:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorColor:I

    iget p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorColor:I

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorColor:I

    sget-object p2, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->oval:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    invoke-virtual {p2}, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->ordinal()I

    move-result p2

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {}, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->values()[Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->ordinal()I

    move-result v5

    if-ne v5, p2, :cond_0

    iput-object v4, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorShape:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 p2, 0x9

    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorHeight:I

    const/16 p2, 0xa

    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorWidth:I

    const/16 p2, 0xc

    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorHeight:I

    const/16 p2, 0xd

    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorWidth:I

    const/4 p2, 0x3

    sget-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->centerBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->ordinal()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->values()[Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->ordinal()I

    move-result v5

    if-ne p2, v5, :cond_2

    iput-object v4, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorPosition:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x5

    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorSpace:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorSpace:I

    iget p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorMargin:I

    int-to-float p2, p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorMargin:I

    iget p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->autoPlayDuration:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->autoPlayDuration:I

    const/4 p2, 0x7

    iget v1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->scrollDuration:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->scrollDuration:I

    const/4 p2, 0x6

    iget-boolean v1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->isAutoPlay:Z

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->isAutoPlay:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Shape:[I

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorShape:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    if-eq v1, v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :goto_3
    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorWidth:I

    iget v1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedIndicatorHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorColor:I

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorWidth:I

    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedIndicatorHeight:I

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, v2

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private startAutoPlay()V
    .locals 4

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->stopAutoPlay()V

    iget-boolean v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->isAutoPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->WHAT_AUTO_PLAY:I

    iget v2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->autoPlayDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private stopAutoPlay()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    iget-boolean v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->isAutoPlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->WHAT_AUTO_PLAY:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method private switchIndicator(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->startAutoPlay()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->stopAutoPlay()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$getImageView$0$BannerLayout(ILandroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->onBannerItemClickListener:Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->startAutoPlay()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->stopAutoPlay()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/leo/salt/tweaks/view/BannerLayout$SavedState;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/BannerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/leo/salt/tweaks/view/BannerLayout$SavedState;->currentPosition:I

    iput p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->currentPosition:I

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/BannerLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/leo/salt/tweaks/view/BannerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->currentPosition:I

    iput v0, v1, Lcom/leo/salt/tweaks/view/BannerLayout$SavedState;->currentPosition:I

    return-object v1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->startAutoPlay()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->stopAutoPlay()V

    :goto_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->isAutoPlay:Z

    return-void
.end method

.method public setImageLoader(Lcom/leo/salt/tweaks/view/BannerLayout$ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->imageLoader:Lcom/leo/salt/tweaks/view/BannerLayout$ImageLoader;

    return-void
.end method

.method public setOnBannerItemClickListener(Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->onBannerItemClickListener:Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;

    return-void
.end method

.method public setSliderTransformDuration(I)V
    .locals 4

    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Lcom/leo/salt/tweaks/view/BannerLayout$FixedSpeedScroller;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/leo/salt/tweaks/view/BannerLayout$FixedSpeedScroller;-><init>(Lcom/leo/salt/tweaks/view/BannerLayout;Landroid/content/Context;Landroid/view/animation/Interpolator;I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setViewUrls(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->itemCount:I

    iget v1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->itemCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/leo/salt/tweaks/view/BannerLayout;->getImageView(Ljava/lang/String;I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/leo/salt/tweaks/view/BannerLayout;->getImageView(Ljava/lang/String;I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/leo/salt/tweaks/view/BannerLayout;->getImageView(Ljava/lang/String;I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/leo/salt/tweaks/view/BannerLayout;->getImageView(Ljava/lang/String;I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/leo/salt/tweaks/view/BannerLayout;->getImageView(Ljava/lang/String;I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/leo/salt/tweaks/view/BannerLayout;->getImageView(Ljava/lang/String;I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/leo/salt/tweaks/view/BannerLayout;->getImageView(Ljava/lang/String;I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/leo/salt/tweaks/view/BannerLayout;->getImageView(Ljava/lang/String;I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->setViews(Ljava/util/List;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "item count not equal zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViews(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->scrollDuration:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->setSliderTransformDuration(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v2, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Position:[I

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorPosition:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x9

    const/16 v5, 0xe

    const/16 v6, 0xa

    const/16 v7, 0xc

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    iget v2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorMargin:I

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->itemCount:I

    if-ge v0, v2, :cond_0

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorSpace:I

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$LoopPagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/tweaks/view/BannerLayout$LoopPagerAdapter;-><init>(Lcom/leo/salt/tweaks/view/BannerLayout;Ljava/util/List;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->itemCount:I

    const v0, 0x3fffffff    # 1.9999999f

    rem-int p1, v0, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->currentPosition:I

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->itemCount:I

    rem-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->switchIndicator(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/leo/salt/tweaks/view/BannerLayout$2;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/BannerLayout$2;-><init>(Lcom/leo/salt/tweaks/view/BannerLayout;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-boolean p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout;->isAutoPlay:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/BannerLayout;->startAutoPlay()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
