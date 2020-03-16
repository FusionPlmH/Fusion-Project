.class public Lcom/leo/salt/preference/MyListPreference;
.super Landroid/preference/ListPreference;
.source "MyListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isGlobal:Z

.field private isSecure:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDependentValue:Ljava/lang/String;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsRebootRequired:Z

.field private final mIsSilent:Z

.field private final mPackageToKill:Ljava/lang/String;

.field private final mReverseDependencyKey:Ljava/lang/String;

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/preference/MyListPreference;->isGlobal:Z

    iput-boolean v0, p0, Lcom/leo/salt/preference/MyListPreference;->isSecure:Z

    const v1, 0x7f0c008c

    invoke-virtual {p0, v1}, Lcom/leo/salt/preference/MyListPreference;->setWidgetLayoutResource(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/MyListPreference;->mContentResolver:Landroid/content/ContentResolver;

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

    iput-boolean v3, p0, Lcom/leo/salt/preference/MyListPreference;->isGlobal:Z

    :cond_0
    const-string v1, "true"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/leo/salt/preference/MyListPreference;->isSecure:Z

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/MyListPreference;->mEntries:Ljava/util/List;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/MyListPreference;->mValues:Ljava/util/List;

    sget-object v1, Lcom/leo/salt/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/MyListPreference;->mPackageToKill:Ljava/lang/String;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/MyListPreference;->mIsSilent:Z

    const/16 p2, 0x20

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/MyListPreference;->mIsRebootRequired:Z

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/MyListPreference;->mDependentValue:Ljava/lang/String;

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/MyListPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p0}, Lcom/leo/salt/preference/MyListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/ListPreference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/MyListPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/MyListPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyListPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

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

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/leo/salt/preference/MyListPreference;->isGlobal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/MyListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/leo/salt/preference/MyListPreference;->isSecure:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/MyListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/preference/MyListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/preference/MyListPreference;->mValues:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/leo/salt/preference/MyListPreference;->mEntries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-boolean p1, p0, Lcom/leo/salt/preference/MyListPreference;->mIsRebootRequired:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->showRebootRequiredDialog(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/preference/MyListPreference;->mPackageToKill:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/leo/salt/preference/MyListPreference;->mIsSilent:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/leo/salt/preference/MyListPreference;->mPackageToKill:Ljava/lang/String;

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->killPackage(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/preference/MyListPreference;->mPackageToKill:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/salt/utils/Utils;->showKillPackageDialog(Ljava/lang/String;Landroid/content/Context;)V

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/leo/salt/preference/MyListPreference;->isGlobal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/MyListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/leo/salt/preference/MyListPreference;->isSecure:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/MyListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/preference/MyListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ""

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyListPreference;->persistString(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyListPreference;->persistString(Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_7

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget-boolean p1, p0, Lcom/leo/salt/preference/MyListPreference;->isGlobal:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/leo/salt/preference/MyListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/leo/salt/preference/MyListPreference;->isSecure:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/leo/salt/preference/MyListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/leo/salt/preference/MyListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_7
    move-object v0, v1

    :goto_1
    iget-object p1, p0, Lcom/leo/salt/preference/MyListPreference;->mValues:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    iget-object p2, p0, Lcom/leo/salt/preference/MyListPreference;->mEntries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyListPreference;->setValue(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyListPreference;->notifyDependencyChange(Z)V

    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    invoke-super {p0}, Landroid/preference/ListPreference;->shouldDisableDependents()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/preference/MyListPreference;->mDependentValue:Ljava/lang/String;

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
