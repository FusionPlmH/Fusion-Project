.class public Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;
.super Lcom/leo/salt/wallpaper/WallpaperPicker;
.source "StatusBarWallpaperPicker.java"


# instance fields
.field Path:Ljava/io/File;

.field StringKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/leo/salt/wallpaper/WallpaperPicker;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->WALLPAPER_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "leo_statusbar_bg_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->StringKey:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->StringKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->Path:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public WallpaperUse()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->CachePath:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->CachePath:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setWritable(ZZ)Z

    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->CachePath:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->SDwallpaperPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel:Ljava/nio/channels/FileChannel;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->StringPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel2:Ljava/nio/channels/FileChannel;

    :try_start_0
    iget-object v3, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    iget-object v8, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel2:Ljava/nio/channels/FileChannel;

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "leo_tweaks_statusbar_bg_wallpaper"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->DataPath:Ljava/io/File;

    iget-object v3, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->Path:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->Path:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->Path:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setWritable(ZZ)Z

    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->Path:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_tweaks_statusbar_bg_wallpaper"

    iget-object v2, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->StringKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel2:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel2:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    iget-object v1, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel2:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/leo/salt/wallpaper/StatusBarWallpaperPicker;->channel2:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    throw v0
.end method
