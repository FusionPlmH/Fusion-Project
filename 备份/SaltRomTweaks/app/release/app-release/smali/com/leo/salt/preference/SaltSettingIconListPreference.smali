.class public Lcom/leo/salt/preference/SaltSettingIconListPreference;
.super Landroid/preference/DialogPreference;
.source "SaltSettingIconListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter;
    }
.end annotation


# static fields
.field public static mIconViewColor:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDependentValue:Ljava/lang/String;

.field public mEntriesList:[Ljava/lang/CharSequence;

.field public mEntryValuesList:[Ljava/lang/CharSequence;

.field private mIconView:Landroid/widget/ImageView;

.field private mKey:Ljava/lang/String;

.field public mSelectedPosition:I

.field private mThumbnailsArray:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leo_salt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/leo/salt/tweaks/R$styleable;->SaltSettingIconListPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mEntriesList:[Ljava/lang/CharSequence;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mEntryValuesList:[Ljava/lang/CharSequence;

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sput v0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mIconViewColor:I

    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0c004e

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f0c0059

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getDrawableArray()[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mEntriesList:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mEntryValuesList:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x7f0901a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setFadingEdgeLength(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setScrollingCacheEnabled(Z)V

    new-instance v0, Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter;

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mEntriesList:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mEntryValuesList:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mSelectedPosition:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/preference/SaltSettingIconListPreference$ListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mEntryValuesList:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mSelectedPosition:I

    iget v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mSelectedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mSelectedPosition:I

    :cond_0
    const v0, 0x7f0901a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mIconView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mSelectedPosition:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mIconView:Landroid/widget/ImageView;

    sget v0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mIconViewColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mEntryValuesList:[Ljava/lang/CharSequence;

    aget-object p2, p2, p3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->persistString(Ljava/lang/String;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->notifyDependencyChange(Z)V

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p4, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mKey:Ljava/lang/String;

    invoke-static {p1, p4, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iput p3, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mIconView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mIconView:Landroid/widget/ImageView;

    sget p2, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mIconViewColor:I

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mKey:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/String;

    move-object p1, p2

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mKey:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->persistString(Ljava/lang/String;)Z

    return-void
.end method

.method public setDrawableArray([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mEntriesList:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mEntryValuesList:[Ljava/lang/CharSequence;

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingIconListPreference;->mDependentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
