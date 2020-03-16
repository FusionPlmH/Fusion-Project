.class public Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "NavigationBarBackgroundFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final CircularRadius:Ljava/lang/String; = "leo_salt_navbar_bg_radius"

.field public static final ColorRadius:Ljava/lang/String; = "leo_salt_navbar_bg_gradient_radius"

.field public static final CustomBackground:Ljava/lang/String; = "leo_salt_navbar_bg_enabled"

.field public static final GradientKEY:Ljava/lang/String; = "leo_salt_navbar_bg_gradient_type"

.field public static final GradientModeKEY:Ljava/lang/String; = "leo_salt_navbar_bg_gradient_style"

.field public static final KEY:Ljava/lang/String; = "leo_salt_navbar_bg_style"

.field public static final LeoKEY:Ljava/lang/String; = "leo_salt_"


# instance fields
.field public mCircularRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field public mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field public mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field public mColor3:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field public mColor4:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field public mColorRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field public mCustomBackground:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field public mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field public mGradientStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field public mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private setGradientStyleOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_navbar_bg_gradient_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColorRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColorRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColorRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setbgOptions()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_navbar_bg_style"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor3:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor4:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor3:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor4:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x3e7

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor3:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor4:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

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
    .locals 4

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mContext:Landroid/content/Context;

    const-string v1, "nav_background_prefs"

    invoke-virtual {p0, v0, p0, v1}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    const-string v0, "navbgenabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mCustomBackground:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mCustomBackground:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v1, 0x0

    const-string v2, "leo_salt_navbar_bg_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mCustomBackground:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "nav_bg_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_navbar_bg_style"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "nav_only_bg_color"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string v0, "nav_gradient_color"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string v0, "nav_wallpaper"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor3:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string v0, "nav_dashed"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColor4:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-direct {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->setbgOptions()V

    const-string v0, "nav_gradient_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_navbar_bg_gradient_style"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "navColorRadius"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColorRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v0, "leo_salt_navbar_bg_gradient_radius"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColorRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColorRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "navdashedradius"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mCircularRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v0, "leo_salt_navbar_bg_radius"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mCircularRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mCircularRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "nav_gradient_type"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_navbar_bg_gradient_type"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->setGradientStyleOptions()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mCustomBackground:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_navbar_bg_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_2

    const-string p1, "999"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "leo_salt_navbar_bg_style"

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "grid_status_bar_background"

    invoke-static {p1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->launchWallpaperPicker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v3, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v3, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mSaltSettingListPreference:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->setbgOptions()V

    return v2

    :cond_2
    iget-object v1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_3

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    const-string v1, "leo_salt_navbar_bg_gradient_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->setGradientStyleOptions()V

    return v2

    :cond_3
    iget-object v1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_4

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    const-string v1, "leo_salt_navbar_bg_gradient_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mGradientMode:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_4
    iget-object v1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mColorRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_navbar_bg_gradient_radius"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_5
    iget-object v1, p0, Lcom/leo/salt/fragment/NavigationBarBackgroundFragment;->mCircularRadius:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_6

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_navbar_bg_radius"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_0
    return v2
.end method
