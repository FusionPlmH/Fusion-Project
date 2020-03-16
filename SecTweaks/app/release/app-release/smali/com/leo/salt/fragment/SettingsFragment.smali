.class public Lcom/leo/salt/fragment/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/leo/salt/theme/ColorChooseDialog$IClickColorSelectCallback;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREF_LEO_LAUNCHER:Ljava/lang/String; = "leo_tweaks_app_launcher_enabled"

.field private static final THEME:Ljava/lang/String; = "leo_tweaks_app_theme"

.field private static final clear:Ljava/lang/String; = "leo_tweaks_app_clear"


# instance fields
.field TAG:Ljava/lang/String;

.field private createShortCut:Lcom/leo/salt/preference/MyPreference;

.field public intentFragment:Landroid/content/Intent;

.field private mCcc:Lcom/leo/salt/base/BaseActivity;

.field private mLauncher:Lcom/leo/salt/preference/MySwitchPreference;

.field private mLeoLauncherComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string v0, "LeoROM"

    iput-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method private setLauncherEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCcc:Lcom/leo/salt/base/BaseActivity;

    invoke-virtual {v0}, Lcom/leo/salt/base/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLeoLauncherComponent:Landroid/content/ComponentName;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCcc:Lcom/leo/salt/base/BaseActivity;

    const v0, 0x7f100237

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onClickSelectCallback(II)V
    .locals 1

    iget-object p2, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCcc:Lcom/leo/salt/base/BaseActivity;

    invoke-virtual {p2}, Lcom/leo/salt/base/BaseActivity;->getThemeUtils()Lcom/leo/salt/theme/ThemeControl;

    move-result-object p2

    invoke-static {}, Lcom/leo/salt/theme/ThemeControl;->themeArr()[I

    move-result-object v0

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/leo/salt/theme/ThemeControl;->setTheme(I)V

    iget-object p2, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCcc:Lcom/leo/salt/base/BaseActivity;

    invoke-virtual {p2}, Lcom/leo/salt/base/BaseActivity;->getThemeUtils()Lcom/leo/salt/theme/ThemeControl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/leo/salt/theme/ThemeControl;->setThemePosition(I)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCcc:Lcom/leo/salt/base/BaseActivity;

    invoke-virtual {p1}, Lcom/leo/salt/base/BaseActivity;->reload()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/base/BaseActivity;

    iput-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCcc:Lcom/leo/salt/base/BaseActivity;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    const p1, 0x7f130013

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SettingsFragment;->addPreferencesFromResource(I)V

    const-string p1, "leo_tweaks_app_theme"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "leo_tweaks_app_clear"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/MyPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->createShortCut:Lcom/leo/salt/preference/MyPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->createShortCut:Lcom/leo/salt/preference/MyPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/MyPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCcc:Lcom/leo/salt/base/BaseActivity;

    const-class v2, Lcom/leo/salt/LauncherActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLeoLauncherComponent:Landroid/content/ComponentName;

    const-string v0, "leo_tweaks_app_launcher_enabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/MySwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncher:Lcom/leo/salt/preference/MySwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncher:Lcom/leo/salt/preference/MySwitchPreference;

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLeoLauncherComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/MySwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncher:Lcom/leo/salt/preference/MySwitchPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/MySwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange----->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncher:Lcom/leo/salt/preference/MySwitchPreference;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/leo/salt/fragment/SettingsFragment;->setLauncherEnabled(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leo_tweaks_app_clear"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCcc:Lcom/leo/salt/base/BaseActivity;

    invoke-static {p1}, Lcom/leo/salt/widget/MyShortcutManager;->addShortCut(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCcc:Lcom/leo/salt/base/BaseActivity;

    const-string v0, "\u4e0d\u652f\u6301\u5f53\u524d\u5b89\u5353\u7cfb\u7edf\u7248\u672c"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string p1, "leo_tweaks_app_theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/leo/salt/theme/ColorChooseDialog;

    invoke-direct {p1}, Lcom/leo/salt/theme/ColorChooseDialog;-><init>()V

    invoke-virtual {p1, p0}, Lcom/leo/salt/theme/ColorChooseDialog;->setColorSelectCallback(Lcom/leo/salt/theme/ColorChooseDialog$IClickColorSelectCallback;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCcc:Lcom/leo/salt/base/BaseActivity;

    invoke-virtual {v0}, Lcom/leo/salt/base/BaseActivity;->getThemeUtils()Lcom/leo/salt/theme/ThemeControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/leo/salt/theme/ThemeControl;->getThemePosition()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/leo/salt/theme/ColorChooseDialog;->show(Landroid/support/v7/app/AppCompatActivity;I)V

    :cond_2
    :goto_0
    return v1
.end method
