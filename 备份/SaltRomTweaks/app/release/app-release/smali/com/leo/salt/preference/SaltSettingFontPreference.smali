.class public Lcom/leo/salt/preference/SaltSettingFontPreference;
.super Lcom/leo/salt/preference/SaltSettingDefaultListPreference;
.source "SaltSettingFontPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SaltSettingFontPreference"


# instance fields
.field dbValue:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

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
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leo_salt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingFontPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mKey:Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tweaks/R$styleable;->LeoPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingFontPreference;->intV(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public intV(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingFontPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mEntries:Ljava/util/List;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingFontPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mValues:Ljava/util/List;

    invoke-virtual {p0, p0}, Lcom/leo/salt/preference/SaltSettingFontPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingFontPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

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

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mValues:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mEntries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingFontPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->dbValue:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingFontPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->dbValue:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->dbValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingFontPreference;->persistString(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->dbValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->dbValue:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingFontPreference;->persistString(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mKey:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string p1, ""

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mValues:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingFontPreference;->mEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/SaltSettingFontPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingFontPreference;->setValue(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingFontPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method
