.class public Lcom/leo/salt/gridView/AboutMenuFragment;
.super Landroid/app/Fragment;
.source "AboutMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutGridViewAdapter;,
        Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;,
        Lcom/leo/salt/gridView/AboutMenuFragment$GridViewItemOnClick;,
        Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;
    }
.end annotation


# static fields
.field public static final ANIMATION_TIME:I = 0xfa0


# instance fields
.field AndroidInfoMessage:[Ljava/lang/String;

.field AndroidInfoName:[Ljava/lang/String;

.field TOOT:Ljava/lang/String;

.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mCardView:Landroid/support/v7/widget/CardView;

.field public mContext:Landroid/app/Activity;

.field private mGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mLeoLOGO:Landroid/widget/ImageView;

.field private mLeoLOGOBG:Landroid/widget/ImageView;

.field public mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private mView:Landroid/view/View;

.field phoneInfoMessage:[Ljava/lang/String;

.field phoneInfoName:[Ljava/lang/String;

.field versions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 15

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android_versions"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "rom_info"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "leo_info"

    invoke-static {v5, v6}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "basics_info"

    invoke-static {v6, v7}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Android"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SDK"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v9, "compile_info"

    invoke-static {v3, v9}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "kernel_info"

    invoke-static {v10, v11}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "baseband_info"

    invoke-static {v11, v12}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bootloader"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->versions:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x8

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Busybox"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->AndroidInfoName:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "ro.build.display.id"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v4

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/leo/salt/gridView/AboutMenuFragment;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ro.build.id"

    invoke-static {v14}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "ro.build.PDA"

    invoke-static {v14}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v6

    const-string v13, "ro.build.version.release"

    invoke-static {v13}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v7

    const-string v13, "ro.build.version.sdk"

    invoke-static {v13}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v8

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getKenel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {}, Lcom/leo/salt/gridView/AboutMenuFragment;->getBaseband_Ver()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "ro.bootloader"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getbusybox()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->AndroidInfoMessage:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v13, "device_info_manufacturers"

    invoke-static {v2, v13}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v13, "device_info_model"

    invoke-static {v2, v13}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v13, "device_info_serial"

    invoke-static {v2, v13}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "IP"

    aput-object v2, v1, v7

    const-string v2, "WIFI MAC"

    aput-object v2, v1, v8

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v13, "device_info_carrier"

    invoke-static {v2, v13}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v13, "device_info_phonenumber"

    invoke-static {v2, v13}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "IMEI"

    aput-object v2, v1, v11

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v13, "device_info_runtime"

    invoke-static {v2, v13}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v13, "android_root"

    invoke-static {v2, v13}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->phoneInfoName:[Ljava/lang/String;

    invoke-static {}, Lcom/leo/salt/utils/PrefUtils;->isRooted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ROOT"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    iput-object v1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->TOOT:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string v1, "ro.boot.em.model"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "ril.serialnumber"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v5}, Lcom/leo/salt/tweaks/resource/Resource;->getIpAddress(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/leo/salt/utils/ExtraInfo;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getOperator()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getIMEI()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/leo/salt/utils/ExtraInfo;->getTimes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    iget-object v1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->TOOT:Ljava/lang/String;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->phoneInfoMessage:[Ljava/lang/String;

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
    .locals 3

    const v0, 0x7f0900c3

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

    const v0, 0x7f0900f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/AboutMenuFragment$ListViewItemOnClick;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/AboutMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/gridView/AboutMenuFragment$AppAboutListAdapter;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

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

    const v1, 0x7f090014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Lcom/leo/salt/gridView/AboutMenuFragment$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/gridView/AboutMenuFragment$1;-><init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

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

    const v0, 0x7f0c001d

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

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionHome(Landroid/content/Context;)V

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
