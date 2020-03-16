.class Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DrawableListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/DrawableListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field mEntries:[Ljava/lang/CharSequence;

.field mSelectedPosition:I

.field mThumbnails:[Landroid/graphics/drawable/Drawable;

.field mValues:[Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/leo/salt/preference/DrawableListPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/DrawableListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->this$0:Lcom/leo/salt/preference/DrawableListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->mEntries:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->mValues:[Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->mThumbnails:[Landroid/graphics/drawable/Drawable;

    iput p6, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->mSelectedPosition:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0086

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;-><init>(Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;

    :goto_0
    iget-object v1, p3, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->mThumbnails:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p3, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    iget v1, p0, Lcom/leo/salt/preference/DrawableListPreference$ListAdapter;->mSelectedPosition:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object p2
.end method
