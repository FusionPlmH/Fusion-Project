.class public Lcom/leo/salt/ui/NotificationPanelGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationPanelGridViewAdapter.java"


# static fields
.field private static final COUNT:I = 0x6


# instance fields
.field Icon:[I

.field private inflater:Landroid/view/LayoutInflater;

.field names:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/leo/salt/ui/NotificationPanelGridViewAdapter;->names:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/leo/salt/ui/NotificationPanelGridViewAdapter;->Icon:[I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/ui/NotificationPanelGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100253
        0x7f10024e
        0x7f1001c8
        0x7f100246
        0x7f100263
        0x7f10024c
    .end array-data

    :array_1
    .array-data 4
        0x7f08009a
        0x7f080098
        0x7f08007c
        0x7f080093
        0x7f08009d
        0x7f080097
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x6

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

    iget-object p2, p0, Lcom/leo/salt/ui/NotificationPanelGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c004c

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900b5

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/ui/NotificationPanelGridViewAdapter;->Icon:[I

    aget v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p3, 0x7f0900b6

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/ui/NotificationPanelGridViewAdapter;->names:[I

    aget p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method
