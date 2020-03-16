.class public Lcom/leo/salt/preference/MyEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "MyEditTextPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mIsRebootRequired:Z

.field private final mIsSilent:Z

.field private final mPackageToKill:Ljava/lang/String;

.field private mReverseDependencyKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0c008c

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyEditTextPreference;->setWidgetLayoutResource(I)V

    sget-object v0, Lcom/leo/salt/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v0, 0x1e

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mPackageToKill:Ljava/lang/String;

    const/16 v0, 0x1a

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mIsSilent:Z

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mIsRebootRequired:Z

    const/16 v0, 0x21

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p0}, Lcom/leo/salt/preference/MyEditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/leo/salt/preference/MyEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyEditTextPreference;->persistString(Ljava/lang/String;)Z

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/EditTextPreference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyEditTextPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

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

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    iget-object p1, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyEditTextPreference;->persistString(Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/MyEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mIsRebootRequired:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->showRebootRequiredDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mPackageToKill:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mIsSilent:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mPackageToKill:Ljava/lang/String;

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->killPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mPackageToKill:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/salt/utils/Utils;->showKillPackageDialog(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    const-string v0, ""

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/preference/MyEditTextPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/MyEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/MyEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
