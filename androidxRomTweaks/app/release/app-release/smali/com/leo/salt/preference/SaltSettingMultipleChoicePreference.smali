.class public Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;
.super Landroid/preference/DialogPreference;
.source "SaltSettingMultipleChoicePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;,
        Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;
    }
.end annotation


# instance fields
.field private mDefaults:[I

.field private mIsShowSelectAll:Z

.field private mKeys:[Ljava/lang/String;

.field private mMultipleChoiceAdapter:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;

.field private final mReverseDependencyKey:Ljava/lang/String;

.field private mSelector:I

.field private mSummaries:[Ljava/lang/String;

.field private mTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/leo/salt/tweaks/R$styleable;->MultipleChoicePreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mTitles:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mSummaries:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mDefaults:[I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mSelector:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mIsShowSelectAll:Z

    sget-object v1, Lcom/leo/salt/tweaks/R$styleable;->LeoPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0c00bb

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->setWidgetLayoutResource(I)V

    const p1, 0x7f0c0094

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;)Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mMultipleChoiceAdapter:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mSelector:I

    return p0
.end method

.method static synthetic access$300(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->updateDatabase(Ljava/lang/String;Z)V

    return-void
.end method

.method private buildData(Landroid/preference/PreferenceManager;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->isValidData()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mKeys:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leo_salt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mKeys:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v6, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mDefaults:[I

    aget v6, v6, v4

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    invoke-interface {p1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    new-instance v7, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;-><init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$1;)V

    iput-object v5, v7, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;->mKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mTitles:[Ljava/lang/String;

    aget-object v5, v5, v4

    iput-object v5, v7, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;->mTitle:Ljava/lang/String;

    iput-boolean v6, v7, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;->mIsSelected:Z

    iget-object v5, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mSummaries:[Ljava/lang/String;

    aget-object v5, v5, v4

    iput-object v5, v7, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Data for preference is missing or improperly formatted. Please verify the arrays are all present and are all of equal size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isValidData()Z
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mDefaults:[I

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mSummaries:[Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mTitles:[Ljava/lang/String;

    if-eqz v4, :cond_1

    array-length v2, v2

    if-ne v2, v0, :cond_1

    array-length v2, v3

    if-ne v2, v0, :cond_1

    array-length v2, v4

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private setUpSelectAll(Landroid/widget/RelativeLayout;)V
    .locals 4

    iget v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mSelector:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    :goto_0
    const v1, 0x7f0901d4

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setClickable(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v1, 0x7f0901d7

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$1;

    invoke-direct {v3, p0, v1}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$1;-><init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$2;

    invoke-direct {v1, p0, v0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$2;-><init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;Landroid/widget/CompoundButton;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDatabase(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lcom/leo/salt/preference/ReverseDependencyMonitor;

    invoke-interface {v0, p0}, Lcom/leo/salt/preference/ReverseDependencyMonitor;->registerReverseDependencyPreference(Landroid/preference/Preference;)V

    :cond_1
    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    new-instance v0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->buildData(Landroid/preference/PreferenceManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;-><init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mMultipleChoiceAdapter:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x7f09016f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mMultipleChoiceAdapter:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-boolean v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->mIsShowSelectAll:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0901d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->setUpSelectAll(Landroid/widget/RelativeLayout;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f100231

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method