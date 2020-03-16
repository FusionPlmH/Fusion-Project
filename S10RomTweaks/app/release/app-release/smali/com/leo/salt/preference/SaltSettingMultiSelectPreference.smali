.class public Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;
.super Landroid/preference/DialogPreference;
.source "SaltSettingMultiSelectPreference.java"

# interfaces
.implements Lcom/leo/salt/preference/preflib/MultiSelectAdapter$OnItemSelectedListener;


# instance fields
.field private isSecure:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCount:I

.field private mEntries:[Ljava/lang/String;

.field private mMultiSelectAdapter:Lcom/leo/salt/preference/preflib/MultiSelectAdapter;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mValue:Ljava/lang/String;

.field private mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->isSecure:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "Secure"

    const-string v2, "isSecure"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->isSecure:Z

    :cond_0
    sget-object v1, Lcom/leo/salt/tweaks/R$styleable;->SaltSettingMultiSelect:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mEntries:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValues:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0c0091

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f0c00bb

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->setWidgetLayoutResource(I)V

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mEntries:[Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValues:[Ljava/lang/String;

    if-eqz p2, :cond_1

    array-length v0, p1

    array-length p2, p2

    if-ne v0, p2, :cond_1

    array-length p1, p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data for preference is missing or improperly formatted. Please verify the arrays are all present and are all of equal size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mRadioButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)Lcom/leo/salt/preference/preflib/MultiSelectAdapter;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mMultiSelectAdapter:Lcom/leo/salt/preference/preflib/MultiSelectAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mEntries:[Ljava/lang/String;

    return-object p0
.end method

.method private getData()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/preference/preflib/SelectionItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mEntries:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/leo/salt/preference/preflib/SelectionItem;

    invoke-direct {v2}, Lcom/leo/salt/preference/preflib/SelectionItem;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mEntries:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v2, Lcom/leo/salt/preference/preflib/SelectionItem;->entry:Ljava/lang/String;

    iget-object v3, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v2, Lcom/leo/salt/preference/preflib/SelectionItem;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getEntryForValue(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValues:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValue:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mEntries:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getEntryForValue(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v6, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    new-instance v0, Lcom/leo/salt/preference/preflib/MultiSelectAdapter;

    invoke-direct {p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/leo/salt/preference/preflib/MultiSelectAdapter;-><init>(Ljava/util/ArrayList;Lcom/leo/salt/preference/preflib/MultiSelectAdapter$OnItemSelectedListener;)V

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mMultiSelectAdapter:Lcom/leo/salt/preference/preflib/MultiSelectAdapter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mCount:I

    const v1, 0x7f09016c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mMultiSelectAdapter:Lcom/leo/salt/preference/preflib/MultiSelectAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v1, 0x7f0901d6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mMultiSelectAdapter:Lcom/leo/salt/preference/preflib/MultiSelectAdapter;

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leo/salt/preference/preflib/MultiSelectAdapter;->setSelectedItems(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget v2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mCount:I

    iget-object v3, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mEntries:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v0, 0x7f0901d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference$1;-><init>(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mMultiSelectAdapter:Lcom/leo/salt/preference/preflib/MultiSelectAdapter;

    invoke-virtual {v0}, Lcom/leo/salt/preference/preflib/MultiSelectAdapter;->getSelectedItems()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->persistString(Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->isSecure:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    invoke-direct {p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onItemSelected(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mCount:I

    iget p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mCount:I

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mEntries:[Ljava/lang/String;

    array-length v1, v1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mCount:I

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mEntries:[Ljava/lang/String;

    array-length v1, v1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    iget p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mCount:I

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    iget-boolean p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->isSecure:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/String;

    move-object p1, p2

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    iget-boolean p2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->isSecure:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->persistString(Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-direct {p0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->getSummaryString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
