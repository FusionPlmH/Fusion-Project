.class public Lcom/leo/salt/fragment/PulldownAnalogClockFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "PulldownAnalogClockFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ANALOGCLOCK:Ljava/lang/String; = "leo_salt_panel_analogclock"

.field private static final ENABLED:Ljava/lang/String; = "leo_salt_panel_analogclock_enabled"


# instance fields
.field DialIcon:[Landroid/graphics/drawable/Drawable;

.field private mAnalogClockStyle:Lcom/leo/salt/preference/SaltSettingIconListPreference;

.field private mEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "analogclock_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_dial"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->AnalogClockDial(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->DialIcon:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public AnalogClockDial(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "sneeky"

    return-object p1

    :pswitch_0
    const-string p1, "yuan"

    return-object p1

    :pswitch_1
    const-string p1, "dian"

    return-object p1

    :pswitch_2
    const-string p1, "kaleidoscope"

    return-object p1

    :pswitch_3
    const-string p1, "num"

    return-object p1

    :pswitch_4
    const-string p1, "hit"

    return-object p1

    :pswitch_5
    const-string p1, "spidey"

    return-object p1

    :pswitch_6
    const-string p1, "spectrum"

    return-object p1

    :pswitch_7
    const-string p1, "baii"

    return-object p1

    :pswitch_8
    const-string p1, "dot"

    return-object p1

    :pswitch_9
    const-string p1, "custom"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->getContext()Landroid/content/Context;

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

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mContext:Landroid/content/Context;

    const-string v0, "pulldown_analogclock_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "analogclock_enabled"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v1, 0x0

    const-string v2, "leo_salt_panel_analogclock_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "analogcolock"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string v0, "qs_analogcolock_tab"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "panel_analogclock_dial_style"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mAnalogClockStyle:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mAnalogClockStyle:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    const-string v0, "dial_style_entries"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mAnalogClockStyle:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    const-string v0, "dial_style_values"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mAnalogClockStyle:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->DialIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setDrawableArray([Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mAnalogClockStyle:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "icon_select"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mAnalogClockStyle:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->mEnabled:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PulldownAnalogClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_panel_analogclock_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onResume()V

    return-void
.end method
