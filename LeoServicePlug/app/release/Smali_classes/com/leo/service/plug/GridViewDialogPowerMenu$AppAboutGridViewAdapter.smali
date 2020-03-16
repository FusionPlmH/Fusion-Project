.class public Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewDialogPowerMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/service/plug/GridViewDialogPowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAboutGridViewAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/leo/service/plug/GridViewDialogPowerMenu;


# direct methods
.method public constructor <init>(Lcom/leo/service/plug/GridViewDialogPowerMenu;Landroid/content/Context;)V
    .registers 3

    .line 89
    iput-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;->this$0:Lcom/leo/service/plug/GridViewDialogPowerMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 90
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;->this$0:Lcom/leo/service/plug/GridViewDialogPowerMenu;

    iget v0, v0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->COUNT:I

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

    .line 103
    iget-object p2, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const/high16 p3, 0x7f060000

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f050003

    .line 104
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;->this$0:Lcom/leo/service/plug/GridViewDialogPowerMenu;

    iget-object v0, v0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;->this$0:Lcom/leo/service/plug/GridViewDialogPowerMenu;

    invoke-virtual {v0, p3}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->setViewSize(Landroid/widget/ImageView;)V

    const p3, 0x7f050004

    .line 107
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;->this$0:Lcom/leo/service/plug/GridViewDialogPowerMenu;

    iget-object v0, v0, Lcom/leo/service/plug/GridViewDialogPowerMenu;->itemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/leo/service/plug/GridViewDialogPowerMenu$AppAboutGridViewAdapter;->this$0:Lcom/leo/service/plug/GridViewDialogPowerMenu;

    invoke-virtual {p1, p3}, Lcom/leo/service/plug/GridViewDialogPowerMenu;->setTextStyele(Landroid/widget/TextView;)V

    return-object p2
.end method
