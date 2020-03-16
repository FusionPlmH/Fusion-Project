.class public Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SaltSettingIconListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mRadioButton:Landroid/widget/RadioButton;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter$ViewHolder;->this$0:Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0901a9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const p1, 0x7f0901aa

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const p1, 0x7f0901a7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    sget p2, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mIconViewColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
