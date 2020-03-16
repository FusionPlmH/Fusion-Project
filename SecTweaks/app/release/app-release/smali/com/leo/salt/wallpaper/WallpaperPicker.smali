.class public abstract Lcom/leo/salt/wallpaper/WallpaperPicker;
.super Landroid/app/Fragment;
.source "WallpaperPicker.java"


# instance fields
.field CachePath:Ljava/io/File;

.field private Choose:Landroid/widget/Button;

.field DataPath:Ljava/io/File;

.field SDwallpaperPath:Ljava/lang/String;

.field private Storage_Path:Ljava/io/FileOutputStream;

.field StringPath:Ljava/lang/String;

.field private WallpaperView:Landroid/widget/ImageView;

.field private bitmap:Landroid/graphics/Bitmap;

.field channel:Ljava/nio/channels/FileChannel;

.field channel2:Ljava/nio/channels/FileChannel;

.field private height:Landroid/widget/EditText;

.field private width:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->Choose:Landroid/widget/Button;

    iput-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->Storage_Path:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/leo/salt/utils/Constants;->WALLPAPER_DATA_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->CachePath:Ljava/io/File;

    sget-object v0, Lcom/leo/salt/utils/Constants;->JPEGWallpaper:Ljava/lang/String;

    iput-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->SDwallpaperPath:Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/utils/Constants;->WALLPAPER_DATA:Ljava/lang/String;

    iput-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->StringPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/leo/salt/utils/Constants;->WALLPAPER_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->DataPath:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abstract WallpaperUse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const/4 p1, -0x1

    if-ne p2, p1, :cond_9

    if-eqz p3, :cond_9

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/WallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

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

    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/WallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v1, 0x7f0901bb

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

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

    sget-object v1, Lcom/leo/salt/utils/Constants;->JPEGWallpaper:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->Storage_Path:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/WallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f0901c2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->width:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/WallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f0900c1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->height:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->width:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->width:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    and-int/2addr p1, p2

    const/16 p2, 0x5a

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->width:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->height:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez p1, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-gtz v1, :cond_6

    const/4 v0, 0x0

    :cond_6
    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, v1, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->Storage_Path:Ljava/io/FileOutputStream;

    invoke-virtual {p1, p3, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/WallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/widget/DialogUtil;->WallpaperSize(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->bitmap:Landroid/graphics/Bitmap;

    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->Storage_Path:Ljava/io/FileOutputStream;

    invoke-virtual {p1, p3, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/WallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/widget/DialogUtil;->WallpaperSize(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->bitmap:Landroid/graphics/Bitmap;

    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v0, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->Storage_Path:Ljava/io/FileOutputStream;

    invoke-virtual {p1, p3, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/WallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/NotificationUtils;->showWallpaperNotification(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    new-instance p2, Lcom/leo/salt/wallpaper/WallpaperPicker$2;

    invoke-direct {p2, p0}, Lcom/leo/salt/wallpaper/WallpaperPicker$2;-><init>(Lcom/leo/salt/wallpaper/WallpaperPicker;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c008a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->CachePath:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->CachePath:Ljava/io/File;

    invoke-virtual {p2, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->CachePath:Ljava/io/File;

    invoke-virtual {p2, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->CachePath:Ljava/io/File;

    invoke-virtual {p2, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->CachePath:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->CachePath:Ljava/io/File;

    invoke-virtual {p2, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->CachePath:Ljava/io/File;

    invoke-virtual {p2, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->CachePath:Ljava/io/File;

    invoke-virtual {p2, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    :goto_0
    const p2, 0x7f0901bb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->WallpaperView:Landroid/widget/ImageView;

    const p2, 0x7f090167

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->Choose:Landroid/widget/Button;

    iget-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker;->Choose:Landroid/widget/Button;

    new-instance p2, Lcom/leo/salt/wallpaper/WallpaperPicker$1;

    invoke-direct {p2, p0}, Lcom/leo/salt/wallpaper/WallpaperPicker$1;-><init>(Lcom/leo/salt/wallpaper/WallpaperPicker;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/WallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/widget/DialogUtil;->WallpaperInfo(Landroid/app/Activity;)V

    return-void
.end method

.method public onWallpaperDialog()V
    .locals 3

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/wallpaper/WallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100077

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100078

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/wallpaper/WallpaperPicker$3;

    invoke-direct {v1, p0}, Lcom/leo/salt/wallpaper/WallpaperPicker$3;-><init>(Lcom/leo/salt/wallpaper/WallpaperPicker;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method
