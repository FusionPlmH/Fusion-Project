.class public Lcom/meiqia/meiqiasdk/util/MQUtils;
.super Ljava/lang/Object;
.source "MQUtils.java"


# static fields
.field public static final KEYBOARD_CHANGE_DELAY:I = 0x12c

.field private static lastClickTime:J

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQUtils;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    aget-object v0, p3, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    const/4 v2, -0x1

    if-eq v2, p1, :cond_2

    move p0, p1

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    if-eqz p2, :cond_3

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    if-eqz p3, :cond_4

    array-length p1, p3

    :goto_1
    if-ge v1, p1, :cond_4

    aget-object p2, p3, v1

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static applyCustomUITintDrawable(Landroid/view/View;III)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    if-eq v1, p3, :cond_0

    move p2, p3

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    if-eq p3, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public static applyCustomUITitleGravity(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;->LEFT:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    sget-object v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleGravity:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x1

    sget v2, Lcom/meiqia/meiqiasdk/R$id;->back_rl:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static clip(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "clipboard"

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/ClipboardManager;

    invoke-virtual {p0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    const-string v0, "mq_content"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :goto_0
    return-void
.end method

.method public static closeKeyboard(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static closeKeyboard(Landroid/app/Dialog;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static delFile(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getCheckedSelectorDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, p1, v1

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v1, [I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0

    :array_0
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data
.end method

.method public static getDrawableFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isExternalStorageWritable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getFileMessageFilePath(Lcom/meiqia/meiqiasdk/model/FileMessage;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getImageDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isExternalStorageWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MeiqiaSDK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_no_sdcard:I

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->showSafe(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getItemType(Lcom/meiqia/core/bean/MQMessage;)I
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getFrom_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bot"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xa

    const-string v2, "hybrid"

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getFrom_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object p0

    const-string v0, "rich_text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 v1, 0x9

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public static getPicStorePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mq"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPressedSelectorDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, p1, v1

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v1, [I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public static getRealPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const-string v0, "_data"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "MeiqiaSDK"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUnSendTextMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mq_un_send_text_msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized isFastClick()Z
    .locals 8

    const-class v0, Lcom/meiqia/meiqiasdk/util/MQUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/meiqia/meiqiasdk/util/MQUtils;->lastClickTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    sput-wide v1, Lcom/meiqia/meiqiasdk/util/MQUtils;->lastClickTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isLocalPath(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSdcardAvailable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static openKeyboard(Landroid/widget/EditText;)V
    .locals 3

    new-instance v0, Lcom/meiqia/meiqiasdk/util/MQUtils$2;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/util/MQUtils$2;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->runInUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static parseBaseMessageToMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)Lcom/meiqia/core/bean/MQMessage;
    .locals 3

    new-instance v0, Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meiqia/core/bean/MQMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/bean/MQMessage;->setConversation_id(J)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setContent_type(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/bean/MQMessage;->setId(J)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getAgentNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setAgent_nickname(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getCreatedOn()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/bean/MQMessage;->setCreated_on(J)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setAvatar(Ljava/lang/String;)V

    instance-of v1, p0, Lcom/meiqia/meiqiasdk/model/FileMessage;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setExtra(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meiqia/core/bean/MQMessage;->setMedia_url(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static parseMQAgentToAgent(Lcom/meiqia/core/bean/MQAgent;)Lcom/meiqia/meiqiasdk/model/Agent;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/meiqia/meiqiasdk/model/Agent;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/Agent;-><init>()V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQAgent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/Agent;->setId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQAgent;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/Agent;->setNickname(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQAgent;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/Agent;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQAgent;->isOnLine()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/Agent;->setIsOnline(Z)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQAgent;->getPrivilege()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/Agent;->setPrivilege(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQAgent;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/Agent;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQAgent;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meiqia/meiqiasdk/model/Agent;->setSignature(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseMQMessageIntoBaseMessage(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/meiqiasdk/model/BaseMessage;)Lcom/meiqia/meiqiasdk/model/BaseMessage;
    .locals 2

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setStatus(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getItemType(Lcom/meiqia/core/bean/MQMessage;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setItemViewType(I)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setId(J)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getConversation_id()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setConversationId(J)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getAgent_nickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setAgentNickname(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getCreated_on()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setCreatedOn(J)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->is_read()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setIsRead(Z)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/meiqia/meiqiasdk/model/PhotoMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getExtra()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setExtra(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->updateFileState(Lcom/meiqia/meiqiasdk/model/FileMessage;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getExtra()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "contains_sensitive_words"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string v1, "replaced_content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/TextMessage;

    invoke-virtual {v1, p0}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setContainsSensitiveWords(Z)V

    invoke-virtual {v1, v0}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setReplaceContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "meiqia_log"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object p1
.end method

.method public static parseMQMessageToBaseMessage(Lcom/meiqia/core/bean/MQMessage;)Lcom/meiqia/meiqiasdk/model/BaseMessage;
    .locals 4

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getFrom_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bot"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "hybrid"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/model/HybridMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/HybridMessage;-><init>()V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContent(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;-><init>()V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_robot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->setContentRobot(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->setContent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getSub_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->setSubType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getQuestion_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->setQuestionId(J)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->isAlreadyFeedback()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->setAlreadyFeedback(Z)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->setExtra(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/meiqia/meiqiasdk/model/HybridMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/HybridMessage;-><init>()V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContent(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/meiqia/meiqiasdk/model/TextMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meiqia/meiqiasdk/model/TextMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContent(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "contains_sensitive_words"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "replaced_content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/meiqia/meiqiasdk/model/TextMessage;

    invoke-virtual {v3, v2}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setContainsSensitiveWords(Z)V

    invoke-virtual {v3, v1}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setReplaceContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "meiqia_log"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/meiqia/meiqiasdk/model/PhotoMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;-><init>()V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isLocalPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/meiqia/meiqiasdk/model/PhotoMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->setLocalPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    check-cast v1, Lcom/meiqia/meiqiasdk/model/PhotoMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->setUrl(Ljava/lang/String;)V

    :goto_0
    const-string v1, "[photo]"

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContent(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isLocalPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->setLocalPath(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v1, v0

    check-cast v1, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->setUrl(Ljava/lang/String;)V

    :goto_1
    const-string v1, "[voice]"

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContent(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meiqia/meiqiasdk/model/FileMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isLocalPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setLocalPath(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v1, v0

    check-cast v1, Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setUrl(Ljava/lang/String;)V

    :goto_2
    move-object v1, v0

    check-cast v1, Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setExtra(Ljava/lang/String;)V

    const-string v2, "[file]"

    invoke-virtual {v0, v2}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setId(J)V

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->updateFileState(Lcom/meiqia/meiqiasdk/model/FileMessage;)Z

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rich_text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/meiqia/meiqiasdk/model/RichTextMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/RichTextMessage;-><init>()V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContent(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/meiqia/meiqiasdk/model/RichTextMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/model/RichTextMessage;->setExtra(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    new-instance v0, Lcom/meiqia/meiqiasdk/model/TextMessage;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meiqia/meiqiasdk/model/TextMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContentType(Ljava/lang/String;)V

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getConversation_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setConversationId(J)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setStatus(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getItemType(Lcom/meiqia/core/bean/MQMessage;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setItemViewType(I)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setId(J)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getAgent_nickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setAgentNickname(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getCreated_on()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setCreatedOn(J)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->is_read()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setIsRead(Z)V

    return-object v0
.end method

.method public static parseMQMessageToChatBaseList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/core/bean/MQMessage;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->parseMQMessageToBaseMessage(Lcom/meiqia/core/bean/MQMessage;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MeiqiaSDK"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static runInThread(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static runInUIThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static runInUIThread(Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static saveBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p2, p1, v0, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static scrollListViewToBottom(Landroid/widget/AbsListView;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/util/MQUtils$3;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/util/MQUtils$3;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static setUnSendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mq_un_send_text_msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static showSafe(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->showSafe(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showSafe(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/meiqia/meiqiasdk/util/MQUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils$1;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->runInUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static stringToMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v0
.end method

.method public static tintCompoundButton(Landroid/widget/CompoundButton;II)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$color;->mq_form_et_bg_normal:I

    invoke-static {v0, p1, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$color;->mq_indicator_selected:I

    invoke-static {v0, p2, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getCheckedSelectorDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2, p1, p2}, Landroid/widget/CompoundButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-object p1
.end method

.method public static tintPressedIndicator(Landroid/widget/ImageView;II)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$color;->mq_indicator_selected:I

    invoke-static {v0, p2, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getPressedSelectorDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static updateFileState(Lcom/meiqia/meiqiasdk/model/FileMessage;)Z
    .locals 2

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getFileMessageFilePath(Lcom/meiqia/meiqiasdk/model/FileMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setFileState(I)V

    :cond_0
    return v0
.end method
