.class public Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SystemDisplayMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/SystemDisplayMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationBarGridAdapter"
.end annotation


# static fields
.field private static final COUNT:I = 0x3


# instance fields
.field Icon:[Landroid/graphics/drawable/Drawable;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemName:[Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/SystemDisplayMenuFragment;Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x3

    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    const-string v1, "android"

    const-string v2, "menu_ic_assistant_menu"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->mContext:Landroid/content/Context;

    const-string v3, "ic_picture"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.wallpapercropper2"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

    const-string v1, "grid_navigation_bar_title"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

    const-string v1, "grid_navigation_bar_bg_title"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->this$0:Lcom/leo/salt/gridView/SystemDisplayMenuFragment;

    const-string v1, "grid_system_launcher_home_title"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/SystemDisplayMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->itemName:[Ljava/lang/String;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

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

    iget-object p2, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0053

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900c5

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0900c6

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/gridView/SystemDisplayMenuFragment$NavigationBarGridAdapter;->itemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
