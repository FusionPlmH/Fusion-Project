.class public Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/PreGingerScroller;
.super Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/ScrollerProxy;
.source "PreGingerScroller.java"


# instance fields
.field private final mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/ScrollerProxy;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIIIII)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return-void
.end method

.method public forceFinished(Z)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method public getCurrX()I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method
