.class public Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "OtherMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/OtherMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UrlGridViewAdapter"
.end annotation


# static fields
.field private static final COUNT:I = 0x4


# instance fields
.field Icon:[Landroid/graphics/drawable/Drawable;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemName:[Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/gridView/OtherMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/OtherMenuFragment;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x4

    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    const-string v2, "ic_network"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    const-string v3, "ic_agps"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    const-string v4, "ic_android"

    invoke-static {v1, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    const v1, 0x7f1001b5

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/OtherMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    const-string v1, "grid_agps"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    const-string v1, "grid_jb"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    iput-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->itemName:[Ljava/lang/String;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x4

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

    iget-object p2, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0056

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090108

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f090109

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;->itemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
