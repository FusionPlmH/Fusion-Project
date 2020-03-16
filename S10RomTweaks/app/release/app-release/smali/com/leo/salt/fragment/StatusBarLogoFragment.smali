.class public Lcom/leo/salt/fragment/StatusBarLogoFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "StatusBarLogoFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final STATUSBAR_CLOCK_END_PADDING:Ljava/lang/String; = "leo_salt_statusbar_logo_end_padding"

.field private static final STATUSBAR_CLOCK_SIZE:Ljava/lang/String; = "leo_salt_statusbar_logo_size"

.field private static final STATUSBAR_CLOCK_START_PADDING:Ljava/lang/String; = "leo_salt_statusbar_logo_start_padding"

.field private static final STATUSBAR_LOGO:Ljava/lang/String; = "leo_salt_statusbar_logo"

.field private static final STATUSBAR_LOGO_STYLE:Ljava/lang/String; = "statusbar_logo_style"


# instance fields
.field LogoIcon:[Landroid/graphics/drawable/Drawable;

.field private mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mLOGOPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

.field private mLogoSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "ic_leo"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ic_alibaba"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ic_apple_logo"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ic_baidu"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ic_cmcc"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ic_google"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ic_ios"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ic_linux"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "ic_tencent"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "ic_telecom"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "ic_unicom"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "ic_windows"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ic_ubuntu"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "ic_ctc_go"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "ic_alienware"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "ic_bianfu"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "ic_panda"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "ic_love"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->LogoIcon:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mContext:Landroid/content/Context;

    const-string v0, "statusbar_logo_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "statusbar_logo_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mLOGOPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mLOGOPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    const-string v1, "logo_style_entries"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mLOGOPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    const-string v1, "logo_style_values"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mLOGOPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->LogoIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setDrawableArray([Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mLOGOPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "icon_select"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mLOGOPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "logo_size"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mLogoSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v0, "leo_salt_statusbar_logo_size"

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mLogoSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mLogoSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "start_padding"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/4 v0, 0x1

    const-string v1, "leo_salt_statusbar_logo_start_padding"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "end_padding"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v1, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v1, "leo_salt_statusbar_logo_end_padding"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarLogoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mLogoSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_logo_size"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_logo_start_padding"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarLogoFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_logo_end_padding"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onResume()V

    return-void
.end method
