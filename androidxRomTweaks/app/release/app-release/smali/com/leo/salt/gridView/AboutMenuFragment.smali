.class public Lcom/leo/salt/gridView/AboutMenuFragment;
.super Landroid/app/Fragment;
.source "AboutMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutGridViewAdapter;,
        Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;,
        Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;,
        Lcom/leo/salt/gridView/AboutMenuFragment$UserManage;,
        Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;
    }
.end annotation


# static fields
.field public static final ANIMATION_TIME:I = 0xfa0


# instance fields
.field private APKDialog:Ljava/lang/String;

.field private APKName:Ljava/lang/String;

.field AndroidInfoMessage:[Ljava/lang/String;

.field AndroidInfoName:[Ljava/lang/String;

.field TOOT:Ljava/lang/String;

.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final downloadUrl:Ljava/lang/String;

.field public mAppInfo:Landroid/widget/TextView;

.field private mAppsView:Landroid/support/v7/widget/CardView;

.field private mCardView:Landroid/support/v7/widget/CardView;

.field public mContext:Landroid/app/Activity;

.field private mDownloadApks:Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;

.field private mGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field mHandler:Landroid/os/Handler;

.field private mLeoLOGO:Landroid/widget/ImageView;

.field private mLeoLOGOBG:Landroid/widget/ImageView;

.field public mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private mUpdatesInfo:Ljava/lang/String;

.field private mUpdatesVersion:Ljava/lang/String;

.field private mUpdatesVersionCode:I

.field private mUserManageImage:Landroid/widget/ImageView;

.field private mUserManageView:Landroid/support/v7/widget/CardView;

.field private mView:Landroid/view/View;

.field phoneInfoMessage:[Ljava/lang/String;

.field phoneInfoName:[Ljava/lang/String;

.field versions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/app/Fragment;-><init>()V

    const-string v1, "LeoControl.apk"

    iput-object v1, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->APKName:Ljava/lang/String;

    sget-object v1, Lcom/leo/salt/tweaks/resource/Resource;->LeoDownloadPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->downloadUrl:Ljava/lang/String;

    const v1, 0x7f100056

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->APKDialog:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android_versions"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    const/16 v1, 0xc

    new-array v3, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "One UI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "rom_info"

    invoke-static {v4, v6}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "leo_info"

    invoke-static {v7, v8}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "basics_info"

    invoke-static {v8, v9}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Android"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SDK"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v11, "compile_info"

    invoke-static {v4, v11}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "kernel_info"

    invoke-static {v12, v13}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x7

    aput-object v4, v3, v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "baseband_info"

    invoke-static {v13, v14}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x8

    aput-object v4, v3, v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bootloader"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v14, 0x9

    aput-object v4, v3, v14

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v15, 0x7f100000

    invoke-virtual {v4, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0xa

    aput-object v4, v3, v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Busybox"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb

    aput-object v2, v3, v4

    iput-object v3, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->AndroidInfoName:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/os/salt/OSBuild;->getOneUIVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/leo/salt/tweaks/resource/Resource;->ROMNAME:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/leo/salt/gridView/AboutMenuFragment;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.build.id"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.build.PDA"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.build.version.release"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (Pie)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "ro.build.version.sdk"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {}, Lcom/leo/salt/gridView/AboutMenuFragment;->getLeoROMdonate()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/leo/salt/utils/ExtraInfo;->getKenel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {}, Lcom/leo/salt/gridView/AboutMenuFragment;->getBaseband_Ver()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    const-string v2, "ro.boot.bootloader"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getSecurityPatch()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getbusybox()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->AndroidInfoMessage:[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_info_manufacturers"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_info_model"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_info_serial"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "IP"

    aput-object v2, v1, v8

    const-string v2, "WIFI MAC"

    aput-object v2, v1, v9

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_info_carrier"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_info_phonenumber"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "IMEI"

    aput-object v2, v1, v12

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_info_runtime"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android_root"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    iput-object v1, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->phoneInfoName:[Ljava/lang/String;

    invoke-static {}, Lcom/leo/salt/utils/PrefUtils;->isRooted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ROOT"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    iput-object v1, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->TOOT:Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "ro.boot.em.model"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "ril.serialnumber"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v6}, Lcom/leo/salt/tweaks/resource/Resource;->getIpAddress(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/leo/salt/utils/ExtraInfo;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getOperator()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getIMEI()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/leo/salt/utils/ExtraInfo;->getTimes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    iget-object v2, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->TOOT:Ljava/lang/String;

    aput-object v2, v1, v14

    iput-object v1, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->phoneInfoMessage:[Ljava/lang/String;

    new-instance v1, Lcom/leo/salt/gridView/AboutMenuFragment$2;

    invoke-direct {v1, v0}, Lcom/leo/salt/gridView/AboutMenuFragment$2;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    iput-object v1, v0, Lcom/leo/salt/gridView/AboutMenuFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private UpdatesjQuery(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "versionName"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUpdatesVersion:Ljava/lang/String;

    const-string p1, "versionCode"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUpdatesVersionCode:I

    const-string p1, "Changelog"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Changelog_en"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUpdatesInfo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUpdatesInfo:Ljava/lang/String;

    :goto_0
    iget p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUpdatesVersionCode:I

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "leo_apks_check_info"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->intView()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mAppsView:Landroid/support/v7/widget/CardView;

    new-instance v0, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$JjDgWULkXNCrRLQ7SIU4Xpgryns;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$JjDgWULkXNCrRLQ7SIU4Xpgryns;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mAppInfo:Landroid/widget/TextView;

    const v0, 0x7f060052

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f1003cd

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mAppInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mAppsView:Landroid/support/v7/widget/CardView;

    new-instance v0, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$XXyt2zlzsGGqbYX8EeEuO5DC0rM;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$XXyt2zlzsGGqbYX8EeEuO5DC0rM;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mAppsView:Landroid/support/v7/widget/CardView;

    new-instance v0, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$w70CazYP046hMEpad5g__qr6uew;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$w70CazYP046hMEpad5g__qr6uew;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/CardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/gridView/AboutMenuFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->downloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/gridView/AboutMenuFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->APKDialog:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/gridView/AboutMenuFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->APKName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/gridView/AboutMenuFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/AboutMenuFragment;->UpdatesjQuery(Ljava/lang/String;)V

    return-void
.end method

.method public static getBaseband_Ver()Ljava/lang/String;
    .locals 5

    const-string v0, "gsm.version.baseband"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v0, v1, v2

    :cond_0
    return-object v0
.end method

.method public static getLeoROMdonate()Ljava/lang/String;
    .locals 4

    const-string v0, "ro.leo.os.vip.donate"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u2116."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.leo.online.update.version"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.leo.framework"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method private initGridView(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f090106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    const-string v0, "grid_about_tag"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "about_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/AboutMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutGridViewAdapter;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f09013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    const/4 p1, 0x4

    new-array v5, p1, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const-string v1, "ic_android"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const-string v3, "ic_phone"

    invoke-static {v0, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v5, v3

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const-string v4, "ic_hardware"

    invoke-static {v0, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v5, v4

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "android_info"

    invoke-static {v0, v7}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "phone_info"

    invoke-static {v0, v7}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "device_info"

    invoke-static {v0, v7}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const v0, 0x7f100396

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "sumarry_android_info"

    invoke-static {v0, v7}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "sumarry_phone_info"

    invoke-static {v0, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "sumarry_device_info"

    invoke-static {v0, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    const v0, 0x7f100397

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v1, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v7, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v8, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    move-object v0, v8

    move-object v3, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v8}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initValues(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const v1, 0x7f090013

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Lcom/leo/salt/gridView/AboutMenuFragment$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/gridView/AboutMenuFragment$1;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private intView()V
    .locals 4

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(I)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f1003cc

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f100056

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1003cd

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUpdatesVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getAndroidSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUpdatesVersionCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] )\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUpdatesInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f1003cb

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$gQT3b3fOgKfPy-cm1opk8RNj9yA;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$gQT3b3fOgKfPy-cm1opk8RNj9yA;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public GridTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$UpdatesjQuery$0$AboutMenuFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->intView()V

    return-void
.end method

.method public synthetic lambda$UpdatesjQuery$1$AboutMenuFragment(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ota_state_info_null"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400a5

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public synthetic lambda$UpdatesjQuery$2$AboutMenuFragment(Landroid/view/View;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/leo/salt/gridView/AboutMenuFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$intView$4$AboutMenuFragment(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 1

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mDownloadApks:Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;->DownloadView(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$sendRequestWithHttpURLConnection$3$AboutMenuFragment()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://os.leorom.cc/json/json_tweaks.json"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    const-string v1, "https://www.leorom.cc"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0c001c

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :try_start_0
    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/AboutMenuFragment;->initValues(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/AboutMenuFragment;->initGridView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    const-string p2, "about_logo"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mLeoLOGO:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mLeoLOGO:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const-string p3, "leologo"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    const-string p2, "about_head"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mLeoLOGOBG:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mLeoLOGOBG:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const-string p3, "about_leo"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    const-string p2, "about_cardview"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/CardView;

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mCardView:Landroid/support/v7/widget/CardView;

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    const-string p2, "userManage"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/CardView;

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUserManageView:Landroid/support/v7/widget/CardView;

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUserManageView:Landroid/support/v7/widget/CardView;

    new-instance p2, Lcom/leo/salt/gridView/AboutMenuFragment$UserManage;

    invoke-direct {p2, p0}, Lcom/leo/salt/gridView/AboutMenuFragment$UserManage;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    const-string p2, "userImage"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUserManageImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->LeoDonateUnlock()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f08015c

    goto :goto_1

    :cond_0
    const p1, 0x7f08015b

    :goto_1
    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mUserManageImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionHome(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    const-string p2, "versionCode"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mAppInfo:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    const-string p2, "apps_info"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/CardView;

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mAppsView:Landroid/support/v7/widget/CardView;

    new-instance p1, Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;

    iget-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mDownloadApks:Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->sendRequestWithHttpURLConnection()V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mAppInfo:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {p3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getAndroidSDKVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {p3}, Lcom/leo/salt/tweaks/resource/Resource;->getVersionCode(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public sendRequestWithHttpURLConnection()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$1BMPrYVg3Hqv12vfgbmQPyBWVY8;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$1BMPrYVg3Hqv12vfgbmQPyBWVY8;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
