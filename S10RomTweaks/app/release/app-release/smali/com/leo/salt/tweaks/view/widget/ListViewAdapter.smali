.class public Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListViewAdapter.java"


# instance fields
.field private COUNT:I

.field private Icon:[Landroid/graphics/drawable/Drawable;

.field private SumarryitemName:[Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;->COUNT:I

    iput-object p3, p0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;->itemName:[Ljava/lang/String;

    iput-object p4, p0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;->SumarryitemName:[Ljava/lang/String;

    iput-object p5, p0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;->COUNT:I

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

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0060

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090257

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f090252

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;->itemName:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const p3, 0x7f090259

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;->SumarryitemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
