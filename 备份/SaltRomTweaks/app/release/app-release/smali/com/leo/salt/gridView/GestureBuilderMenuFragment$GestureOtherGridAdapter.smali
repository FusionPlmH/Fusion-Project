.class public Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "GestureBuilderMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/GestureBuilderMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureOtherGridAdapter"
.end annotation


# static fields
.field private static final COUNT:I = 0x4


# instance fields
.field Icon:[Landroid/graphics/drawable/Drawable;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemName:[Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/GestureBuilderMenuFragment;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x4

    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/leo/salt/tweaks/resource/Resource;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/tweaks/resource/Resource;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    const-string v4, "ball_2"

    invoke-static {v1, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    const-string v5, "ic_pop_path"

    invoke-static {v1, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    const-string v1, "grid_other_statusbar_title"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    const-string v1, "grid_keyguard_gesture"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    const-string v1, "grid_floatball"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->this$0:Lcom/leo/salt/gridView/GestureBuilderMenuFragment;

    const-string v1, "grid_minipop"

    invoke-virtual {v0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->itemName:[Ljava/lang/String;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->inflater:Landroid/view/LayoutInflater;

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

    iget-object p2, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0053

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900c5

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0900c6

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureOtherGridAdapter;->itemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
