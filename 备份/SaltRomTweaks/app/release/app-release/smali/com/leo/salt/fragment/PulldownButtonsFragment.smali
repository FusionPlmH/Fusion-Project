.class public Lcom/leo/salt/fragment/PulldownButtonsFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "PulldownButtonsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY:Ljava/lang/String; = "leo_salt_qs_button"

.field public static final mLeoQSHeadsButton:[Ljava/lang/String;

.field private static final mLeobutton:Ljava/lang/String;


# instance fields
.field private mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mKiilWhite:Landroid/preference/Preference;

.field private mLeoClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mLeoEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mSearchEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mSettingEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x6

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeobutton:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leo_salt_qs_button_leo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeobutton:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_enabled"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leo_salt_qs_button_setting"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeobutton:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v0, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leo_salt_qs_button_search"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeobutton:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeobutton:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_style"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x3

    aput-object v2, v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeobutton:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeobutton:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeobutton:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_collapsepanel_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x62s
        0x75s
        0x74s
        0x74s
        0x6fs
        0x6es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private setChinaTime()V
    .locals 9

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-static {v5, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v7, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v7, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v7, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mKiilWhite:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    if-ne v5, v6, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mKiilWhite:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mKiilWhite:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v5, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v5, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v5, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mKiilWhite:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v4}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v4}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mContext:Landroid/content/Context;

    const-string v0, "pulldown_button_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "KiilWhite"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mKiilWhite:Landroid/preference/Preference;

    const-string v0, "qsLeoClick"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsSettingClick"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsSearchClick"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsButtonCollapsePanel"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    sget-object v2, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsLeoEnabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    sget-object v2, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsSettingEnabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    sget-object v2, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "qsSearchEnabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    sget-object v2, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->setChinaTime()V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mCollapsePanels:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->setChinaTime()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->setChinaTime()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->setChinaTime()V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v2, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->setChinaTime()V

    return v1

    :cond_4
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object p1, p1, v0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v2, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSettingClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v1

    :cond_5
    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mLeoQSHeadsButton:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object p1, p1, v0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v2, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownButtonsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mSearchClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v1

    :cond_6
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mKiilWhite:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mContext:Landroid/content/Context;

    const-class v0, Lcom/leo/salt/tweaks/FragSettingActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p2, Lcom/leo/salt/tweaks/FragSettingActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->AppProcess:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/fragment/PulldownButtonsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onResume()V

    return-void
.end method
