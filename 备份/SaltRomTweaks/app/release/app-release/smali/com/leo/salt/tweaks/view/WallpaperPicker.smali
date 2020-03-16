.class public Lcom/leo/salt/tweaks/view/WallpaperPicker;
.super Lcom/leo/salt/tweaks/base/BaseCollapsingPickerActivity;
.source "WallpaperPicker.java"


# instance fields
.field DataUrl:Ljava/io/File;

.field public SelectrView:Landroid/support/v7/widget/CardView;

.field public WallpaperView:Landroid/widget/ImageView;

.field b:Ljava/lang/String;

.field c:Ljava/io/File;

.field channel2:Ljava/nio/channels/FileChannel;

.field public heightEditText:Landroid/widget/EditText;

.field private mBitmap:Landroid/graphics/Bitmap;

.field public mCardView:Landroid/support/v7/widget/CardView;

.field mDefaultUrl:Ljava/lang/String;

.field mDefaultWallpaper:Ljava/lang/String;

.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field public mWallpaperKey:Ljava/lang/String;

.field public mWallpaperName:Ljava/lang/String;

.field s:Ljava/io/File;

.field public widthEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingPickerActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mFileOutputStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mBitmap:Landroid/graphics/Bitmap;

    const-string v1, "/data/data/com.leo.salt.tweaks"

    iput-object v1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mDefaultUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mDefaultUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files/wallpaper.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mDefaultWallpaper:Ljava/lang/String;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.leo.salt.tweaks/LeoTweaks"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    const-string v0, "/data/data/com.leo.salt.tweaks/LeoTweaks/wallpaper.jpg"

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->b:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/leo/salt/tweaks/resource/Resource;->Urlr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->s:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/view/WallpaperPicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->onWallpaperUse()V

    return-void
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/view/WallpaperPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->delete()V

    return-void
.end method

.method private delete()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mWallpaperKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_wallpaper_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mWallpaperKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$onWallpaperDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private onWallpaperUse()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "_wallpaper_url"

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setWritable(ZZ)Z

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mDefaultWallpaper:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->channel2:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    iget-object v10, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->channel2:Ljava/nio/channels/FileChannel;

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mWallpaperKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v4, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->c:Ljava/io/File;

    iget-object v5, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->s:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v4, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->s:Ljava/io/File;

    invoke-virtual {v4, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object v4, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->s:Ljava/io/File;

    invoke-virtual {v4, v3, v2}, Ljava/io/File;->setWritable(ZZ)Z

    iget-object v4, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->s:Ljava/io/File;

    invoke-virtual {v4, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mWallpaperKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/leo/salt/tweaks/resource/Resource;->Urlr:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->channel2:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    iget-object v1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->channel2:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090039

    return v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c008c

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/leo/salt/tweaks/base/BaseCollapsingPickerActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const/4 p1, -0x1

    if-ne p2, p1, :cond_9

    if-eqz p3, :cond_9

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    const p2, 0x7f0901cf

    invoke-virtual {p0, p2}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    :try_start_0
    new-instance p2, Landroid/media/ExifInterface;

    invoke-direct {p2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v1, "Orientation"

    invoke-virtual {p2, v1, p3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    const/high16 p2, 0x43870000    # 270.0f

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_2
    :goto_0
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mDefaultWallpaper:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mBitmap:Landroid/graphics/Bitmap;

    const p1, 0x7f0901d8

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->widthEditText:Landroid/widget/EditText;

    const p1, 0x7f0900cc

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->heightEditText:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->widthEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->widthEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    and-int/2addr p1, p2

    const-string p2, "no_wallpaper_size"

    const/16 v1, 0x5a

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->widthEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->heightEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez p1, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-gtz v2, :cond_6

    const/4 v0, 0x0

    :cond_6
    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2, p1, v2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object p3, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1, p2, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->ToastALL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object p3, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1, p2, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->ToastALL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object p3, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1, p2, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "warm_prompt"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "wallpaper_select"

    invoke-static {p3, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/leo/salt/tools/service/NotificationUtil;->showWallpaperNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    new-instance p2, Lcom/leo/salt/tweaks/view/WallpaperPicker$3;

    invoke-direct {p2, p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker$3;-><init>(Lcom/leo/salt/tweaks/view/WallpaperPicker;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mWallpaperName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingPickerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "WallpaperKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mWallpaperKey:Ljava/lang/String;

    const-string v0, "WallpaperName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mWallpaperName:Ljava/lang/String;

    const p1, 0x7f0901cf

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    const p1, 0x7f090171

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/CardView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->SelectrView:Landroid/support/v7/widget/CardView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->SelectrView:Landroid/support/v7/widget/CardView;

    new-instance v0, Lcom/leo/salt/tweaks/view/WallpaperPicker$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker$1;-><init>(Lcom/leo/salt/tweaks/view/WallpaperPicker;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->DataUrl:Ljava/io/File;

    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    :goto_0
    const p1, 0x7f0901ce

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/CardView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mCardView:Landroid/support/v7/widget/CardView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    new-instance v0, Lcom/leo/salt/tweaks/view/WallpaperPicker$2;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker$2;-><init>(Lcom/leo/salt/tweaks/view/WallpaperPicker;)V

    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mWallpaperName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWallpaperDialog()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mContext:Landroid/app/Activity;

    const v1, 0x7f0c008b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    new-instance v2, Lcom/leo/salt/tweaks/view/WallpaperPicker$4;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker$4;-><init>(Lcom/leo/salt/tweaks/view/WallpaperPicker;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    new-instance v2, Lcom/leo/salt/tweaks/view/WallpaperPicker$5;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/view/WallpaperPicker$5;-><init>(Lcom/leo/salt/tweaks/view/WallpaperPicker;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/tweaks/view/-$$Lambda$WallpaperPicker$r6xJIC5840kHofHDMVbklX1OoGo;->INSTANCE:Lcom/leo/salt/tweaks/view/-$$Lambda$WallpaperPicker$r6xJIC5840kHofHDMVbklX1OoGo;

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
