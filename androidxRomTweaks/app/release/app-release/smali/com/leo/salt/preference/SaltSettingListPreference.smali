.class public Lcom/leo/salt/preference/SaltSettingListPreference;
.super Landroid/preference/ListPreference;
.source "SaltSettingListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPreference"


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
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "leo_salt_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mKey:Ljava/lang/String;

    const p2, 0x7f0c00bb

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/SaltSettingListPreference;->setWidgetLayoutResource(I)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingListPreference;->intV(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public intV(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mEntries:Ljava/util/List;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mValues:Ljava/util/List;

    invoke-virtual {p0, p0}, Lcom/leo/salt/preference/SaltSettingListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mValues:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mEntries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->dbValue:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->dbValue:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->dbValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingListPreference;->persistString(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->dbValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->dbValue:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingListPreference;->persistString(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mKey:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string p1, ""

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mValues:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingListPreference;->mEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/SaltSettingListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingListPreference;->setValue(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingListPreference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingListPreference;->notifyDependencyChange(Z)V

    :cond_0
    return-void
.end method
