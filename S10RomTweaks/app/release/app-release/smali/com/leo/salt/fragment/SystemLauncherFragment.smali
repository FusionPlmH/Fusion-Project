.class public Lcom/leo/salt/fragment/SystemLauncherFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "SystemLauncherFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final BottomKEY:Ljava/lang/String; = "leo_salt_launcher_gesture_sliding_bottom"

.field public static final DoubleKEY:Ljava/lang/String; = "leo_salt_launcher_gesture_double_style"

.field private static final MENU_RESET:I = 0x1

.field public static final TOPKEY:Ljava/lang/String; = "leo_salt_launcher_gesture_sliding_top"


# instance fields
.field public mBottom:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field public mDouble:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mSlidingEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mString:Ljava/lang/String;

.field public mTop:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field public mWarning:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/fragment/SystemLauncherFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/fragment/SystemLauncherFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/fragment/SystemLauncherFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/fragment/SystemLauncherFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private setDateclick()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_launcher_gesture_sliding_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mWarning:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mTop:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mBottom:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mWarning:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mTop:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mBottom:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mContext:Landroid/content/Context;

    const-string v1, "launcher_gestures_prefs"

    invoke-virtual {p0, v0, p0, v1}, Lcom/leo/salt/fragment/SystemLauncherFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    const-string v0, "sliding_top"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mTop:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const/4 v0, 0x0

    const-string v1, "leo_salt_launcher_gesture_sliding_top"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mTop:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mTop:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mTop:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "sliding_bottom"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SystemLauncherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mBottom:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v1, "leo_salt_launcher_gesture_sliding_bottom"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mBottom:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mBottom:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mBottom:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "gesture_double"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SystemLauncherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mDouble:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v1, "leo_salt_launcher_gesture_double_style"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mDouble:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mDouble:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mDouble:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SystemLauncherFragment;->setHasOptionsMenu(Z)V

    const-string v2, "sliding_enabled"

    invoke-virtual {p0, v2}, Lcom/leo/salt/fragment/SystemLauncherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v2, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mSlidingEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v2, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mSlidingEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v3, "leo_salt_launcher_gesture_sliding_enabled"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mSlidingEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "launcher_warning"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemLauncherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mWarning:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    invoke-direct {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->setDateclick()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mContext:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->Blacklist(Landroid/content/Context;)V

    return v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mTop:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v1, "_short"

    const-string v2, "99"

    const-string v3, "88"

    const/4 v4, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "leo_salt_launcher_gesture_sliding_top"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemLauncherFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/SystemLauncherFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/SystemLauncherFragment$1;-><init>(Lcom/leo/salt/fragment/SystemLauncherFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_1
    :goto_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mTop:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mTop:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v4

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mBottom:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_5

    const-string p1, "leo_salt_launcher_gesture_sliding_bottom"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemLauncherFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/SystemLauncherFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/SystemLauncherFragment$2;-><init>(Lcom/leo/salt/fragment/SystemLauncherFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mBottom:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mBottom:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v4

    :cond_5
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mDouble:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_8

    const-string p1, "leo_salt_launcher_gesture_double_style"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemLauncherFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/SystemLauncherFragment$3;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/SystemLauncherFragment$3;-><init>(Lcom/leo/salt/fragment/SystemLauncherFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_7
    :goto_2
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mDouble:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mDouble:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v4

    :cond_8
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemLauncherFragment;->mSlidingEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v0, :cond_9

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_launcher_gesture_sliding_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/SystemLauncherFragment;->setDateclick()V

    :cond_9
    return v4
.end method
