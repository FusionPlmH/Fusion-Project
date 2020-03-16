.class public Lcom/os/salt/globalactions/ListViewPowerMenu$setAdapterView;
.super Landroid/widget/BaseAdapter;
.source "ListViewPowerMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/os/salt/globalactions/ListViewPowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "setAdapterView"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/os/salt/globalactions/ListViewPowerMenu;


# direct methods
.method public constructor <init>(Lcom/os/salt/globalactions/ListViewPowerMenu;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/os/salt/globalactions/ListViewPowerMenu$setAdapterView;->this$0:Lcom/os/salt/globalactions/ListViewPowerMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/os/salt/globalactions/ListViewPowerMenu$setAdapterView;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/os/salt/globalactions/ListViewPowerMenu$setAdapterView;->this$0:Lcom/os/salt/globalactions/ListViewPowerMenu;

    iget v0, v0, Lcom/os/salt/globalactions/ListViewPowerMenu;->COUNT:I

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

    iget-object p2, p0, Lcom/os/salt/globalactions/ListViewPowerMenu$setAdapterView;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00a6

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090155

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/os/salt/globalactions/ListViewPowerMenu$setAdapterView;->this$0:Lcom/os/salt/globalactions/ListViewPowerMenu;

    iget-object v0, v0, Lcom/os/salt/globalactions/ListViewPowerMenu;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f090157

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/os/salt/globalactions/ListViewPowerMenu$setAdapterView;->this$0:Lcom/os/salt/globalactions/ListViewPowerMenu;

    iget-object v0, v0, Lcom/os/salt/globalactions/ListViewPowerMenu;->itemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/os/salt/globalactions/ListViewPowerMenu$setAdapterView;->this$0:Lcom/os/salt/globalactions/ListViewPowerMenu;

    invoke-virtual {p1, p3}, Lcom/os/salt/globalactions/ListViewPowerMenu;->setTextStyele(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/os/salt/globalactions/ListViewPowerMenu$setAdapterView;->this$0:Lcom/os/salt/globalactions/ListViewPowerMenu;

    invoke-virtual {p1, p3}, Lcom/os/salt/globalactions/ListViewPowerMenu;->setTextStyeleColor(Landroid/widget/TextView;)V

    return-object p2
.end method
