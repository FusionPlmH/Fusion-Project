.class Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DrawableListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mRadioButton:Landroid/widget/RadioButton;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;->this$1:Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f09019f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const v0, 0x7f0901a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f09019d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->this$0:Lcom/leo/salt/preference/DrawableListPreference;

    invoke-static {p1}, Lcom/leo/salt/preference/DrawableListPreference;->access$000(Lcom/leo/salt/preference/DrawableListPreference;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f06005b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
