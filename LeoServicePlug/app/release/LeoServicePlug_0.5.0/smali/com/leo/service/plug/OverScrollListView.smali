.class public Lcom/leo/service/plug/OverScrollListView;
.super Landroid/widget/ListView;
.source "OverScrollListView.java"


# instance fields
.field private mMaxOverScrollY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x190

    iput p1, p0, Lcom/leo/service/plug/OverScrollListView;->mMaxOverScrollY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x190

    iput p1, p0, Lcom/leo/service/plug/OverScrollListView;->mMaxOverScrollY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x190

    iput p1, p0, Lcom/leo/service/plug/OverScrollListView;->mMaxOverScrollY:I

    return-void
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 11

    move-object v10, p0

    iget v8, v10, Lcom/leo/service/plug/OverScrollListView;->mMaxOverScrollY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public setMaxOverScrollY(I)V
    .locals 0

    iput p1, p0, Lcom/leo/service/plug/OverScrollListView;->mMaxOverScrollY:I

    return-void
.end method