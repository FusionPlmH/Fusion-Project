.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    iget p1, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V
    .locals 3

    const/4 p4, 0x0

    const/4 v0, -0x1

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    move v0, p3

    const/4 p3, 0x0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    const/4 p5, -0x1

    :goto_0
    if-eq p3, v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    iput v1, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    iput p4, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v1, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr p4, v1

    add-int/2addr p3, p5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_1

    :cond_0
    add-int/lit8 p0, p1, 0x1

    new-array p0, p0, [I

    :cond_1
    const/4 v1, 0x0

    aput v1, p0, v1

    div-int v2, p2, p1

    rem-int/2addr p2, p1

    const/4 v3, 0x0

    :goto_0
    if-gt v0, p1, :cond_3

    add-int/2addr v1, p2

    if-lez v1, :cond_2

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_2

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, p1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget p4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez p4, :cond_3

    iget p4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, p4}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_2
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const-string p1, "GridLayoutManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find span size for pre layout position. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    const-string p1, "GridLayoutManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    const-string p1, "GridLayoutManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1
.end method

.method private guessMeasurement(FI)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeightMode()I

    move-result v3

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidthMode()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private updateMeasurements()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    return p1
.end method

.method collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p4, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_6

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p5, :cond_5

    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v3, v5

    :cond_5
    :goto_3
    add-int/2addr p3, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method getSpaceForSpanRange(II)I
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getModeInOther()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x1

    if-eq v9, v10, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    aget v0, v0, v3

    move v14, v0

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-eqz v13, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    :cond_2
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v0, v11, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    iget v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-nez v15, :cond_4

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v1, v2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    add-int/2addr v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    iget v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v5, v3, :cond_8

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-lez v0, :cond_8

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v10

    iget v12, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-gt v10, v12, :cond_7

    sub-int/2addr v0, v10

    if-gez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/2addr v4, v10

    iget-object v10, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v10, v5

    add-int/lit8 v5, v5, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-nez v5, :cond_9

    iput-boolean v11, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_9
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move v12, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayoutManager;->assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    if-ge v0, v12, :cond_f

    iget-object v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    iget-object v3, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_b

    if-eqz v15, :cond_a

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    if-eqz v15, :cond_c

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v6, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_6
    iget-object v4, v6, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {v6, v2, v9, v3}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-le v3, v1, :cond_d

    move v1, v3

    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v4

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v10

    if-lez v3, :cond_e

    move v10, v2

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    if-eqz v13, :cond_11

    invoke-direct {v6, v10, v14}, Landroid/support/v7/widget/GridLayoutManager;->guessMeasurement(FI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    if-ge v0, v12, :cond_11

    iget-object v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v6, v2, v3, v11}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-le v2, v1, :cond_10

    move v1, v2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v12, :cond_14

    iget-object v2, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-eq v3, v1, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    iget-object v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v9

    iget v9, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v5, v9

    iget v9, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v9

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v4

    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v9, v4

    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v9, v4

    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v10, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v6, v4, v10}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v4

    iget v10, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v10, v11, :cond_12

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13, v9, v3, v10}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    sub-int v4, v1, v5

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_9

    :cond_12
    const/4 v10, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    sub-int v9, v1, v9

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v4, v13, v5, v3, v10}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v4

    move v3, v9

    :goto_9
    invoke-direct {v6, v2, v3, v4, v11}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_a

    :cond_13
    const/4 v10, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v10, 0x0

    iput v1, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, -0x1

    if-ne v0, v11, :cond_16

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v2, :cond_15

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v1, v0, v1

    move v3, v0

    move v2, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_b

    :cond_15
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v1, v0

    move v2, v0

    move v3, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_b

    :cond_16
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v2, :cond_17

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    goto :goto_b

    :cond_17
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v10, v12, :cond_1c

    iget-object v4, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v4, v10

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    iget v4, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v4, v11, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    iget v5, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v4, v5

    aget v1, v1, v4

    add-int/2addr v0, v1

    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v15, v0

    move v13, v1

    move v14, v2

    move/from16 v16, v3

    goto :goto_c

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v1, v4

    add-int/2addr v0, v1

    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v13, v0

    move v15, v1

    move v14, v2

    move/from16 v16, v3

    goto :goto_c

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move v13, v0

    move v15, v1

    move v14, v2

    move/from16 v16, v3

    :goto_c
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    iput-boolean v11, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :cond_1b
    iget-boolean v0, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v10, v10, 0x1

    move v0, v13

    move v2, v14

    move v1, v15

    move/from16 v3, v16

    goto/16 :goto_b

    :cond_1c
    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    iget v6, v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v7, v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v5, v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v7, v5

    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    move/from16 v5, p2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    iget-boolean v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eq v5, v10, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v10, -0x1

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v9

    const/4 v11, -0x1

    const/4 v12, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    move v11, v5

    const/4 v5, 0x0

    const/4 v12, 0x1

    :goto_2
    iget v13, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v13, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    invoke-direct {v0, v1, v2, v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v14

    move-object v10, v4

    const/4 v8, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    :goto_4
    if-eq v5, v11, :cond_19

    invoke-direct {v0, v1, v2, v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v9

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_6

    move-object/from16 p1, v10

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_8

    if-eq v9, v14, :cond_8

    if-eqz v4, :cond_7

    move-object/from16 p1, v10

    goto/16 :goto_a

    :cond_7
    move-object/from16 v18, v3

    move/from16 v20, v8

    move-object/from16 p1, v10

    move/from16 v19, v11

    move/from16 v8, v16

    move/from16 v11, v17

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    iget v2, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v18, v3

    iget v3, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v19, v11

    iget v11, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v11

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_9

    if-ne v2, v6, :cond_9

    if-ne v3, v7, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-nez v11, :cond_c

    if-nez v10, :cond_c

    :cond_b
    move/from16 v20, v8

    move-object/from16 p1, v10

    move/from16 v8, v16

    move/from16 v11, v17

    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_c
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v20

    sub-int v11, v20, v11

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-eqz v20, :cond_10

    if-le v11, v15, :cond_d

    move/from16 v20, v8

    move-object/from16 p1, v10

    move/from16 v8, v16

    move/from16 v11, v17

    const/4 v10, 0x1

    goto :goto_7

    :cond_d
    if-ne v11, v15, :cond_f

    if-le v2, v8, :cond_e

    const/4 v11, 0x1

    goto :goto_5

    :cond_e
    const/4 v11, 0x0

    :goto_5
    if-ne v13, v11, :cond_f

    move/from16 v20, v8

    move-object/from16 p1, v10

    move/from16 v8, v16

    move/from16 v11, v17

    const/4 v10, 0x1

    goto :goto_7

    :cond_f
    move/from16 v20, v8

    move-object/from16 p1, v10

    move/from16 v8, v16

    move/from16 v11, v17

    goto :goto_6

    :cond_10
    if-nez v4, :cond_15

    move/from16 v20, v8

    move-object/from16 p1, v10

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v8}, Landroid/support/v7/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v8, v16

    if-le v11, v8, :cond_11

    move/from16 v11, v17

    const/4 v10, 0x1

    goto :goto_7

    :cond_11
    if-ne v11, v8, :cond_13

    move/from16 v11, v17

    if-le v2, v11, :cond_12

    const/4 v10, 0x1

    :cond_12
    if-ne v13, v10, :cond_16

    const/4 v10, 0x1

    goto :goto_7

    :cond_13
    move/from16 v11, v17

    goto :goto_6

    :cond_14
    move/from16 v8, v16

    move/from16 v11, v17

    goto :goto_6

    :cond_15
    move/from16 v20, v8

    move-object/from16 p1, v10

    move/from16 v8, v16

    move/from16 v11, v17

    :cond_16
    :goto_6
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-eqz v10, :cond_17

    iget v4, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move-object/from16 v10, p1

    move v15, v3

    move/from16 v20, v4

    move/from16 v17, v11

    move-object v4, v1

    goto :goto_9

    :cond_17
    iget v8, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move-object v10, v1

    move/from16 v17, v8

    move v8, v3

    goto :goto_9

    :cond_18
    :goto_8
    move-object/from16 v10, p1

    move/from16 v17, v11

    :goto_9
    add-int/2addr v5, v12

    move/from16 v16, v8

    move-object/from16 v3, v18

    move/from16 v11, v19

    move/from16 v8, v20

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_19
    move-object/from16 p1, v10

    :goto_a
    if-eqz v4, :cond_1a

    goto :goto_b

    :cond_1a
    move-object/from16 v4, p1

    :goto_b
    return-object v4
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void

    :cond_0
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result p1

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    const/4 v4, 0x1

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le v3, v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    move v1, p2

    move v3, p1

    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le p2, v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p2, v0, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result p1

    iget-object p3, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v1, p3

    sub-int/2addr v1, v3

    aget p3, p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result p2

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/GridLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-lt p1, v0, :cond_1

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
