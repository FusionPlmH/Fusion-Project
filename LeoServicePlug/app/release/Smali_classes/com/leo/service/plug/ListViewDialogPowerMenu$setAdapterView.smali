.class public Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;
.super Landroid/widget/BaseAdapter;
.source "ListViewDialogPowerMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/service/plug/ListViewDialogPowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "setAdapterView"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/leo/service/plug/ListViewDialogPowerMenu;


# direct methods
.method public constructor <init>(Lcom/leo/service/plug/ListViewDialogPowerMenu;Landroid/content/Context;)V
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/ListViewDialogPowerMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 113
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/ListViewDialogPowerMenu;

    invoke-virtual {v0}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->GridViewNumber()V

    .line 118
    iget-object v0, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/ListViewDialogPowerMenu;

    iget v0, v0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->COUNT:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 132
    iget-object p2, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f060004

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f050007

    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/ListViewDialogPowerMenu;

    iget-object v0, v0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f050009

    .line 135
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/ListViewDialogPowerMenu;

    iget-object v0, v0, Lcom/leo/service/plug/ListViewDialogPowerMenu;->itemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lcom/leo/service/plug/ListViewDialogPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/ListViewDialogPowerMenu;

    invoke-virtual {p1, p3}, Lcom/leo/service/plug/ListViewDialogPowerMenu;->setTextStyele(Landroid/widget/TextView;)V

    return-object p2
.end method
