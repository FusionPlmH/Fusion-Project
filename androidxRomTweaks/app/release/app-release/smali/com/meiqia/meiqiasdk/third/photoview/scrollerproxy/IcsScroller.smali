.class public Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/IcsScroller;
.super Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/GingerScroller;
.source "IcsScroller.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/scrollerproxy/IcsScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method
