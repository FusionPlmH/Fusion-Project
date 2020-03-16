.class public Lcom/leo/salt/ImagesPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ImagesPagerAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private simpleDraweeView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private simpleDraweeViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v4/view/ViewPager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            ">;",
            "Landroid/support/v4/view/ViewPager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/ImagesPagerAdapter;->simpleDraweeViewList:Ljava/util/List;

    iput-object p2, p0, Lcom/leo/salt/ImagesPagerAdapter;->viewPager:Landroid/support/v4/view/ViewPager;

    iput-object p3, p0, Lcom/leo/salt/ImagesPagerAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/ImagesPagerAdapter;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object p3, p0, Lcom/leo/salt/ImagesPagerAdapter;->simpleDraweeViewList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/ImagesPagerAdapter;->simpleDraweeViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/leo/salt/ImagesPagerAdapter;->simpleDraweeView:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object p1, p0, Lcom/leo/salt/ImagesPagerAdapter;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object p2, p0, Lcom/leo/salt/ImagesPagerAdapter;->simpleDraweeView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/ImagesPagerAdapter;->simpleDraweeView:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
