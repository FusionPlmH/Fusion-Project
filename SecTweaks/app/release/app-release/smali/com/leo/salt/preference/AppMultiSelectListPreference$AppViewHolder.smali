.class public Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;
.super Ljava/lang/Object;
.source "AppMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/AppMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppViewHolder"
.end annotation


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public checkBox:Landroid/widget/CheckBox;

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f0c0048

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;

    invoke-direct {p1}, Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;-><init>()V

    iput-object p0, p1, Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;->rootView:Landroid/view/View;

    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;

    return-object p0
.end method
