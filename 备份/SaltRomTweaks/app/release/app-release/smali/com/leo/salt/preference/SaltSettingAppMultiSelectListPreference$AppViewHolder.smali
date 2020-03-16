.class public Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;
.super Ljava/lang/Object;
.source "SaltSettingAppMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppViewHolder"
.end annotation


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public apppackage:Landroid/widget/TextView;

.field public checkBox:Landroid/widget/CheckBox;

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f0c0035

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;

    invoke-direct {p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;-><init>()V

    iput-object p0, p1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->rootView:Landroid/view/View;

    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->apppackage:Landroid/widget/TextView;

    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;

    return-object p0
.end method
