.class public Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;
.super Lcom/leo/salt/tweaks/base/BaseActivity;
.source "FotaUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$HttpNetworkRequestTask;
    }
.end annotation


# static fields
.field public static final FOTADOWNPTH:Ljava/lang/String;

.field public static final FOTANAME:Ljava/lang/String;

.field public static FOTSTATIC:Ljava/lang/String;

.field private static final ONLINE_UPDATE:Ljava/lang/String;

.field private static mFotaBar:Lcom/leo/salt/tweaks/fota/FotaProgressBar;

.field private static mFotaCompleteSize:Landroid/widget/TextView;

.field private static mFotaSize:Landroid/widget/TextView;

.field private static mFotaStateSize:Landroid/widget/TextView;

.field public static mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;


# instance fields
.field private ChineseChangelog:Ljava/lang/String;

.field private ChineseUrl:Ljava/lang/String;

.field private ChineseWarning:Ljava/lang/String;

.field private FOATVERSION:I

.field private GlobalChangelog:Ljava/lang/String;

.field private GlobalUrl:Ljava/lang/String;

.field private GlobalWarning:Ljava/lang/String;

.field private ONLINE_UPDATE_VERSION:I

.field private mBuildDisplay:Landroid/widget/TextView;

.field private mBuildOnlineUpdate:Landroid/widget/TextView;

.field private mBuildSecurityPatch:Landroid/widget/TextView;

.field private mCheckOnlineUpdate:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

.field private mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDownButtonGroup:Landroid/widget/LinearLayout;

.field private mFoatCancel:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

.field private mFoatDownload:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

.field private mFoatPause:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

.field private mFoatRestart:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

.field private mFoatResume:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

.field private mFoatUpdateInfo:Landroid/widget/TextView;

.field private mFotaBinder:Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;

.field private mFotaUrl:Ljava/lang/String;

.field private mRecentUpdate:Landroid/widget/LinearLayout;

.field private mRelative:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.leo.online.update"

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemProperties;->getLeoSystemPropString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ONLINE_UPDATE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/resource/Resource;->LeoDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.fota"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOTADOWNPTH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ota_package_name"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOTANAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOTADOWNPTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOTANAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOTSTATIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;-><init>()V

    const-string v0, "ro.leo.online.update.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/os/salt/OSBuild$SystemProperties;->getLeoSystemInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ONLINE_UPDATE_VERSION:I

    new-instance v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$1;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private FotaDownloadServer()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100127

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "ota_name"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$tZmFA_VCwoDhiVQb_jMOMGXcbwc;->INSTANCE:Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$tZmFA_VCwoDhiVQb_jMOMGXcbwc;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$uUwZxze-6ow_xx7bhn_O7eLbN6k;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$uUwZxze-6ow_xx7bhn_O7eLbN6k;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$0upE7RbgHLBiumjUz9DaH8ubBr8;->INSTANCE:Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$0upE7RbgHLBiumjUz9DaH8ubBr8;

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private OTACheck(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "versionCode"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOATVERSION:I

    const-string p1, "CNChangelog"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ChineseChangelog:Ljava/lang/String;

    const-string p1, "ENChangelog"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->GlobalChangelog:Ljava/lang/String;

    const-string p1, "PushState"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->LeoDonateUnlock()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CNurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ChineseUrl:Ljava/lang/String;

    const-string v1, "ENurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->GlobalUrl:Ljava/lang/String;

    const-string v1, "CNwarning"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ChineseWarning:Ljava/lang/String;

    const-string v1, "ENwarning"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->GlobalWarning:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_4

    iget p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOATVERSION:I

    iget v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ONLINE_UPDATE_VERSION:I

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mCheckOnlineUpdate:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mBuildOnlineUpdate:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f100117

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOATVERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android_versions"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f100128

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mBuildOnlineUpdate:Landroid/widget/TextView;

    const v0, 0x7f0600be

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mDownButtonGroup:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->LeoDonateUnlock()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ChineseWarning:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->GlobalWarning:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FotaWarningDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const p1, 0x7f100122

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->showSnacknAccent(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const p1, 0x7f10011b

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->showSnacknAccent(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mContext:Landroid/app/Activity;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f100123

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const v0, 0x1040013

    new-instance v1, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$EAYL9GA3SNOq6bVMCftNmqj0jUo;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$EAYL9GA3SNOq6bVMCftNmqj0jUo;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mContext:Landroid/app/Activity;

    const v2, 0x7f0400a5

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :goto_1
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ChineseChangelog:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->GlobalChangelog:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatUpdateInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method static synthetic access$002(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;)Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBinder:Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->OTACheck(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ONLINE_UPDATE:Ljava/lang/String;

    return-object v0
.end method

.method private checkNetworkInf()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->hasNetWork(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mContext:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "ota_network_no"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$iON41c-XiZTNm9eeAkwEKaJy8Ig;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$iON41c-XiZTNm9eeAkwEKaJy8Ig;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mContext:Landroid/app/Activity;

    const v3, 0x7f0400a5

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->hasNetWork(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object v2, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mContext:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const-string v2, "\t\ud83d\ude40\t\ud83d\ude40\t\ud83d\ude40\t\ud83d\ude40"

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const-string v2, "ota_network_mobile"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const-string v2, "ota_network_mobile_yes"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const-string v2, "ota_network_mobile_no"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$0oWYdH7KJxyLjn460V61JXRa2PQ;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$0oWYdH7KJxyLjn460V61JXRa2PQ;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$4bD9iRX5Q6-2YsJOCg0MmukPImw;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$4bD9iRX5Q6-2YsJOCg0MmukPImw;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->showLoadDialog(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private doOnlineGroup(I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->checkNetworkInf()V

    goto/16 :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatResume:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatPause:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatCancel:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    sget-object p1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBar:Lcom/leo/salt/tweaks/fota/FotaProgressBar;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBinder:Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->resumeDownload(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mRelative:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatRestart:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatDownload:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatPause:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatCancel:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    sget-object p1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBar:Lcom/leo/salt/tweaks/fota/FotaProgressBar;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBinder:Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->restartDownload(Ljava/lang/String;)V

    sget-object p1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaSize:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatPause:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatResume:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    sget-object p1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBar:Lcom/leo/salt/tweaks/fota/FotaProgressBar;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBinder:Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->pauseDownload(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FotaDownloadServer()V

    goto :goto_0

    :sswitch_5
    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatPause:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatResume:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatRestart:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatDownload:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    sget-object p1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBar:Lcom/leo/salt/tweaks/fota/FotaProgressBar;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBinder:Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->cancelDownload(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mRelative:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object p1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaSize:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900f7 -> :sswitch_5
        0x7f0900f9 -> :sswitch_4
        0x7f0900fa -> :sswitch_3
        0x7f0900fc -> :sswitch_2
        0x7f0900fd -> :sswitch_1
        0x7f090180 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getFotaError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static getFotaFinish(Ljava/io/File;)V
    .locals 1

    :try_start_0
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOTSTATIC:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->InstalFotaZIP()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static getFotaProgress(JJF)V
    .locals 2

    sget-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBar:Lcom/leo/salt/tweaks/fota/FotaProgressBar;

    float-to-int p4, p4

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->setProgress(F)V

    sget-object p4, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaSize:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/leo/download/provider/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p4, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaStateSize:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_file_size"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/leo/download/provider/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaCompleteSize:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "download_progress"

    invoke-static {p4}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/leo/download/provider/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getFotaStart(JJF)V
    .locals 2

    sget-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBar:Lcom/leo/salt/tweaks/fota/FotaProgressBar;

    float-to-int p4, p4

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->setProgress(F)V

    sget-object p4, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaSize:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/leo/download/provider/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p4, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaStateSize:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_file_size"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/leo/download/provider/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaCompleteSize:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "download_progress"

    invoke-static {p4}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/leo/download/provider/utils/Utils;->formatSize(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$FotaDownloadServer$4(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$FotaDownloadServer$6(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private logicFotaDownload()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatDownload:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatPause:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatCancel:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    sget-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBar:Lcom/leo/salt/tweaks/fota/FotaProgressBar;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mRelative:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public BackPressed(I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$wvnVjTegEY-KWoSzOEhoDE5PdqA;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$wvnVjTegEY-KWoSzOEhoDE5PdqA;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public FotaWarningDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, p1, v2, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v2, 0x7f1002f8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p2

    const v0, 0x104000a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    const p2, 0x7f10011f

    invoke-static {p2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    new-instance p2, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$JHZN6z5h_9ycar5IUxQdTIOjTxE;

    invoke-direct {p2, p0}, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$JHZN6z5h_9ycar5IUxQdTIOjTxE;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;)V

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    new-instance p2, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$Kkh9TPz3w_Dao7ZPnaTEeGiLvlg;

    invoke-direct {p2, p0}, Lcom/leo/salt/tweaks/fota/-$$Lambda$FotaUpdateActivity$Kkh9TPz3w_Dao7ZPnaTEeGiLvlg;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;)V

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090034

    return v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0022

    return v0
.end method

.method public initView()V
    .locals 5

    const v0, 0x7f0900fe

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaSize:Landroid/widget/TextView;

    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mBuildDisplay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mBuildDisplay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compile_info"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mBuildOnlineUpdate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mBuildOnlineUpdate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f100116

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":  V"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ONLINE_UPDATE_VERSION:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android_versions"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901ca

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mBuildSecurityPatch:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mBuildSecurityPatch:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x7f100000

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getSecurityPatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090180

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mCheckOnlineUpdate:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mCheckOnlineUpdate:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {v0, p0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090182

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mRecentUpdate:Landroid/widget/LinearLayout;

    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatUpdateInfo:Landroid/widget/TextView;

    const v0, 0x7f09024b

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mDownButtonGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mDownButtonGroup:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0900fa

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatPause:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatPause:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {v0, p0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatPause:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    const v1, 0x7f100121

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900fc

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatRestart:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatRestart:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {v0, p0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatRestart:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    const v1, 0x7f100124

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatCancel:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatCancel:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {v0, p0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatCancel:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    const v1, 0x7f100118

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900f9

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatDownload:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatDownload:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {v0, p0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatDownload:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    const v1, 0x7f10011d

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900fd

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatResume:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatResume:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {v0, p0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatResume:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    const v1, 0x7f100125

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090196

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;

    sput-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBar:Lcom/leo/salt/tweaks/fota/FotaProgressBar;

    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaStateSize:Landroid/widget/TextView;

    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaCompleteSize:Landroid/widget/TextView;

    const v0, 0x7f0900fb

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mRelative:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public synthetic lambda$BackPressed$0$FotaUpdateActivity()V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$FotaDownloadServer$5$FotaUpdateActivity(Landroid/content/DialogInterface;I)V
    .locals 4

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->logicFotaDownload()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->ChineseUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->logicFotaDownload()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->GlobalUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaUrl:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaBinder:Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;

    sget-object p2, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOTADOWNPTH:Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->FOTANAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFotaUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p1, p2, v0, v1, v3}, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$FotaWarningDialog$8$FotaUpdateActivity(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    const/16 p1, 0x7d0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->BackPressed(I)V

    return-void
.end method

.method public synthetic lambda$FotaWarningDialog$9$FotaUpdateActivity(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 1

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mRecentUpdate:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mFoatDownload:Lcom/leo/salt/tweaks/view/widget/ShapeTextView;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$OTACheck$7$FotaUpdateActivity(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->BackPressed(I)V

    return-void
.end method

.method public synthetic lambda$checkNetworkInf$1$FotaUpdateActivity(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->BackPressed(I)V

    return-void
.end method

.method public synthetic lambda$checkNetworkInf$2$FotaUpdateActivity(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$checkNetworkInf$3$FotaUpdateActivity(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->showLoadDialog(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->doOnlineGroup(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090225

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f090226

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v1, "leo_slide_meun_update"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->initView()V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/leo/salt/tweaks/fota/FotaService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v1, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance p1, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public showLoadDialog(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;

    iget-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$HttpNetworkRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
