.class public Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQEmotionKeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;,
        Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;,
        Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionPagerAdapter;
    }
.end annotation


# static fields
.field private static final EMOTION_COLUMN:I = 0x7

.field private static final EMOTION_PAGE_SIZE:I = 0x1b

.field private static final EMOTION_ROW:I = 0x4


# instance fields
.field private mCallback:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;

.field private mContentVp:Landroid/support/v4/view/ViewPager;

.field private mGridViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorIvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorLl:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mIndicatorIvList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mCallback:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mGridViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getGridView(I)Landroid/widget/GridView;
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/GridView;->setPadding(IIII)V

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOverScrollMode(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setHorizontalFadingEdgeEnabled(Z)V

    const v0, 0x106000d

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelector(I)V

    new-instance v0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$2;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$2;-><init>(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    mul-int/lit8 p1, p1, 0x1b

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->sEmotionKeyArr:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1b

    invoke-static {v0, p1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, ""

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;

    invoke-direct {p1, p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionAdapter;-><init>(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;Ljava/util/List;)V

    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v1
.end method


# virtual methods
.method protected getAttrs()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_layout_emotion_keyboard:I

    return v0
.end method

.method protected initAttr(ILandroid/content/res/TypedArray;)V
    .locals 0

    return-void
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->vp_emotion_keyboard_content:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mContentVp:Landroid/support/v4/view/ViewPager;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->ll_emotion_keyboard_indicator:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mIndicatorLl:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected processLogic()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mIndicatorIvList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mGridViewList:Ljava/util/ArrayList;

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->sEmotionKeyArr:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x1b

    add-int/2addr v0, v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v6, Lcom/meiqia/meiqiasdk/R$drawable;->mq_selector_emotion_indicator:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v6, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mIndicatorIvList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mIndicatorLl:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mGridViewList:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->getGridView(I)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mIndicatorIvList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mContentVp:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionPagerAdapter;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$EmotionPagerAdapter;-><init>(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public setCallback(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mCallback:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;

    return-void
.end method

.method protected setListener()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->mContentVp:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$1;-><init>(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method
