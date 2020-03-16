.class public Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/amber/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PayGridViewAdapter"
.end annotation


# static fields
.field private static final COUNT:I = 0x3


# instance fields
.field Icon:[Landroid/graphics/drawable/Drawable;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemName:[Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/PayActivity;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/amber/PayActivity;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/PayActivity;->access$000(Lcom/leo/salt/tweaks/amber/PayActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "scan_alipay"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/PayActivity;->access$000(Lcom/leo/salt/tweaks/amber/PayActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "pay_alipay"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;->this$0:Lcom/leo/salt/tweaks/amber/PayActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/PayActivity;->access$000(Lcom/leo/salt/tweaks/amber/PayActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "scan_weixin"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    const-string p1, "pay_style"

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;->itemName:[Ljava/lang/String;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

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

    iget-object p2, p0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0053

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900c5

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0900c6

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;->itemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
