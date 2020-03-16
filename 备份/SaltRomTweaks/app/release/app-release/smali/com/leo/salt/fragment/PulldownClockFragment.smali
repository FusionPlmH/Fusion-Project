.class public Lcom/leo/salt/fragment/PulldownClockFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "PulldownClockFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY1:Ljava/lang/String; = "leo_salt_qs_clock_enabled"

.field private static final KEY10:Ljava/lang/String; = "leo_salt_qs_clock_size"

.field private static final KEY11:Ljava/lang/String; = "leo_salt_qs_clock_vibrator_level"

.field private static final KEY12:Ljava/lang/String; = "leo_salt_qs_clock_vibrator"

.field private static final KEY13:Ljava/lang/String; = "leo_salt_qs_clock_collapsepanel_enabled"

.field private static final KEY14:Ljava/lang/String; = "leo_salt_qs_clock_click_action_style"

.field private static final KEY2:Ljava/lang/String; = "leo_salt_qs_clock_chinadetail_enabled"

.field private static final KEY3:Ljava/lang/String; = "leo_salt_qs_clock_action_enabled"

.field private static final KEY4:Ljava/lang/String; = "leo_salt_qs_clock_chinadetail_style"

.field private static final KEY6:Ljava/lang/String; = "leo_salt_qs_clock_chinadetail_symbol_style"

.field private static final KEY7:Ljava/lang/String; = "leo_salt_qs_clock_chinadetail_zoom_enabled"

.field private static final KEY8:Ljava/lang/String; = "leo_salt_qs_clock_chinadetail_zoom_style"

.field private static final KEY9:Ljava/lang/String; = "leo_salt_qs_clock_box_size"

.field private static final KEYdefault:Ljava/lang/String; = "leo_salt_qs_clock"

.field public static final mLeoChineseClock:Ljava/lang/String; = "_chinadetail"


# instance fields
.field private mActionEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mBoxSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mChinaTime:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockDetaiZoom:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mClockZoomScale:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mString:Ljava/lang/String;

.field private mVibratorEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/fragment/PulldownClockFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/fragment/PulldownClockFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mString:Ljava/lang/String;

    return-object p0
.end method

.method private setChinaTime()V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_qs_clock_chinadetail_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leo_salt_qs_clock_action_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockDetaiZoom:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockZoomScale:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockDetaiZoom:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockZoomScale:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mChinaTime:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mChinaTime:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    :goto_2
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mActionEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mActionEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mChinaTime:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    :goto_3
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mContext:Landroid/content/Context;

    const-string v0, "pulldown_clock_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mContext:Landroid/content/Context;

    const-string v1, "qs_check_clock_language"

    const-string v2, "qs_check_clock"

    const v3, 0x7f10014b

    invoke-static {v0, v1, v2, v3}, Lcom/leo/salt/tweaks/view/widget/DialogView;->dialogCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "qsclockenabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v1, 0x1

    const-string v2, "leo_salt_qs_clock_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockdetailstyle"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_qs_clock_chinadetail_style"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockdetailsymbol"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_qs_clock_chinadetail_symbol_style"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockdetailszoom"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockDetaiZoom:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockDetaiZoom:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v2, "leo_salt_qs_clock_chinadetail_zoom_enabled"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockDetaiZoom:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockdetailsScale"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockZoomScale:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_qs_clock_chinadetail_zoom_style"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockZoomScale:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockZoomScale:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockZoomScale:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockboxsize"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mBoxSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/16 v0, 0x2c

    const-string v2, "leo_salt_qs_clock_box_size"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mBoxSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    div-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mBoxSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclocksize"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/16 v0, 0x10

    const-string v2, "leo_salt_qs_clock_size"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    div-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockVibratorLevel"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/16 v0, 0xf

    const-string v2, "leo_salt_qs_clock_vibrator_level"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    div-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockVibrator"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v2, "leo_salt_qs_clock_vibrator"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockCollapsePanel"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v2, "leo_salt_qs_clock_collapsepanel_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockclickstyle"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_qs_clock_click_action_style"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockchinaenabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mChinaTime:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mChinaTime:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v2, "leo_salt_qs_clock_chinadetail_enabled"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mChinaTime:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsclockactionenabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mActionEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mActionEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v2, "leo_salt_qs_clock_action_enabled"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mActionEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->setChinaTime()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_qs_clock_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mChinaTime:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_qs_clock_chinadetail_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->setChinaTime()V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mActionEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_qs_clock_action_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->setChinaTime()V

    return v2

    :cond_2
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_5

    const-string p1, "2"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u4e94\u66f4,\u6839\u636e\u4e2d\u56fd\u53e4\u4ee3\u66f4\u592b\u6253\u66f4\u65f6\u95f4\u8bbe\u7f6e,\u4ec5\u652f\u6301\u665a\u4e0a19\u70b9\u81f3\u6b21\u65e55\u70b9"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/PulldownClockFragment;->showSnack(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "7"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "leo_salt_qs_clock_chinadetail_style_string"

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/PulldownClockFragment;->EditTextDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_qs_clock_chinadetail_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_5
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_6

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_qs_clock_chinadetail_symbol_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_6
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockDetaiZoom:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_qs_clock_chinadetail_zoom_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_7
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockZoomScale:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_8

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockZoomScale:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_qs_clock_chinadetail_zoom_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockZoomScale:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_8
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_9

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_qs_clock_size"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_9
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_a

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_qs_clock_vibrator_level"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_a
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mBoxSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_b

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_qs_clock_box_size"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_b
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mVibratorEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v0, :cond_c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_qs_clock_vibrator"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_c
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v0, :cond_d

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_qs_clock_collapsepanel_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_d
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_10

    const-string p1, "leo_salt_qs_clock_click_action_style"

    const-string v0, "5"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/PulldownClockFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    const-string v0, "6"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/PulldownClockFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/PulldownClockFragment$1;-><init>(Lcom/leo/salt/fragment/PulldownClockFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_f
    :goto_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onResume()V

    return-void
.end method
