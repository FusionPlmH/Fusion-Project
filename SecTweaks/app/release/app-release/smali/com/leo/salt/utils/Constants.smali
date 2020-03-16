.class public Lcom/leo/salt/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static APP_APPS:Ljava/lang/String; = null

.field public static APP_HIDE_HISTORY_SPF:Ljava/lang/String; = null

.field public static final BACKUP_FILE_PATH_EXTRA_KEY:Ljava/lang/String; = "file_path"

.field public static final BACKUP_FOLDER_PATH:Ljava/lang/String;

.field public static final BACKUP_OR_RESTORE_DIALOG_REQUEST_CODE:I = 0x1a

.field public static ChangelogENUrl:Ljava/lang/String; = null

.field public static ChangelogUrl:Ljava/lang/String; = null

.field public static ClearOTA:Ljava/lang/String; = null

.field public static final DIALOG_RESTORE_IS_CONFIRM_REQUIRED:Ljava/lang/String; = "is_confirm"

.field public static Enabled:I = 0x0

.field public static EulaUrl:Ljava/lang/String; = null

.field public static EulaUrl_en:Ljava/lang/String; = null

.field public static final FILES_SCRIPTS_FOLDER_PATH:Ljava/lang/String;

.field public static GLOBAL_SPF:Ljava/lang/String; = null

.field public static GLOBAL_SPF_DISABLE_ENFORCE:Ljava/lang/String; = null

.field public static GLOBAL_SPF_NIGHT_MODE:Ljava/lang/String; = null

.field public static final GooglePackage:Ljava/lang/String; = "GoogleServicesPackage.zip"

.field public static HelpUrl:Ljava/lang/String; = null

.field public static Hitomi_OS:Ljava/lang/String; = null

.field public static Hitomi_ROM:Ljava/lang/String; = null

.field public static final Hitomi_ROMOTAHTTP:Ljava/lang/String; = "http://ota.leorom.cc/hitomi/Hitomi_OTA_V6.zip"

.field public static final Hitomi_ROMOTAUS_LINE:Ljava/lang/String; = "http://ota.52leo.cc/hitomi/Hitomi_OTA_V6.zip"

.field public static final Hitomi_ROM_ChangelogUrl:Ljava/lang/String; = "http://Hitomi.leorom.cc/Changelog_Hitomi.txt"

.field public static final Hitomi_ROM_OTAZIP:Ljava/lang/String; = "Hitomi_OTA_V6.zip"

.field public static IMG0Url:Ljava/lang/String; = "http://os.leorom.cc/img/img_0.jpg"

.field public static IMG0UrlEN:Ljava/lang/String; = null

.field public static IMG1Url:Ljava/lang/String; = "http://os.leorom.cc/img/img_1.jpg"

.field public static IMG1UrlEN:Ljava/lang/String; = null

.field public static IMG2Url:Ljava/lang/String; = "http://os.leorom.cc/img/img_2.jpg"

.field public static IMG2UrlEN:Ljava/lang/String; = null

.field public static IMG3Url:Ljava/lang/String; = "http://os.leorom.cc/img/img_3.jpg"

.field public static IMG3UrlEN:Ljava/lang/String; = null

.field public static IMG4Url:Ljava/lang/String; = "http://os.leorom.cc/img/img_4.jpg"

.field public static IMG4UrlEN:Ljava/lang/String; = null

.field public static JPEGWallpaper:Ljava/lang/String; = null

.field public static LEO_ACTION_GLOBAL:Ljava/lang/String; = null

.field public static LEO_ACTION_SERVICE:Ljava/lang/String; = null

.field public static final LEO_ROMOTAUS_LING:Ljava/lang/String; = "http://ota.52leo.cc/leo/LeoGlobal_V8.1.zip"

.field public static final LeoInstallGoogleCN:Ljava/lang/String; = "http://ota.leorom.cc/leo/Google/GoogleServicesPackage.zip"

.field public static final LeoOTAHTTP:Ljava/lang/String; = "http://ota.leorom.cc/leo/LeoGlobal_V8.1.zip"

.field public static LeoROMCode:Ljava/lang/String; = null

.field public static LeoROMName:Ljava/lang/String; = null

.field public static final LeoTAG:Ljava/lang/String; = "LeoTweaks"

.field public static OSUrl:Ljava/lang/String; = "http://os.leorom.cc/"

.field public static OS_VERSION:Ljava/lang/String; = null

.field public static OTAURL:Ljava/lang/String; = null

.field public static final OTAZIP:Ljava/lang/String; = "LeoGlobal_V8.1.zip"

.field public static final OTApath:Ljava/lang/String;

.field public static OtaUrl:Ljava/lang/String; = null

.field public static PPPS:Ljava/lang/String; = "file:///android_asset/"

.field public static REBOOT_DEVICE:Ljava/lang/String; = null

.field public static final RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE:I = 0x41

.field static final SCRIPTS_FOLDER:Ljava/lang/String; = "scripts"

.field public static final SERVICE_INTENT_ACTION_BACKUP:Ljava/lang/String; = "com.leo.salt.action.BACKUP"

.field public static final SERVICE_INTENT_ACTION_RESTORE:Ljava/lang/String; = "com.leo.salt.action.RESTORE"

.field public static final SHARED_PREFS_FOLDER_PATH:Ljava/lang/String;

.field public static Title:Ljava/lang/String;

.field public static WALLPAPER_DATA:Ljava/lang/String;

.field public static WALLPAPER_DATA_PATH:Ljava/lang/String;

.field public static WALLPAPER_KEY:Ljava/lang/String;

.field public static WALLPAPER_URL:Ljava/lang/String;

.field public static WALLPAPER_format:Ljava/lang/String;

.field public static mNewline:Ljava/lang/String;

.field public static safety:Ljava/lang/String;

.field public static theme_title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->PPPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "eula.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->EulaUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->PPPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "eula_en.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->EulaUrl_en:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->OSUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "update_info_pie.xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->OtaUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->OSUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "help.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->HelpUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->OSUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ChangelogPIE_CN.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->ChangelogUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->OSUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ChangelogPIE_EN.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->ChangelogENUrl:Ljava/lang/String;

    const-string v0, "/sdcard/Android/ota/"

    sput-object v0, Lcom/leo/salt/utils/Constants;->OTAURL:Ljava/lang/String;

    const-string v0, "/sdcard/Android/ota/"

    sput-object v0, Lcom/leo/salt/utils/Constants;->ClearOTA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->OTAURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ota.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->OTApath:Ljava/lang/String;

    const-string v0, "JXU1MDI5JXVGRjBDJXU0RjU5JXU3NTFGJXU4MEZEJXU1NDI2JXU4QkE5JXU2MjExJXU3MTY3JXU5ODdFJXU0RjYwJXU5NjZBJXU0RjYwJXU0RTAwJXU4RDc3JXU4RDcwJXU0RTBCJXU1M0JCJXVGRjFG"

    sput-object v0, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    const-string v0, ".jpg"

    sput-object v0, Lcom/leo/salt/utils/Constants;->WALLPAPER_format:Ljava/lang/String;

    const-string v0, "/data/data/com.leo.salt/wallpaper"

    sput-object v0, Lcom/leo/salt/utils/Constants;->WALLPAPER_DATA_PATH:Ljava/lang/String;

    const-string v0, "/data/data/com.leo.salt/wallpaper/leo_wallpaper.jpg"

    sput-object v0, Lcom/leo/salt/utils/Constants;->WALLPAPER_DATA:Ljava/lang/String;

    const-string v0, "/data/data/com.leo.salt/files/leo_wallpaper.jpg"

    sput-object v0, Lcom/leo/salt/utils/Constants;->JPEGWallpaper:Ljava/lang/String;

    const-string v0, "/data/data/com.leo.salt/wallpaper/"

    sput-object v0, Lcom/leo/salt/utils/Constants;->WALLPAPER_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->WALLPAPER_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->WALLPAPER_KEY:Ljava/lang/String;

    const-string v0, "\u5207\u6362\u4e3b\u9898\u6a21\u5f0f"

    sput-object v0, Lcom/leo/salt/utils/Constants;->theme_title:Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/utils/Constants;->theme_title:Ljava/lang/String;

    sput-object v0, Lcom/leo/salt/utils/Constants;->Title:Ljava/lang/String;

    const-string v0, "enforce_0"

    sput-object v0, Lcom/leo/salt/utils/Constants;->GLOBAL_SPF_DISABLE_ENFORCE:Ljava/lang/String;

    const-string v0, "\n"

    sput-object v0, Lcom/leo/salt/utils/Constants;->mNewline:Ljava/lang/String;

    const-string v0, "com.leo.restart.dpi"

    sput-object v0, Lcom/leo/salt/utils/Constants;->REBOOT_DEVICE:Ljava/lang/String;

    const-string v0, "com.global.hitomileo.action.service"

    sput-object v0, Lcom/leo/salt/utils/Constants;->LEO_ACTION_SERVICE:Ljava/lang/String;

    const-string v0, "ACTION"

    sput-object v0, Lcom/leo/salt/utils/Constants;->LEO_ACTION_GLOBAL:Ljava/lang/String;

    const-string v0, "global"

    sput-object v0, Lcom/leo/salt/utils/Constants;->GLOBAL_SPF:Ljava/lang/String;

    const-string v0, "app_night_mode"

    sput-object v0, Lcom/leo/salt/utils/Constants;->GLOBAL_SPF_NIGHT_MODE:Ljava/lang/String;

    const-string v0, "app_hide_spf"

    sput-object v0, Lcom/leo/salt/utils/Constants;->APP_HIDE_HISTORY_SPF:Ljava/lang/String;

    const-string v0, "leo_apps_help"

    sput-object v0, Lcom/leo/salt/utils/Constants;->APP_APPS:Ljava/lang/String;

    const-string v0, "LeoROM(PIE)v8.0\uff3bVIP\uff3d"

    sput-object v0, Lcom/leo/salt/utils/Constants;->OS_VERSION:Ljava/lang/String;

    const-string v0, "Hitomi ROM v5.0"

    sput-object v0, Lcom/leo/salt/utils/Constants;->Hitomi_ROM:Ljava/lang/String;

    const-string v0, "Leo Code(Android Pie)_v2.0"

    sput-object v0, Lcom/leo/salt/utils/Constants;->LeoROMCode:Ljava/lang/String;

    const-string v0, "Leo ROM"

    sput-object v0, Lcom/leo/salt/utils/Constants;->LeoROMName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "shared_prefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->SHARED_PREFS_FOLDER_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LeoTweaks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "backups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "prefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->BACKUP_FOLDER_PATH:Ljava/lang/String;

    const-string v0, "http://os.leorom.cc/img/img_en_1.jpg"

    sput-object v0, Lcom/leo/salt/utils/Constants;->IMG0UrlEN:Ljava/lang/String;

    const-string v0, "http://os.leorom.cc/img/img_en_2.jpg"

    sput-object v0, Lcom/leo/salt/utils/Constants;->IMG1UrlEN:Ljava/lang/String;

    const-string v0, "http://os.leorom.cc/img/img_en_3.jpg"

    sput-object v0, Lcom/leo/salt/utils/Constants;->IMG2UrlEN:Ljava/lang/String;

    const-string v0, "http://os.leorom.cc/img/img_3.jpg"

    sput-object v0, Lcom/leo/salt/utils/Constants;->IMG3UrlEN:Ljava/lang/String;

    const-string v0, "http://os.leorom.cc/img/img_4.jpg"

    sput-object v0, Lcom/leo/salt/utils/Constants;->IMG4UrlEN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "scripts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Constants;->FILES_SCRIPTS_FOLDER_PATH:Ljava/lang/String;

    const-string v0, "\u6211\u5df2\u7ecf\u4e3a\u4f60\u53d6\u6d88\u4e86\u6240\u6709\u7684\u5bf9\u8bdd\u6846\u63d0\u793a <br />\u4f46\u662f\u6211\u8fd8\u662f\u5efa\u8bae\u4f60\u5237\u597d\u673a,\u8fd8\u662f\u91cd\u542f\u4e00\u4e0b\u624b\u673a,\u8fd9\u6837\u53ef\u4ee5\u66f4\u6d41\u7545 <br /> <br /><font color=\"#FF0000\">\u4f60\u4e0d\u662f\u6d4b\u8bd5,\u6211\u4e5f\u4e0d\u662f\u5f00\u53d1\u8005,\u8fd9\u5c31\u662f\u6b63\u786e\u7684\u4f4d\u7f6e</font> <br /><font color=\"#FF0000\">\u6625\u98ce\u5341\u91cc,\u4e0d\u5982\u6709\u4f60</font> <br /><font color=\"#FF0000\">\u4f60\u82e5\u5b89\u597d,\u4fbf\u662f\u6674\u5929\u263a</font>"

    sput-object v0, Lcom/leo/salt/utils/Constants;->Hitomi_OS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WALLPAPER_URL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->WALLPAPER_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomDateSystemVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChangelogUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getROMVersion()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->Hitomi_ROM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://Hitomi.leorom.cc/Changelog_Hitomi.txt"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/leo/salt/utils/Constants;->ChangelogUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/leo/salt/utils/Constants;->ChangelogENUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getEulaUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/leo/salt/utils/Constants;->EulaUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/leo/salt/utils/Constants;->EulaUrl_en:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getEulatitle()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u4f7f\u7528\u987b\u77e5"

    goto :goto_0

    :cond_0
    const-string v0, "usage notice"

    :goto_0
    return-object v0
.end method
