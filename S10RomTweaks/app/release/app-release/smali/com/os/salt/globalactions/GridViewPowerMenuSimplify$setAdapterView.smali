.class public Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;
.super Landroid/widget/BaseAdapter;
.source "GridViewPowerMenuSimplify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "setAdapterView"
.end annotation


# instance fields
.field MenuSimplify:[Ljava/lang/String;

.field public MenuSimplifyIcon:[Landroid/graphics/drawable/Drawable;

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;


# direct methods
.method public constructor <init>(Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->this$0:Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x7

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    const-string v0, "android"

    const-string v1, "tw_ic_do_poweroff"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "tw_ic_do_restart"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tw_leo_quickboot"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, p1, v2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tw_leo_download"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, p1, v2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tw_leo_recovery"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, p1, v2

    const-string v1, "tw_ic_do_mobiledata"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tw_leo_airplane"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->MenuSimplifyIcon:[Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->this$0:Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;

    invoke-virtual {p1}, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->MenuSimplify:[Ljava/lang/String;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x7

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

    iget-object p2, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0057

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090108

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->MenuSimplifyIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->this$0:Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;

    invoke-virtual {v0, p3}, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;->setViewSize(Landroid/widget/ImageView;)V

    const p3, 0x7f090109

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->MenuSimplify:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->this$0:Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;

    invoke-virtual {p1, p3}, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;->setTextStyele(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$setAdapterView;->this$0:Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;

    invoke-virtual {p1, p3}, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;->setTextStyeleColor(Landroid/widget/TextView;)V

    return-object p2
.end method
