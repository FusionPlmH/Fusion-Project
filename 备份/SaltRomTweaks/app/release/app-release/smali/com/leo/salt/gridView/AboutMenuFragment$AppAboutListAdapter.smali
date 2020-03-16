.class public Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AboutMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/AboutMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAboutListAdapter"
.end annotation


# static fields
.field private static final COUNT:I = 0x4


# instance fields
.field Icon:[I

.field private SumarryitemName:[Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemName:[Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/gridView/AboutMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/AboutMenuFragment;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x4

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->Icon:[I

    new-array v0, p1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {v1}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android_info"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {v1}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone_info"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {v1}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "device_info"

    invoke-static {v1, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    iget-object v1, v1, Lcom/leo/salt/gridView/AboutMenuFragment;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {v5}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->itemName:[Ljava/lang/String;

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sumarry_android_info"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sumarry_phone_info"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sumarry_device_info"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->getVersionName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->SumarryitemName:[Ljava/lang/String;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void

    :array_0
    .array-data 4
        0x7f08006e
        0x7f080082
        0x7f080079
        0x7f0e0000
    .end array-data
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

.method public getVersionName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {v1}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c001c

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090035

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->Icon:[I

    aget v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p3, 0x7f090036

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->itemName:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x12

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const p3, 0x7f090037

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/16 v0, 0xe

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f090038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;->SumarryitemName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
