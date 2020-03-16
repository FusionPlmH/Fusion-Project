.class public Lcom/leo/salt/tweaks/MainActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListAdapter"
.end annotation


# static fields
.field private static final COUNT:I = 0x8


# instance fields
.field Icon:[Landroid/graphics/drawable/Drawable;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemName:[Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/tweaks/MainActivity;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/MainActivity;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 p1, 0x8

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$1100(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ic_donate"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$1200(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "leo_team"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$1300(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ic_code"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$1400(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ic_update"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$1500(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ic_settings"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$1600(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ic_changelog"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$1700(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ic_help"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$1800(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ic_share"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    const-string p1, "home_meun_values"

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->itemName:[Ljava/lang/String;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/16 v0, 0x8

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

    iget-object p2, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c005f

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090102

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->Icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f090103

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListAdapter;->itemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
