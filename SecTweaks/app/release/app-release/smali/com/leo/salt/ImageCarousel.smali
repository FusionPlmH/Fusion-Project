.class public Lcom/leo/salt/ImageCarousel;
.super Ljava/lang/Object;
.source "ImageCarousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/ImageCarousel$AutoPlayThread;
    }
.end annotation


# instance fields
.field private adapter:Lcom/leo/salt/ImagesPagerAdapter;

.field private autoPlayThread:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

.field private context:Landroid/content/Context;

.field private dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private dotsRoot:Landroid/widget/LinearLayout;

.field private volatile isExit:Z

.field private previousPosition:I

.field private simpleDraweeViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            ">;"
        }
    .end annotation
.end field

.field private time:I

.field private titles:[Ljava/lang/String;

.field private tvTitle:Landroid/widget/TextView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/view/ViewPager;Landroid/widget/TextView;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/view/ViewPager;",
            "Landroid/widget/TextView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/ImageCarousel;->previousPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/ImageCarousel;->isExit:Z

    iput-object p1, p0, Lcom/leo/salt/ImageCarousel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/leo/salt/ImageCarousel;->viewPager:Landroid/support/v4/view/ViewPager;

    iput-object p3, p0, Lcom/leo/salt/ImageCarousel;->tvTitle:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/leo/salt/ImageCarousel;->dots:Ljava/util/List;

    iput p5, p0, Lcom/leo/salt/ImageCarousel;->time:I

    const-string p1, "image"

    const-string p2, "\u6784\u9020\u65b9\u6cd5"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/ImageCarousel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ImageCarousel;->simpleDraweeViewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/ImageCarousel;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ImageCarousel;->titles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/ImageCarousel;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ImageCarousel;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/ImageCarousel;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/ImageCarousel;->previousPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/leo/salt/ImageCarousel;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/ImageCarousel;->previousPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/leo/salt/ImageCarousel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ImageCarousel;->dots:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/ImageCarousel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/ImageCarousel;->isExit:Z

    return p0
.end method

.method static synthetic access$600(Lcom/leo/salt/ImageCarousel;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/ImageCarousel;->time:I

    return p0
.end method

.method static synthetic access$700(Lcom/leo/salt/ImageCarousel;)Landroid/support/v4/view/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ImageCarousel;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leo/salt/ImageCarousel;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ImageCarousel;->context:Landroid/content/Context;

    return-object p0
.end method

.method private setAutoPlay(Z)V
    .locals 0

    return-void
.end method

.method private setFirstLocation()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leo/salt/ImageCarousel;->titles:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel;->dots:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f08008d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public init(Ljava/util/List;[Ljava/lang/String;)Lcom/leo/salt/ImageCarousel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/leo/salt/ImageCarousel;"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/ImageCarousel;->simpleDraweeViewList:Ljava/util/List;

    iput-object p2, p0, Lcom/leo/salt/ImageCarousel;->titles:[Ljava/lang/String;

    const-string p1, "image"

    const-string p2, "init"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    invoke-direct {p1, p0}, Lcom/leo/salt/ImageCarousel$AutoPlayThread;-><init>(Lcom/leo/salt/ImageCarousel;)V

    iput-object p1, p0, Lcom/leo/salt/ImageCarousel;->autoPlayThread:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    return-object p0
.end method

.method public reload(Ljava/util/List;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/ImageCarousel;->init(Ljava/util/List;[Ljava/lang/String;)Lcom/leo/salt/ImageCarousel;

    const/4 p1, 0x0

    iput p1, p0, Lcom/leo/salt/ImageCarousel;->previousPosition:I

    invoke-virtual {p0}, Lcom/leo/salt/ImageCarousel;->start()V

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel;->adapter:Lcom/leo/salt/ImagesPagerAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/ImageCarousel;->adapter:Lcom/leo/salt/ImagesPagerAdapter;

    :cond_0
    new-instance v0, Lcom/leo/salt/ImagesPagerAdapter;

    iget-object v1, p0, Lcom/leo/salt/ImageCarousel;->simpleDraweeViewList:Ljava/util/List;

    iget-object v2, p0, Lcom/leo/salt/ImageCarousel;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/leo/salt/ImageCarousel;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/leo/salt/ImagesPagerAdapter;-><init>(Ljava/util/List;Landroid/support/v4/view/ViewPager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/ImageCarousel;->adapter:Lcom/leo/salt/ImagesPagerAdapter;

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/leo/salt/ImageCarousel;->adapter:Lcom/leo/salt/ImagesPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/leo/salt/ImageCarousel$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/ImageCarousel$1;-><init>(Lcom/leo/salt/ImageCarousel;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-direct {p0}, Lcom/leo/salt/ImageCarousel;->setFirstLocation()V

    return-void
.end method

.method public startAutoPlay()V
    .locals 2

    const-string v0, "thrad"

    const-string v1, "\u5f00\u59cb"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/ImageCarousel;->isExit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/ImageCarousel;->autoPlayThread:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    new-instance v0, Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    invoke-direct {v0, p0}, Lcom/leo/salt/ImageCarousel$AutoPlayThread;-><init>(Lcom/leo/salt/ImageCarousel;)V

    iput-object v0, p0, Lcom/leo/salt/ImageCarousel;->autoPlayThread:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel;->autoPlayThread:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    invoke-virtual {v0}, Lcom/leo/salt/ImageCarousel$AutoPlayThread;->start()V

    return-void
.end method

.method public stopAutoPlay()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel;->autoPlayThread:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    if-eqz v0, :cond_0

    const-string v0, "thrad"

    const-string v1, "\u6682\u505c"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/ImageCarousel;->isExit:Z

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel;->autoPlayThread:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    invoke-virtual {v0}, Lcom/leo/salt/ImageCarousel$AutoPlayThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/ImageCarousel;->autoPlayThread:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    :cond_0
    return-void
.end method
