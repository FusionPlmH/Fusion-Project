.class public abstract Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.super Landroid/widget/RelativeLayout;
.source "MQBaseCustomCompositeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;->getLayoutId()I

    move-result p3

    invoke-static {p1, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;->initView()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;->setListener()V

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;->processLogic()V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;->getAttrs()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;->initAttr(ILandroid/content/res/TypedArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getAttrs()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method protected getViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VT:",
            "Landroid/view/View;",
            ">(I)TVT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected initAttr(ILandroid/content/res/TypedArray;)V
    .locals 0

    return-void
.end method

.method protected abstract initView()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected abstract processLogic()V
.end method

.method protected abstract setListener()V
.end method
