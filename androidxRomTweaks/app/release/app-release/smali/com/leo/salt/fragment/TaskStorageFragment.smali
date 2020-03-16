.class public Lcom/leo/salt/fragment/TaskStorageFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "TaskStorageFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "leo_salt_task_info_symbol_style"


# instance fields
.field public mSaltSettingListPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.android.app.launcher"

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->getCodeVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "10.0.35.14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OK"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mContext:Landroid/content/Context;

    const-string v1, "rm -rf /data/app/com.sec.android.app.launcher*"

    invoke-static {p1, v0, v1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->AppPackageVersionsError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/TaskStorageFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/TaskStorageFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mContext:Landroid/content/Context;

    const-string v1, "task_storage_prefs"

    invoke-virtual {p0, v0, p0, v1}, Lcom/leo/salt/fragment/TaskStorageFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    const-string v0, "leo_salt_task_info_symbol_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/TaskStorageFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mSaltSettingListPreference:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mSaltSettingListPreference:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mSaltSettingListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mSaltSettingListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mSaltSettingListPreference:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "12"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mSaltSettingListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "leo_salt_task_info_symbol_str"

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/TaskStorageFragment;->EditTextDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mSaltSettingListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/TaskStorageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "leo_salt_task_info_symbol_style"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/TaskStorageFragment;->mSaltSettingListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return v1
.end method
