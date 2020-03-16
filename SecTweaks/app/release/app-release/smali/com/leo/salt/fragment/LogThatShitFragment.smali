.class public Lcom/leo/salt/fragment/LogThatShitFragment;
.super Landroid/preference/PreferenceFragment;
.source "LogThatShitFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;
    }
.end annotation


# static fields
.field private static final DMESG_FILE:Ljava/lang/String;

.field private static final FILEURL:Ljava/lang/String; = "/sdcard/LeoTweaks/Log"

.field private static final HASTE_MAX_LOG_SIZE:I = 0xc3500

.field private static final KMSG_FILE:Ljava/lang/String;

.field private static final LOGCAT_FILE:Ljava/lang/String;

.field private static final PREF_AICP_LOG_IT:Ljava/lang/String; = "leo_tweaks_log_it"

.field private static final PREF_CLEAN:Ljava/lang/String; = "leo_tweaks_log_clean"

.field private static final PREF_DMESG:Ljava/lang/String; = "leo_tweaks_dmesg"

.field private static final PREF_KMSG:Ljava/lang/String; = "leo_tweaks_kmseg"

.field private static final PREF_LOGCAT:Ljava/lang/String; = "leo_tweaks_logcat"

.field private static final PREF_SHARE_TYPE:Ljava/lang/String; = "leo_tweaks_log_share_type"

.field private static final TAG:Ljava/lang/String; = "LogThatShitFragment"

.field private static final dmesgFile:Ljava/io/File;

.field private static final kmsgFile:Ljava/io/File;

.field private static final logcatFile:Ljava/io/File;

.field private static final sdCardDirectory:Ljava/io/File;

.field private static final shareZipFile:Ljava/io/File;


# instance fields
.field private mDmesg:Landroid/preference/CheckBoxPreference;

.field private mKmsg:Landroid/preference/CheckBoxPreference;

.field private mLeoCleanLog:Lcom/leo/salt/preference/MyPreference;

.field private mLeoLogIt:Lcom/leo/salt/preference/MyPreference;

.field private mLogcat:Landroid/preference/CheckBoxPreference;

.field private mShareType:Landroid/preference/ListPreference;

.field private shareHaste:Z

.field private shareZip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/LeoTweaks/Log"

    const-string v2, "leo_logcat.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->LOGCAT_FILE:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/LeoTweaks/Log"

    const-string v2, "leo_kernel.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->KMSG_FILE:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/LeoTweaks/Log"

    const-string v2, "leo_boot.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->DMESG_FILE:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/LeoTweaks/Log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->sdCardDirectory:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/leo/salt/fragment/LogThatShitFragment;->sdCardDirectory:Ljava/io/File;

    const-string v2, "leo_logcat.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->logcatFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/leo/salt/fragment/LogThatShitFragment;->sdCardDirectory:Ljava/io/File;

    const-string v2, "leo_boot.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->dmesgFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/leo/salt/fragment/LogThatShitFragment;->sdCardDirectory:Ljava/io/File;

    const-string v2, "leo_kernel.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->kmsgFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/leo/salt/fragment/LogThatShitFragment;->sdCardDirectory:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getBasicsSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_log.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareZipFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareHaste:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareZip:Z

    return-void
.end method

.method static synthetic access$100()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareZipFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/leo/salt/fragment/LogThatShitFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareHaste:Z

    return p0
.end method

.method static synthetic access$400(Lcom/leo/salt/fragment/LogThatShitFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareZip:Z

    return p0
.end method

.method static synthetic access$500(Lcom/leo/salt/fragment/LogThatShitFragment;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/leo/salt/fragment/LogThatShitFragment;->createShareZip(ZZZ)V

    return-void
.end method

.method private createShareZip(ZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/leo/salt/fragment/LogThatShitFragment;->shareZipFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    :try_start_1
    sget-object p1, Lcom/leo/salt/fragment/LogThatShitFragment;->logcatFile:Ljava/io/File;

    invoke-direct {p0, p1, v1}, Lcom/leo/salt/fragment/LogThatShitFragment;->writeToZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/leo/salt/fragment/LogThatShitFragment;->kmsgFile:Ljava/io/File;

    invoke-direct {p0, p1, v1}, Lcom/leo/salt/fragment/LogThatShitFragment;->writeToZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    :cond_1
    if-eqz p3, :cond_2

    sget-object p1, Lcom/leo/salt/fragment/LogThatShitFragment;->dmesgFile:Ljava/io/File;

    invoke-direct {p0, p1, v1}, Lcom/leo/salt/fragment/LogThatShitFragment;->writeToZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_3
    throw p1
.end method

.method private writeToZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    throw p1
.end method


# virtual methods
.method public logZipDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/LogThatShitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100282

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f10028b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/leo/salt/fragment/LogThatShitFragment$2;

    invoke-direct {v1, p0}, Lcom/leo/salt/fragment/LogThatShitFragment$2;-><init>(Lcom/leo/salt/fragment/LogThatShitFragment;)V

    const v2, 0x7f10038a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public makeDmesg()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/leo/salt/utils/SuShell$SuDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dmesg"

    iget-boolean v1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareHaste:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | tail -c 800000 > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->DMESG_FILE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&& curl -s -X POST -T "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->DMESG_FILE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->DMESG_FILE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/leo/salt/utils/SuShell;->runWithSuCheck([Ljava/lang/String;)Ljava/util/ArrayList;

    return-void
.end method

.method public makeKmsg()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/leo/salt/utils/SuShell$SuDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "cat /proc/last_kmsg"

    iget-boolean v1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareHaste:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | tail -c 800000 > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->KMSG_FILE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " && curl -s -X POST -T "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->KMSG_FILE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->KMSG_FILE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/leo/salt/utils/SuShell;->runWithSuCheck([Ljava/lang/String;)Ljava/util/ArrayList;

    return-void
.end method

.method public makeLogcat()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/leo/salt/utils/SuShell$SuDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "logcat -d"

    iget-boolean v1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareHaste:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | tail -c 800000 > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->LOGCAT_FILE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&& curl -s -X POST -T "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->LOGCAT_FILE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/fragment/LogThatShitFragment;->LOGCAT_FILE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/leo/salt/utils/SuShell;->runWithSuCheck([Ljava/lang/String;)Ljava/util/ArrayList;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13000e

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/LogThatShitFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/LogThatShitFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/LogThatShitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    const-string v0, "leo_tweaks_logcat"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLogcat:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLogcat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "leo_tweaks_kmseg"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mKmsg:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mKmsg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "leo_tweaks_dmesg"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mDmesg:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mDmesg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "leo_tweaks_log_it"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/MyPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLeoLogIt:Lcom/leo/salt/preference/MyPreference;

    const-string v0, "leo_tweaks_log_clean"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/MyPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLeoCleanLog:Lcom/leo/salt/preference/MyPreference;

    const-string v0, "leo_tweaks_log_share_type"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mShareType:Landroid/preference/ListPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mShareType:Landroid/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/LogThatShitFragment;->resetValues()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLogcat:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLeoLogIt:Lcom/leo/salt/preference/MyPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mKmsg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mDmesg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/leo/salt/preference/MyPreference;->setEnabled(Z)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mKmsg:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLeoLogIt:Lcom/leo/salt/preference/MyPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLogcat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mDmesg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p1, v1}, Lcom/leo/salt/preference/MyPreference;->setEnabled(Z)V

    return v2

    :cond_5
    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mDmesg:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLeoLogIt:Lcom/leo/salt/preference/MyPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLogcat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mKmsg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    invoke-virtual {p1, v1}, Lcom/leo/salt/preference/MyPreference;->setEnabled(Z)V

    return v2

    :cond_8
    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mShareType:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_a

    const-string p1, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mShareType:Landroid/preference/ListPreference;

    const p2, 0x7f100285

    invoke-virtual {p0, p2}, Lcom/leo/salt/fragment/LogThatShitFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareZip:Z

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mShareType:Landroid/preference/ListPreference;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareZip:Z

    :goto_0
    return v2

    :cond_a
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLeoCleanLog:Lcom/leo/salt/preference/MyPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    new-instance p1, Ljava/io/File;

    const-string p2, "/sdcard/LeoTweaks/Log/leo_logcat.txt"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/LogThatShitFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "\u6e05\u7406"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u6e05\u7406<\u4e0a\u6b21\u6293\u53d6\u7559\u4e0b>\u7684\u65e5\u5fd7\u6587\u4ef6"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u786e\u5b9a\u6e05\u7406"

    new-instance v0, Lcom/leo/salt/fragment/LogThatShitFragment$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/fragment/LogThatShitFragment$1;-><init>(Lcom/leo/salt/fragment/LogThatShitFragment;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/LogThatShitFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "\u5f53\u524d\u6728\u6709\u65e5\u5fd7\u6587\u4ef6\u6b8b\u7559"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLeoLogIt:Lcom/leo/salt/preference/MyPreference;

    if-ne p2, v0, :cond_2

    new-instance p1, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;-><init>(Lcom/leo/salt/fragment/LogThatShitFragment;Lcom/leo/salt/fragment/LogThatShitFragment$1;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLogcat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mKmsg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p2, v2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mDmesg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public resetValues()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLogcat:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mKmsg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mDmesg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mLeoLogIt:Lcom/leo/salt/preference/MyPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/MyPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mShareType:Landroid/preference/ListPreference;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->mShareType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareHaste:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment;->shareZip:Z

    return-void
.end method
