.class public Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "PulldownDeviceInfoFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY1:Ljava/lang/String;

.field private static final KEY2:Ljava/lang/String;

.field private static final KEY3:Ljava/lang/String;

.field private static final KEY4:Ljava/lang/String;

.field private static final KEY5:Ljava/lang/String;

.field private static final KEY6:Ljava/lang/String;

.field private static final KEY7:Ljava/lang/String;

.field private static final KEY8:Ljava/lang/String;

.field private static final KEYdefault:Ljava/lang/String;


# instance fields
.field private mEnabled:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mList:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/PrefUtils;->LEO_PREFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEYdefault:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEYdefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEYdefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY2:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEYdefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_one_style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY3:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEYdefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_two_style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY4:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEYdefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_three_style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY5:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEYdefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_four_style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY6:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEYdefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_five_style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY7:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEYdefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY8:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private setChinaTime()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY8:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    :cond_4
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
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mContext:Landroid/content/Context;

    const-string v0, "pulldown_deviceinfo_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "Infosize"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY2:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "InfoOnestyle"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY3:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "InfoTwostyle"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY4:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "InfoThreestyle"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY5:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "InfoFourstyle"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY6:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "InfoFivestyle"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY7:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "Infoenabledstyle"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY1:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "InfoList"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mList:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY8:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mList:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mList:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->setChinaTime()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mList:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY8:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->setChinaTime()V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY1:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY2:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY3:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mOne:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY4:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mTwo:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_4
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY5:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mThree:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_5
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY6:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFour:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_6
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->KEY7:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownDeviceInfoFragment;->mFive:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onResume()V

    return-void
.end method
