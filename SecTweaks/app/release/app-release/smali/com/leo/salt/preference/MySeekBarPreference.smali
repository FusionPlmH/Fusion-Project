.class public Lcom/leo/salt/preference/MySeekBarPreference;
.super Landroid/preference/Preference;
.source "MySeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MySeekBarPreference"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultValue:I

.field private mFormat:Ljava/lang/String;

.field private final mIsRebootRequired:Z

.field private final mIsSilent:Z

.field private mMaxValue:I

.field private mMinValue:I

.field private final mPackageToKill:Ljava/lang/String;

.field private mPopup:Z

.field private mReverseDependencyKey:Ljava/lang/String;

.field private mUnitValue:Ljava/lang/String;

.field private mValueText:Landroid/widget/TextView;

.field vPopup:Landroid/widget/FrameLayout;

.field vTxtPopup:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "%d%s"

    iput-object v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mFormat:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/leo/salt/R$styleable;->MySeekBarPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMaxValue:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMinValue:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mPopup:Z

    sget-object v4, Lcom/leo/salt/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mIsRebootRequired:Z

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mPackageToKill:Ljava/lang/String;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mIsSilent:Z

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mReverseDependencyKey:Ljava/lang/String;

    iget p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMaxValue:I

    div-int/2addr p2, v3

    iput p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mDefaultValue:I

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mUnitValue:Ljava/lang/String;

    iget-object p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mUnitValue:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    iput-object p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mUnitValue:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0c0080

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MySeekBarPreference;->setWidgetLayoutResource(I)V

    const p1, 0x7f0c007f

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MySeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method private onPreferenceChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MySeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object p1, Lcom/leo/salt/preference/MySeekBarPreference;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange is called and reboot required is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mIsRebootRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mIsRebootRequired:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->showRebootRequiredDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mPackageToKill:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mIsSilent:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mPackageToKill:Ljava/lang/String;

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->killPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mPackageToKill:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/utils/Utils;->showKillPackageDialog(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MySeekBarPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

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

.method protected onBindView(Landroid/view/View;)V
    .locals 11

    const v0, 0x7f09015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget v1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMaxValue:I

    iget v2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    const v1, 0x7f0900ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900f7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900ad

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/leo/salt/preference/MySeekBarPreference;->vPopup:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/leo/salt/preference/MySeekBarPreference;->vPopup:Landroid/widget/FrameLayout;

    const v4, 0x7f0900ae

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/leo/salt/preference/MySeekBarPreference;->vTxtPopup:Landroid/widget/TextView;

    const v3, 0x7f0901b6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mValueText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100375

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iget-object v5, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mFormat:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMaxValue:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mUnitValue:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100376

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mFormat:Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMinValue:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    iget-object v7, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mUnitValue:Ljava/lang/String;

    aput-object v7, v5, v10

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mValueText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100377

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mFormat:Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMaxValue:I

    div-int/2addr v7, v6

    invoke-virtual {p0, v7}, Lcom/leo/salt/preference/MySeekBarPreference;->getPersistedInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mUnitValue:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget v1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mDefaultValue:I

    invoke-virtual {p0, v1}, Lcom/leo/salt/preference/MySeekBarPreference;->getPersistedInt(I)I

    move-result v1

    iget v2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mDefaultValue:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    iget p1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMinValue:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mValueText:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100377

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mUnitValue:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mPopup:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/preference/MySeekBarPreference;->vTxtPopup:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    iget-object v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mFormat:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mUnitValue:Ljava/lang/String;

    aput-object p1, v1, v6

    invoke-static {p3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MySeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mDefaultValue:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MySeekBarPreference;->getPersistedInt(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p0}, Lcom/leo/salt/preference/MySeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MySeekBarPreference;->persistInt(I)Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-boolean p1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mPopup:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->vPopup:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-boolean v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mPopup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->vPopup:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMinValue:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MySeekBarPreference;->persistInt(I)Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget v0, p0, Lcom/leo/salt/preference/MySeekBarPreference;->mMinValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/MySeekBarPreference;->onPreferenceChange(I)V

    return-void
.end method
