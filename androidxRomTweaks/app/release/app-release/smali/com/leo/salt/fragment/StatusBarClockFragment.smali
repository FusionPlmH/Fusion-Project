.class public Lcom/leo/salt/fragment/StatusBarClockFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "StatusBarClockFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final CLOCK_DATE_STYLE_LOWERCASE:I = 0x1

.field public static final CLOCK_DATE_STYLE_UPPERCASE:I = 0x2

.field private static final CUSTOM_CLOCK_DATE_FORMAT_INDEX:I = 0x14

.field private static final STATUSBAR_CLOCK_AM_PM_STYLE:Ljava/lang/String; = "leo_salt_statusbar_clock_ampm_style"

.field private static final STATUSBAR_CLOCK_CHINA_DETAIL_DISPLAY:Ljava/lang/String; = "leo_salt_statusbar_clock_chinadetail_enabled"

.field private static final STATUSBAR_CLOCK_CHINA_DETAIL_POSITION:Ljava/lang/String; = "leo_salt_statusbar_clock_chinadetail_orientation"

.field private static final STATUSBAR_CLOCK_CHINA_DETAIL_STRING:Ljava/lang/String; = "leo_salt_statusbar_clock_chinadetail_string"

.field private static final STATUSBAR_CLOCK_CHINA_DETAIL_STYLE:Ljava/lang/String; = "leo_salt_statusbar_clock_chinadetail_style"

.field private static final STATUSBAR_CLOCK_CHINA_DETAIL_SYMBOL:Ljava/lang/String; = "leo_salt_statusbar_clock_chinadetail_symbol"

.field private static final STATUSBAR_CLOCK_CHINA_DETAIL_SYMBOL_STR:Ljava/lang/String; = "leo_salt_statusbar_clock_chinadetail_symbol_string"

.field private static final STATUSBAR_CLOCK_CLICK:Ljava/lang/String; = "leo_salt_statusbar_clock_onlong"

.field private static final STATUSBAR_CLOCK_CLICKEnabled:Ljava/lang/String; = "leo_salt_statusbar_clock_onclick"

.field private static final STATUSBAR_CLOCK_DATE_DISPLAY:Ljava/lang/String; = "leo_salt_statusbar_clock_date_enabled"

.field private static final STATUSBAR_CLOCK_DATE_FORMAT:Ljava/lang/String; = "leo_salt_statusbar_clock_date_format"

.field private static final STATUSBAR_CLOCK_DATE_POSITION:Ljava/lang/String; = "leo_salt_statusbar_clock_date_orientation"

.field private static final STATUSBAR_CLOCK_DATE_STYLE:Ljava/lang/String; = "leo_salt_statusbar_clock_date_style"

.field private static final STATUSBAR_CLOCK_DATE_WEEK_DISPLAY:Ljava/lang/String; = "leo_salt_statusbar_clock_week_enabled"

.field private static final STATUSBAR_CLOCK_DATE_WEEK_FORMAT:Ljava/lang/String; = "leo_salt_statusbar_clock_week_style"

.field private static final STATUSBAR_CLOCK_DATE_WEEK_SYMBOL:Ljava/lang/String; = "leo_salt_statusbar_clock_week_symbol"

.field private static final STATUSBAR_CLOCK_DATE_WEEK_SYMBOL_STR:Ljava/lang/String; = "leo_salt_statusbar_clock_week_symbol_string"

.field private static final STATUSBAR_CLOCK_DISPLAY:Ljava/lang/String; = "leo_salt_statusbar_clock_enabled"

.field private static final STATUSBAR_CLOCK_END_PADDING:Ljava/lang/String; = "leo_salt_statusbar_clock_end_padding"

.field private static final STATUSBAR_CLOCK_LOCATION:Ljava/lang/String; = "leo_salt_statusbar_clock_orientation"

.field private static final STATUSBAR_CLOCK_LUNAR_MONTH:Ljava/lang/String; = "leo_salt_statusbar_clock_lunar_month"

.field private static final STATUSBAR_CLOCK_MULTIS_SIZE:Ljava/lang/String; = "leo_salt_statusbar_clock_multi_size"

.field private static final STATUSBAR_CLOCK_PADDING:Ljava/lang/String; = "clock_orientation"

.field private static final STATUSBAR_CLOCK_SIZE:Ljava/lang/String; = "leo_salt_statusbar_clock_single_size"

.field private static final STATUSBAR_CLOCK_START_PADDING:Ljava/lang/String; = "leo_salt_statusbar_clock_start_padding"

.field private static final STATUSBAR_CLOCK_WEEK_POSITION:Ljava/lang/String; = "leo_salt_statusbar_clock_week_orientation"


# instance fields
.field clockDetailSymbol:I

.field private mClockChinaDetailDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockClickEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mClockDateDisplay:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockDateWeekDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mClockDateWeekFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mClockMultiSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mClockPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mClockSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mLunarMonth:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/fragment/StatusBarClockFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/fragment/StatusBarClockFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$onPreferenceChange$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private parseClockDateFormats()V
    .locals 9

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "leo_salt_statusbar_clock_date_style"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_3

    if-ne v6, v3, :cond_0

    aget-object v7, v0, v6

    aput-object v7, v1, v6

    goto :goto_2

    :cond_0
    aget-object v7, v0, v6

    invoke-static {v7, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v7

    if-ne v5, v4, :cond_1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    aput-object v7, v1, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setColopd()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_statusbar_clock_chinadetail_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mLunarMonth:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mLunarMonth:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private setDateOptions()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_statusbar_clock_date_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setDonatePreference()V
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClickEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateDisplay:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClickEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateDisplay:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

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

.method public synthetic lambda$onPreferenceChange$0$StatusBarClockFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "leo_salt_statusbar_clock_date_format"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
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
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mContext:Landroid/content/Context;

    const-string v0, "statusbar_clock_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mContext:Landroid/content/Context;

    const-string v1, "statusbar_check_clock_language"

    const-string v2, "statusbar_check_clock"

    const v3, 0x7f100232

    invoke-static {v0, v1, v2, v3}, Lcom/leo/salt/tweaks/view/widget/DialogView;->dialogCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "week_enabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v1, 0x0

    const-string v2, "leo_salt_statusbar_clock_week_enabled"

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

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "week_symbol"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "date_location"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "date_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "week_format"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_statusbar_clock_date_style"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "leo_salt_statusbar_clock_week_style"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "leo_salt_statusbar_clock_week_symbol"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "date_format"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "leo_salt_statusbar_clock_date_format"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "default_date_format"

    invoke-static {v0, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValueIndex(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->parseClockDateFormats()V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "leo_salt_statusbar_clock_date_orientation"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "week_location"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "leo_salt_statusbar_clock_week_orientation"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "detail_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_statusbar_clock_chinadetail_style"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "detail_location"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "leo_salt_statusbar_clock_chinadetail_orientation"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p1, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "single_size"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/16 v0, 0xe

    const-string v2, "leo_salt_statusbar_clock_single_size"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    div-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "multi_size"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockMultiSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/16 v0, 0xa

    const-string v2, "leo_salt_statusbar_clock_multi_size"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockMultiSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    div-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockMultiSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "ampm_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "detail_symbol"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iget v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->clockDetailSymbol:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "start_padding"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v0, "leo_salt_statusbar_clock_start_padding"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "end_padding"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v0, "leo_salt_statusbar_clock_end_padding"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "clock_orientation"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "G97"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f030056

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f030052

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    :goto_2
    iget-object v5, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v5, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v2, v4}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "lunar_month_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mLunarMonth:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_statusbar_clock_lunar_month"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mLunarMonth:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mLunarMonth:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mLunarMonth:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "click_enabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClickEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClickEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v2, "leo_salt_statusbar_clock_onclick"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClickEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "clock_click"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_statusbar_clock_onlong"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "clock_show"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v2, "leo_salt_statusbar_clock_enabled"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "detail_enabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "leo_salt_statusbar_clock_chinadetail_symbol"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->clockDetailSymbol:I

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const-string v2, "leo_salt_statusbar_clock_chinadetail_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0, v3}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v2, "\u5f53\u524d\u4e3a12\u5c0f\u65f6\u5236"

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    iput v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->clockDetailSymbol:I

    const/4 v0, 0x2

    const-string v2, "leo_salt_statusbar_clock_ampm_style"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_6
    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->setColopd()V

    const-string v0, "date_enabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateDisplay:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_statusbar_clock_date_enabled"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateDisplay:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateDisplay:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateDisplay:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->setDateOptions()V

    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->setDonatePreference()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateDisplay:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateDisplay:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_date_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateDisplay:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->setDateOptions()V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_date_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->parseClockDateFormats()V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_5

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x14

    const-string v1, "leo_salt_statusbar_clock_date_format"

    if-ne p1, v0, :cond_3

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mContext:Landroid/content/Context;

    const-string v0, "input_date_title"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mContext:Landroid/content/Context;

    const-string v0, "input_date_message"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p2, "android"

    const-string v0, "menu_ic_magnifier_window"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mContext:Landroid/content/Context;

    const-string v3, "input_date_hint"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v1, Lcom/leo/salt/fragment/-$$Lambda$StatusBarClockFragment$7ITyL2_NhUT8NigeCw1bgGZk8uI;

    invoke-direct {v1, p0, p2}, Lcom/leo/salt/fragment/-$$Lambda$StatusBarClockFragment$7ITyL2_NhUT8NigeCw1bgGZk8uI;-><init>(Lcom/leo/salt/fragment/StatusBarClockFragment;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    sget-object v0, Lcom/leo/salt/fragment/-$$Lambda$StatusBarClockFragment$LZpxJoK5csONa6o2H0mAQNKcp9Y;->INSTANCE:Lcom/leo/salt/fragment/-$$Lambda$StatusBarClockFragment$LZpxJoK5csONa6o2H0mAQNKcp9Y;

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    :goto_0
    return v2

    :cond_5
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_6

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_date_orientation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDatePosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->parseClockDateFormats()V

    return v2

    :cond_6
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_statusbar_clock_week_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_7
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_8

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_week_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekFormat:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_8
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v3, "14"

    if-ne p1, v1, :cond_a

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "leo_salt_statusbar_clock_week_symbol_string"

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/StatusBarClockFragment;->EditTextDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_week_symbol"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_a
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_b

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_week_orientation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockWeekPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->parseClockDateFormats()V

    return v2

    :cond_b
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_statusbar_clock_chinadetail_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->setColopd()V

    return v2

    :cond_c
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_f

    const-string p1, "2"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "\u4e94\u66f4,\u6839\u636e\u4e2d\u56fd\u53e4\u4ee3\u66f4\u592b\u6253\u66f4\u65f6\u95f4\u8bbe\u7f6e,\u4ec5\u652f\u6301\u665a\u4e0a19\u70b9\u81f3\u6b21\u65e55\u70b9"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarClockFragment;->showSnack(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    const-string p1, "7"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "leo_salt_statusbar_clock_chinadetail_string"

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/StatusBarClockFragment;->EditTextDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_chinadetail_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_f
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_11

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "leo_salt_statusbar_clock_chinadetail_symbol_string"

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/StatusBarClockFragment;->EditTextDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_chinadetail_symbol"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockChinaDetailSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_11
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_12

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_chinadetail_orientation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDetailPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->parseClockDateFormats()V

    return v2

    :cond_12
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_13

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_clock_single_size"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_13
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockMultiSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_14

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_clock_multi_size"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_14
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_15

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_ampm_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStatusBarAmPm:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_15
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_16

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_clock_start_padding"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_16
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_17

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_clock_end_padding"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_17
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_18

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_orientation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockPosition:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_18
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mLunarMonth:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_19

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mLunarMonth:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_statusbar_clock_lunar_month"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mLunarMonth:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_19
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_1c

    const-string p1, "leo_salt_statusbar_clock_onlong"

    const-string v0, "5"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarClockFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_2

    :cond_1a
    const-string v0, "6"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/StatusBarClockFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/StatusBarClockFragment$1;-><init>(Lcom/leo/salt/fragment/StatusBarClockFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_1b
    :goto_2
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_1c
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockClickEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v0, :cond_1d

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_statusbar_clock_onclick"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1d
    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarClockFragment;->mClockDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v0, :cond_1e

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_statusbar_clock_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1e
    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarClockFragment;->setDonatePreference()V

    return v2
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onResume()V

    return-void
.end method
