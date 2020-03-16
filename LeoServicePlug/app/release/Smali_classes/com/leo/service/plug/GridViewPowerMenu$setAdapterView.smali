.class public Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;
.super Landroid/widget/BaseAdapter;
.source "GridViewPowerMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/service/plug/GridViewPowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "setAdapterView"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/leo/service/plug/GridViewPowerMenu;


# direct methods
.method public constructor <init>(Lcom/leo/service/plug/GridViewPowerMenu;Landroid/content/Context;)V
    .registers 3

    .line 106
    iput-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/GridViewPowerMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 107
    invoke-virtual {p1}, Lcom/leo/service/plug/GridViewPowerMenu;->GridViewNumber()V

    .line 108
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/GridViewPowerMenu;

    invoke-virtual {v0}, Lcom/leo/service/plug/GridViewPowerMenu;->GridViewNumber()V

    .line 113
    iget-object v0, p0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/GridViewPowerMenu;

    iget v0, v0, Lcom/leo/service/plug/GridViewPowerMenu;->COUNT:I

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

    .line 127
    iget-object p2, p0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;->inflater:Landroid/view/LayoutInflater;

    const/high16 p3, 0x7f060000

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f050003

    .line 128
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/GridViewPowerMenu;

    iget-object v0, v0, Lcom/leo/service/plug/GridViewPowerMenu;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/GridViewPowerMenu;

    invoke-virtual {v0, p3}, Lcom/leo/service/plug/GridViewPowerMenu;->setViewSize(Landroid/widget/ImageView;)V

    const p3, 0x7f050004

    .line 131
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/GridViewPowerMenu;

    iget-object v0, v0, Lcom/leo/service/plug/GridViewPowerMenu;->itemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/GridViewPowerMenu;

    invoke-virtual {p1, p3}, Lcom/leo/service/plug/GridViewPowerMenu;->setTextStyele(Landroid/widget/TextView;)V

    .line 136
    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu$setAdapterView;->this$0:Lcom/leo/service/plug/GridViewPowerMenu;

    invoke-virtual {p1, p3}, Lcom/leo/service/plug/GridViewPowerMenu;->setTextStyeleColor(Landroid/widget/TextView;)V

    return-object p2
.end method
