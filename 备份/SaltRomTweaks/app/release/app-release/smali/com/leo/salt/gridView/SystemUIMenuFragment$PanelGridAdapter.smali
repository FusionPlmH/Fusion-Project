.class public Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SystemUIMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/SystemUIMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanelGridAdapter"
.end annotation


# static fields
.field private static final COUNT:I = 0x6


# instance fields
.field Icon:[Landroid/graphics/drawable/Drawable;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemName:[Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/SystemUIMenuFragment;Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x6

    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    const-string v1, "com.sec.android.app.clockpackage"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mContext:Landroid/content/Context;

    const-string v3, "ic_cmcc_icon"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mContext:Landroid/content/Context;

    const-string v4, "ic_clock"

    invoke-static {v1, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mContext:Landroid/content/Context;

    const-string v5, "ic_speed"

    invoke-static {v1, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mContext:Landroid/content/Context;

    const-string v6, "ic_qs_button"

    invoke-static {v1, v6}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/SystemUIMenuFragment;->mContext:Landroid/content/Context;

    const-string v7, "ic_datausage"

    invoke-static {v1, v7}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    const-string v1, "grid_clockdate_title"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    const-string v1, "grid_carrier_title"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    const-string v1, "grid_analogclock_title"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    const-string v1, "grid_info_title"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    const-string v1, "grid_button"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v6

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemUIMenuFragment;

    const-string v1, "grid_datausage_more"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/SystemUIMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v7

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->itemName:[Ljava/lang/String;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
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

    iget-object p2, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0053

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900c5

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0900c6

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemUIMenuFragment$PanelGridAdapter;->itemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
