.class public Lcom/leo/salt/fragment/TaskBackgroundFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "TaskBackgroundFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "leo_salt_recents_bg_style"


# instance fields
.field public mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field public mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field public mColor3:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field public mColor4:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field public mGradientStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field public mGradientType:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field public mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private setbgOptions()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_recents_bg_style"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor3:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor4:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor3:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor4:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x3e7

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor3:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor4:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mContext:Landroid/content/Context;

    const-string v1, "task_background_prefs"

    invoke-virtual {p0, v0, p0, v1}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    const-string v0, "recents_bg_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_recents_bg_style"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "only_bg_color"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string p1, "gradient_color"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string p1, "wallpaper"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor3:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string p1, "dashed"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mColor4:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-direct {p0}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->setbgOptions()V

    iget-object p1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mContext:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mContext:Landroid/content/Context;

    const-string v1, "rm -rf /data/app/com.sec.android.app.launcher*"

    invoke-static {p1, v0, v1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->AppPackageVersionsError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "999"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "leo_salt_recents_bg_style"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "grid_system_task_bg_title"

    invoke-static {p1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->launchWallpaperPicker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v3, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v3, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/TaskBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/TaskBackgroundFragment;->setbgOptions()V

    :cond_1
    return v2
.end method
