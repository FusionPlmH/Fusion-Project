.class public Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "StatusBarMenuGridViewAdapter.java"


# static fields
.field private static final COUNT:I = 0x8


# instance fields
.field Icon:[I

.field Summary:[I

.field private inflater:Landroid/view/LayoutInflater;

.field names:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;->names:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;->Icon:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;->Summary:[I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100253
        0x7f10025a
        0x7f10025c
        0x7f100261
        0x7f100275
        0x7f10024a
        0x7f100248
        0x7f100278
    .end array-data

    :array_1
    .array-data 4
        0x7f08009a
        0x7f08009c
        0x7f080098
        0x7f08009e
        0x7f0800a1
        0x7f080096
        0x7f080095
        0x7f080095
    .end array-data

    :array_2
    .array-data 4
        0x7f100254
        0x7f10025b
        0x7f10025d
        0x7f100262
        0x7f100276
        0x7f10024b
        0x7f100249
        0x7f100279
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p2, p0, Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0052

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900e1

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;->Icon:[I

    aget v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p3, 0x7f0900e2

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;->names:[I

    aget v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f0900e3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/ui/list/StatusBarMenuGridViewAdapter;->Summary:[I

    aget p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method