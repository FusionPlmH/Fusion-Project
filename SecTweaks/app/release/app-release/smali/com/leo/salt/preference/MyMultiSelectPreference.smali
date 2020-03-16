.class public Lcom/leo/salt/preference/MyMultiSelectPreference;
.super Landroid/preference/DialogPreference;
.source "MyMultiSelectPreference.java"

# interfaces
.implements Lcom/leo/salt/utils/MultiSelectAdapter$OnItemSelectedListener;


# instance fields
.field private isGlobal:Z

.field private isSecure:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCount:I

.field private mEntries:[Ljava/lang/String;

.field private final mIsRebootRequired:Z

.field private final mIsSilent:Z

.field private mMultiSelectAdapter:Lcom/leo/salt/utils/MultiSelectAdapter;

.field private final mPackageToKill:Ljava/lang/String;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mReverseDependencyKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->isGlobal:Z

    iput-boolean v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->isSecure:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "SECURE_GLOBAL"

    const-string v2, "isGlobal"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SECURE_GLOBAL"

    const-string v3, "isSecure"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->isGlobal:Z

    :cond_0
    const-string v1, "true"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->isSecure:Z

    :cond_1
    sget-object v1, Lcom/leo/salt/R$styleable;->MyMultiSelectPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mEntries:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValues:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/leo/salt/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mPackageToKill:Ljava/lang/String;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mIsSilent:Z

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mReverseDependencyKey:Ljava/lang/String;

    const/16 p2, 0x20

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mIsRebootRequired:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0c0057

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyMultiSelectPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f0c008c

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyMultiSelectPreference;->setWidgetLayoutResource(I)V

    iget-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mEntries:[Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValues:[Ljava/lang/String;

    if-eqz p2, :cond_2

    array-length v0, p1

    array-length p2, p2

    if-ne v0, p2, :cond_2

    array-length p1, p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data for preference is missing or improperly formatted. Please verify the arrays are all present and are all of equal size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/leo/salt/preference/MyMultiSelectPreference;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mRadioButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/preference/MyMultiSelectPreference;)Lcom/leo/salt/utils/MultiSelectAdapter;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mMultiSelectAdapter:Lcom/leo/salt/utils/MultiSelectAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/leo/salt/preference/MyMultiSelectPreference;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/leo/salt/preference/MyMultiSelectPreference;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mEntries:[Ljava/lang/String;

    return-object p0
.end method

.method private getData()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/utils/SelectionItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mEntries:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/leo/salt/utils/SelectionItem;

    invoke-direct {v2}, Lcom/leo/salt/utils/SelectionItem;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mEntries:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v2, Lcom/leo/salt/utils/SelectionItem;->entry:Ljava/lang/String;

    iget-object v3, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v2, Lcom/leo/salt/utils/SelectionItem;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getEntryForValue(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValues:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValue:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mEntries:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getEntryForValue(Ljava/lang/String;)I

    move-result v4

    aget-object v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/leo/salt/preference/MySwitchPreference;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/leo/salt/preference/MyCheckBoxPreference;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lcom/leo/salt/preference/ReverseDependencyMonitor;

    invoke-interface {v0, p0}, Lcom/leo/salt/preference/ReverseDependencyMonitor;->registerReverseDependencyPreference(Landroid/preference/Preference;)V

    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    new-instance v0, Lcom/leo/salt/utils/MultiSelectAdapter;

    invoke-direct {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/leo/salt/utils/MultiSelectAdapter;-><init>(Ljava/util/ArrayList;Lcom/leo/salt/utils/MultiSelectAdapter$OnItemSelectedListener;)V

    iput-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mMultiSelectAdapter:Lcom/leo/salt/utils/MultiSelectAdapter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mCount:I

    const v1, 0x7f0900fd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mMultiSelectAdapter:Lcom/leo/salt/utils/MultiSelectAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v1, 0x7f090162

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mMultiSelectAdapter:Lcom/leo/salt/utils/MultiSelectAdapter;

    iget-object v2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/MultiSelectAdapter;->setSelectedItems(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget v2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mCount:I

    iget-object v3, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mEntries:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v0, 0x7f090161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/preference/MyMultiSelectPreference$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/MyMultiSelectPreference$1;-><init>(Lcom/leo/salt/preference/MyMultiSelectPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mMultiSelectAdapter:Lcom/leo/salt/utils/MultiSelectAdapter;

    invoke-virtual {v0}, Lcom/leo/salt/utils/MultiSelectAdapter;->getSelectedItems()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->persistString(Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->isGlobal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->isSecure:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    invoke-direct {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mIsRebootRequired:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/Utils;->showRebootRequiredDialog(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mPackageToKill:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/leo/salt/utils/Utils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mIsSilent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mPackageToKill:Ljava/lang/String;

    invoke-static {v0}, Lcom/leo/salt/utils/Utils;->killPackage(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mPackageToKill:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leo/salt/utils/Utils;->showKillPackageDialog(Ljava/lang/String;Landroid/content/Context;)V

    :cond_4
    :goto_1
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

    iget p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mCount:I

    iget p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mCount:I

    iget-object v1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mEntries:[Ljava/lang/String;

    array-length v1, v1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mCount:I

    iget-object v1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mEntries:[Ljava/lang/String;

    array-length v1, v1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    iget p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mCount:I

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    iget-boolean p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->isGlobal:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->isSecure:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_5

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/String;

    move-object p1, p2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    iget-boolean p2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->isGlobal:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_3
    iget-boolean p2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->isSecure:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyMultiSelectPreference;->persistString(Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference;->mValue:Ljava/lang/String;

    invoke-direct {p0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->getSummaryString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyMultiSelectPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
