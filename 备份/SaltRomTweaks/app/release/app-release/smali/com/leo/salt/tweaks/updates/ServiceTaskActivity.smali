.class public Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;
.super Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;
.source "ServiceTaskActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;
    }
.end annotation


# static fields
.field public static final OTADOWNLOADNAME:Ljava/lang/String;

.field public static final OTADownloadPath:Ljava/lang/String;

.field public static final OTAFinalNAME:Ljava/lang/String;

.field public static mInstallOS:Lcom/leo/salt/tweaks/updates/PackageInstall;

.field public static mTaskActivity:Landroid/app/Activity;

.field private static mUpdatesBar:Landroid/widget/ProgressBar;

.field private static mUpdatesProgress:Landroid/widget/TextView;


# instance fields
.field public ROMINFO:Landroid/widget/TextView;

.field public mChangelog:Ljava/lang/String;

.field public mChangelogEN:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field public mDetail:Ljava/lang/String;

.field public mDetailEN:Ljava/lang/String;

.field public mDetailInfo:Landroid/widget/TextView;

.field public mDetailText:Landroid/widget/TextView;

.field private mDownloadBinder:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

.field private mDownloadLayoutButton:Landroid/view/View;

.field public mDownloadUrl:Ljava/lang/String;

.field public mDownloadUrlZH:Ljava/lang/String;

.field private mFabCancel:Landroid/widget/TextView;

.field private mFabDownload:Landroid/widget/TextView;

.field private mFabPause:Landroid/widget/TextView;

.field private mFabRestart:Landroid/widget/TextView;

.field private mFabResume:Landroid/widget/TextView;

.field public mNseText:Landroid/widget/TextView;

.field public mOSname:Landroid/widget/TextView;

.field public mROMTitle:Ljava/lang/String;

.field public mROMversion:Ljava/lang/String;

.field public mState:Landroid/widget/TextView;

.field public responseText:Landroid/widget/TextView;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/LeoTweaks/update/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTADownloadPath:Ljava/lang/String;

    const-string v0, "ota_package_name"

    invoke-static {v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTAProgressTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTADOWNLOADNAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTADownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ota.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTAFinalNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;-><init>()V

    new-instance v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$1;-><init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private DownloadServer()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u7ad9\u70b9"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ota_name"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$O3yiPGpoOferZaXZh0jElHZFX8w;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$O3yiPGpoOferZaXZh0jElHZFX8w;-><init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private OTACheck(Ljava/lang/String;)V
    .locals 8

    const-string v0, "\n"

    const-string v1, "versionName"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mROMversion:Ljava/lang/String;

    const-string p1, "ro.build.display.id"

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mROMversion:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->checkUpdateError(Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadLayoutButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "title"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mROMTitle:Ljava/lang/String;

    const-string p1, "Changelog"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mChangelog:Ljava/lang/String;

    const-string p1, "Changelog_en"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mChangelogEN:Ljava/lang/String;

    const-string p1, "devices_model"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mROMversion:Ljava/lang/String;

    const-string v1, "DownloadUrl"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadUrl:Ljava/lang/String;

    const-string v1, "ZH_DownloadUrl"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadUrlZH:Ljava/lang/String;

    const-string v1, "MoreInfo_CN"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDetail:Ljava/lang/String;

    const-string v1, "MoreInfo_EN"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDetailEN:Ljava/lang/String;

    const-string v1, "Danger_warning"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Danger_warning_en"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecurityReminder"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->ROMINFO:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mROMTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\nVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mROMversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\nModel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mState:Landroid/widget/TextView;

    const-string v4, "ota_state_info_usable"

    invoke-virtual {p0, v4}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDetail:Ljava/lang/String;

    iget-object v3, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mChangelog:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDetailEN:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mChangelogEN:Ljava/lang/String;

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    :goto_0
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mContext:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->importantHintDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDetailText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDetailText:Landroid/widget/TextView;

    new-instance v2, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$Czz0t-n_nNudiLEwItUA5-JoK7g;

    invoke-direct {v2, p0, p1}, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$Czz0t-n_nNudiLEwItUA5-JoK7g;-><init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->responseText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static OTAProgressTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$002(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;)Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadBinder:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    return-object p1
.end method

.method static synthetic access$102(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    sput-object p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mUpdatesProgress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200()Landroid/widget/ProgressBar;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mUpdatesBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    sput-object p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mUpdatesBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTACheck(Ljava/lang/String;)V

    return-void
.end method

.method private checkNetworkInf()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->hasNetWork(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mContext:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "ota_network_no"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$Xs8AsxW16M-GN-4S1aiGbOfvb4k;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$Xs8AsxW16M-GN-4S1aiGbOfvb4k;-><init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->hasNetWork(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\t\ud83d\ude40\t\ud83d\ude40\t\ud83d\ude40\t\ud83d\ude40"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ota_network_mobile"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ota_network_mobile_no"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$a-BZG6Vf2OD2VkvRGvMXCE_SZHA;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$a-BZG6Vf2OD2VkvRGvMXCE_SZHA;-><init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ota_network_mobile_yes"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$iNBSZur7Sc_HmLXDE2WcQYWylU8;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$iNBSZur7Sc_HmLXDE2WcQYWylU8;-><init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->checkOTAInfo(Z)V

    :goto_0
    return-void
.end method

.method private checkOTAInfo(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->showLoadDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static onDownloadFinish(Ljava/io/File;)V
    .locals 2

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTADownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTADOWNLOADNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTAFinalNAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    sget-object p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mUpdatesProgress:Landroid/widget/TextView;

    const-string v0, "ota_state_info_ok"

    invoke-static {v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTAProgressTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/leo/salt/tweaks/updates/PackageInstall;

    invoke-direct {p0}, Lcom/leo/salt/tweaks/updates/PackageInstall;-><init>()V

    sput-object p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mInstallOS:Lcom/leo/salt/tweaks/updates/PackageInstall;

    sget-object p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mInstallOS:Lcom/leo/salt/tweaks/updates/PackageInstall;

    sget-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mTaskActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/PackageInstall;->ZipInstall(Landroid/content/Context;)V

    return-void
.end method

.method public static onDownloadProgress(JJF)V
    .locals 3

    sget-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mUpdatesBar:Landroid/widget/ProgressBar;

    float-to-int v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mUpdatesProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_file_size"

    invoke-static {v2}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTAProgressTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/leo/salt/down/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\uff3b"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "download_progress"

    invoke-static {p2}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTAProgressTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "%\uff5e"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/leo/salt/down/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff3d"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static onDownloadStart(JJF)V
    .locals 3

    sget-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mUpdatesBar:Landroid/widget/ProgressBar;

    float-to-int v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mUpdatesProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_file_size"

    invoke-static {v2}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTAProgressTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/leo/salt/down/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\uff3b"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "download_progress"

    invoke-static {p2}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTAProgressTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "%\uff5e"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/leo/salt/down/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff3d"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public BackPressed(I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$UGEoW7xA-HZGGpz8SEN93rEQZ6o;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$UGEoW7xA-HZGGpz8SEN93rEQZ6o;-><init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public DownloadFab()V
    .locals 2

    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadLayoutButton:Landroid/view/View;

    const v0, 0x7f09011e

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabDownload:Landroid/widget/TextView;

    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabPause:Landroid/widget/TextView;

    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabRestart:Landroid/widget/TextView;

    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabCancel:Landroid/widget/TextView;

    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabResume:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabDownload:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabPause:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabRestart:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabDownload:Landroid/widget/TextView;

    const-string v1, "ota_download"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabPause:Landroid/widget/TextView;

    const-string v1, "ota_pause"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabRestart:Landroid/widget/TextView;

    const-string v1, "ota_continue"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabCancel:Landroid/widget/TextView;

    const v1, 0x7f100160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabResume:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabResume:Landroid/widget/TextView;

    const v1, 0x7f100163

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public OTATextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->OTAUrlView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090039

    return v0
.end method

.method protected initCollapsingTextText()Ljava/lang/String;
    .locals 1

    const-string v0, "leo_slide_meun_update"

    return-object v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0026

    return v0
.end method

.method public synthetic lambda$BackPressed$3$ServiceTaskActivity()V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$DownloadServer$4$ServiceTaskActivity(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string p1, "ota_state_info_download"

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadUrl:Ljava/lang/String;

    invoke-static {p2}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->url:Ljava/lang/String;

    iget-object p2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabDownload:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabPause:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mState:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadUrlZH:Ljava/lang/String;

    invoke-static {p2}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->url:Ljava/lang/String;

    iget-object p2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabDownload:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabPause:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mState:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadBinder:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    sget-object p2, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTADownloadPath:Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTADOWNLOADNAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->url:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p1, p2, v0, v1, v3}, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$OTACheck$5$ServiceTaskActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$checkNetworkInf$0$ServiceTaskActivity(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->BackPressed(I)V

    return-void
.end method

.method public synthetic lambda$checkNetworkInf$1$ServiceTaskActivity(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public synthetic lambda$checkNetworkInf$2$ServiceTaskActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->checkOTAInfo(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabPause:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabResume:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mState:Landroid/widget/TextView;

    const v0, 0x7f100164

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadBinder:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->resumeDownload(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mState:Landroid/widget/TextView;

    const-string v0, "ota_state_info_continue"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadBinder:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->restartDownload(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabResume:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabPause:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mState:Landroid/widget/TextView;

    const-string v0, "ota_state_info_pause"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadBinder:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->pauseDownload(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->DownloadServer()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabPause:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabResume:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mFabDownload:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mState:Landroid/widget/TextView;

    const-string v0, "ota_state_info_cancel"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDownloadBinder:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->cancelDownload(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09011d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mTaskActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->checkNetworkInf()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->SafetyDonateDialogView(Landroid/app/Activity;)V

    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/leo/salt/tools/service/DownloadService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onDestroy()V

    return-void
.end method

.method public showLoadDialog(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;-><init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
