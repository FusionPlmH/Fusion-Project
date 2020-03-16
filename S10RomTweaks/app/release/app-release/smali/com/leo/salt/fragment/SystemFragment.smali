.class public Lcom/leo/salt/fragment/SystemFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "SystemFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static KernelVersion:Ljava/lang/String;


# instance fields
.field private final BOOT_QMG_SELECTOR:I

.field private final BOOT_zip_QMG_SELECTOR:I

.field public XML:Ljava/lang/String;

.field downloadDialog:Landroid/app/ProgressDialog;

.field intent:Landroid/content/Intent;

.field private mAirplane:Landroid/preference/SwitchPreference;

.field private mAirplaneKEY:Ljava/lang/String;

.field private mBatteryLog:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mBootAnimation:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

.field private mDoze:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mSTK:Landroid/preference/SwitchPreference;

.field private mSTKKEY:Ljava/lang/String;

.field private mSimSdBlock:Landroid/preference/SwitchPreference;

.field private mTaobap:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mUSB:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const-string v0, "system_prefs"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->XML:Ljava/lang/String;

    const-string v0, "leo_airplane"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplaneKEY:Ljava/lang/String;

    const-string v0, "leo_stk"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTKKEY:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/fragment/SystemFragment;->BOOT_QMG_SELECTOR:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/leo/salt/fragment/SystemFragment;->BOOT_zip_QMG_SELECTOR:I

    return-void
.end method

.method private Airplane(Z)V
    .locals 2

    const-string v0, "airplane_mode_radios"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "cell,bluetooth,nfc,wimax"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "cell,bluetooth,wifi,nfc,wimax"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private AnimationSelect()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "animation_boot_select"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$y_WPpWoKk-8jvubNixYfqRsaWvo;->INSTANCE:Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$y_WPpWoKk-8jvubNixYfqRsaWvo;

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$OZG_S3Hi2317ViMJ4K35eCHVn54;

    invoke-direct {v1, p0}, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$OZG_S3Hi2317ViMJ4K35eCHVn54;-><init>(Lcom/leo/salt/fragment/SystemFragment;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "animation_boot_usinghelp"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$PuEeqmHWT0jSNc677PDz1fvmrro;

    invoke-direct {v2, p0}, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$PuEeqmHWT0jSNc677PDz1fvmrro;-><init>(Lcom/leo/salt/fragment/SystemFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Fluid()V
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mTaobap:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mTaobap:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method public static getDynamiclockStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "com.samsung.android.dynamiclock"

    invoke-static {p0, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getResourcesForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "string"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$AnimationSelect$0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$null$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public disablePreferences()V
    .locals 4

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    const-string v1, "leo_boot_anim"

    const-string v2, "leo_doze"

    const-string v3, "SimSdBlock"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

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

.method public isAvilible(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$AnimationSelect$1$SystemFragment(Landroid/content/DialogInterface;I)V
    .locals 3

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    const-string p2, "extension"

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    const-class v1, Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->intent:Landroid/content/Intent;

    const-string v0, "qmg"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->intent:Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->intent:Landroid/content/Intent;

    const-string v1, "zip"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/SystemFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    new-instance p1, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->backupBootAnima()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$AnimationSelect$3$SystemFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "animation_boot_usinghelp"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "animation_boot_info"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object p2, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$Yx8h9uMdZGlqEr19mH_wlYcBhF8;->INSTANCE:Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$Yx8h9uMdZGlqEr19mH_wlYcBhF8;

    const v0, 0x1040013

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public synthetic lambda$onActivityResult$4$SystemFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p2, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object p3, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->FlashBootAnimation(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$onActivityResult$5$SystemFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p2, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object p3, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->FlashBootAnimation(Ljava/lang/String;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0x1040013

    const-string v1, "animation_boot_confirm"

    const/4 v2, -0x1

    const-string v3, "file"

    if-nez p1, :cond_0

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v2, "animation_boot_qmg"

    invoke-static {p3, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "animation_boot_confirm_qmg_info"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p3, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$7pBvhhxpNM6jWMjaWE170WttURo;

    invoke-direct {p3, p0, p1}, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$7pBvhhxpNM6jWMjaWE170WttURo;-><init>(Lcom/leo/salt/fragment/SystemFragment;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v2, "animation_boot_zip"

    invoke-static {p3, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "animation_boot_confirm_zip_info"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p3, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$xB3sVB5k_x8MZ3Lmj78ePHX583I;

    invoke-direct {p3, p0, p1}, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$xB3sVB5k_x8MZ3Lmj78ePHX583I;-><init>(Lcom/leo/salt/fragment/SystemFragment;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->XML:Ljava/lang/String;

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/SystemFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    new-instance p1, Lcom/leo/salt/tools/DeleteApps;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tools/DeleteApps;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->downloadDialog:Landroid/app/ProgressDialog;

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplaneKEY:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplane:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplaneKEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplane:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplane:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "SimSdBlock"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSimSdBlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "LeoSimSdBlock"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mSimSdBlock:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSimSdBlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "wake_unplugged"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUSB:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "usb_wake_unplugged"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mUSB:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUSB:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTKKEY:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTK:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTKKEY:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTK:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTK:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "leo_battery_log"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mBatteryLog:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "leo_boot_anim"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mBootAnimation:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "leo_taobao"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mTaobap:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "leo_doze"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mDoze:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-direct {p0}, Lcom/leo/salt/fragment/SystemFragment;->Fluid()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->isProKeyInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->disablePreferences()V

    :cond_4
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplane:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplaneKEY:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->Airplane(Z)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTK:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTKKEY:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    invoke-virtual {p2, p1}, Lcom/leo/salt/tools/DeleteApps;->StkBoolean(Z)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSimSdBlock:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "LeoSimSdBlock"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_2
    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUSB:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "usb_wake_unplugged"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mBatteryLog:Lcom/leo/salt/preference/SaltSettingPreference;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    const-string p2, "/data/data/com.leo.salt.tweaks/files/scripts/battery_history_clear.sh"

    invoke-static {p1, p2, v1}, Lcom/leo/salt/utils/PrefUtils;->ScriptsLogClear(Landroid/content/Context;Ljava/lang/String;I)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mBootAnimation:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/leo/salt/fragment/SystemFragment;->AnimationSelect()V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mTaobap:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_2

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    const-string p2, "/data/data/com.leo.salt.tweaks/files/scripts/app_simple.sh"

    invoke-static {p1, p2, v1}, Lcom/leo/salt/utils/PrefUtils;->ScriptsLogClear(Landroid/content/Context;Ljava/lang/String;I)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mDoze:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_3

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    const-string p2, "/data/data/com.leo.salt.tweaks/files/scripts/doze_clear.sh"

    invoke-static {p1, p2, v1}, Lcom/leo/salt/utils/PrefUtils;->ScriptsLogClear(Landroid/content/Context;Ljava/lang/String;I)V

    return v2

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
