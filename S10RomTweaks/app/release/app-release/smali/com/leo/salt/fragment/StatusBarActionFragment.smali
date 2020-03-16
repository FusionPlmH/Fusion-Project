.class public Lcom/leo/salt/fragment/StatusBarActionFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "StatusBarActionFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final LEFTSLIDE:Ljava/lang/String; = "leo_salt_statusbar_gesture_leftslide_action_style"

.field private static final LONGP:Ljava/lang/String; = "leo_salt_statusbar_gesture_longPress_action_style"

.field private static final LONGPRESS:Ljava/lang/String; = "leo_salt_statusbar_gesture_longPress_enabled"

.field private static final MENU_RESET:I = 0x1

.field private static final RIGHTSLIDE:Ljava/lang/String; = "leo_salt_statusbar_gesture_rightslide_action_style"

.field private static final SLIDE:Ljava/lang/String; = "leo_salt_statusbar_gesture_slide_enabled"

.field private static final STATUSBAR_GESTURE:Ljava/lang/String; = "leo_salt_statusbar_gesture"

.field private static final VIBRATOR:Ljava/lang/String; = "leo_salt_statusbar_gesture_vibrator"

.field private static final VIBRATORLEVEL:Ljava/lang/String; = "leo_salt_statusbar_gesture_vibrator_level"


# instance fields
.field private mLeft:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mLeftEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mRight:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mRightEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mStatusBarGestureLeftSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mStatusBarGestureLongPress:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mStatusBarGestureRightSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mStatusBarGestureVibratorEnable:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mStatusBarLongPressGestureEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mStatusBarSlideGestureEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mString:Ljava/lang/String;

.field private mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/fragment/StatusBarActionFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/fragment/StatusBarActionFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mString:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Picker(Lcom/leo/salt/preference/SaltSettingDefaultListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "88"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/leo/salt/fragment/StatusBarActionFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "99"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/StatusBarActionFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/StatusBarActionFragment$1;-><init>(Lcom/leo/salt/fragment/StatusBarActionFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_1
    :goto_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p3

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public disablePreferences()V
    .locals 4

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    const-string v1, "slide_enabled"

    const-string v2, "longPress_enabled"

    const-string v3, "vibrator_enabled"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mContext:Landroid/content/Context;

    const-string v0, "statusbar_gesture_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "slide_enabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarSlideGestureEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarSlideGestureEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v1, 0x0

    const-string v2, "leo_salt_statusbar_gesture_slide_enabled"

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

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarSlideGestureEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "longPress_enabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarLongPressGestureEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarLongPressGestureEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v2, "leo_salt_statusbar_gesture_longPress_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarLongPressGestureEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "vibrator_enabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureVibratorEnable:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureVibratorEnable:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v2, "leo_salt_statusbar_gesture_vibrator"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureVibratorEnable:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "LongPress"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureLongPress:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_statusbar_gesture_longPress_action_style"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureLongPress:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureLongPress:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureLongPress:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "LeftSlide"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureLeftSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_statusbar_gesture_leftslide_action_style"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureLeftSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureLeftSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureLeftSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "RightSlide"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureRightSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_statusbar_gesture_rightslide_action_style"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureRightSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureRightSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureRightSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "vibrator_level"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/16 v0, 0xf

    const-string v1, "leo_salt_statusbar_gesture_vibrator_level"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/StatusBarActionFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarActionFragment;->isProKeyInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->disablePreferences()V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object p2, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mContext:Landroid/content/Context;

    const-string v0, "grid_Blacklist"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->Blacklist(Landroid/content/Context;)V

    return v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarActionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarSlideGestureEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "leo_salt_statusbar_gesture_slide_enabled"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarLongPressGestureEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "leo_salt_statusbar_gesture_longPress_enabled"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureVibratorEnable:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "leo_salt_statusbar_gesture_vibrator"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_2
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureLongPress:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_3

    const-string p1, "leo_salt_statusbar_gesture_longPress_action_style"

    invoke-virtual {p0, v1, p2, p1}, Lcom/leo/salt/fragment/StatusBarActionFragment;->Picker(Lcom/leo/salt/preference/SaltSettingDefaultListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_3
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureLeftSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_4

    const-string p1, "leo_salt_statusbar_gesture_leftslide_action_style"

    invoke-virtual {p0, v1, p2, p1}, Lcom/leo/salt/fragment/StatusBarActionFragment;->Picker(Lcom/leo/salt/preference/SaltSettingDefaultListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_4
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mStatusBarGestureRightSlide:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_5

    const-string p1, "leo_salt_statusbar_gesture_rightslide_action_style"

    invoke-virtual {p0, v1, p2, p1}, Lcom/leo/salt/fragment/StatusBarActionFragment;->Picker(Lcom/leo/salt/preference/SaltSettingDefaultListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_5
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarActionFragment;->mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_6

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_gesture_vibrator_level"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onResume()V

    return-void
.end method
