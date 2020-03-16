.class public abstract Lcom/leo/service/plug/LeoGlobalActions;
.super Landroid/app/Activity;
.source "LeoGlobalActions.java"


# instance fields
.field BlurDrawable:Landroid/graphics/drawable/Drawable;

.field public COUNT:I

.field public Icon:[Landroid/graphics/drawable/Drawable;

.field bitmapWallpaper:Landroid/graphics/Bitmap;

.field public itemName:[Ljava/lang/String;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mContext:Landroid/content/Context;

.field style:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/leo/service/plug/LeoGlobalActions;->style:I

    const/16 v1, 0x12

    .line 178
    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    const-string v3, "android"

    const-string v4, "tw_ic_do_poweroff"

    invoke-static {v3, v4}, Lcom/leo/service/plug/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "android"

    const-string v3, "tw_ic_do_restart"

    .line 179
    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 180
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_quickboot"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 181
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_download"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 182
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_recovery"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    sget-object v0, Lcom/leo/service/plug/Resource;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    .line 183
    invoke-static {v0}, Lcom/leo/service/plug/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const-string v0, "android"

    const-string v3, "tw_ic_do_mobiledata"

    .line 184
    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v2, v3

    .line 185
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_airplane"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 186
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_flashlight"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v2, v3

    .line 187
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_outdoors"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v2, v3

    .line 188
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_floating"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0xa

    aput-object v0, v2, v3

    .line 189
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_mipop"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, v2, v3

    .line 190
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_screenshot"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, v2, v3

    .line 191
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_screenrecord"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0xd

    aput-object v0, v2, v3

    .line 192
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_tweaks"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0xe

    aput-object v0, v2, v3

    .line 193
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tw_leo_wifi"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0xf

    aput-object v0, v2, v3

    const-string v0, "android"

    const-string v3, "tw_ic_do_lockdown"

    .line 194
    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0x10

    aput-object v0, v2, v3

    .line 195
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "clear"

    invoke-static {v0, v3}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0x11

    aput-object v0, v2, v3

    iput-object v2, p0, Lcom/leo/service/plug/LeoGlobalActions;->Icon:[Landroid/graphics/drawable/Drawable;

    const-string v0, "powermeun_style_values"

    .line 198
    invoke-static {v0}, Lcom/leo/service/plug/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/service/plug/LeoGlobalActions;->itemName:[Ljava/lang/String;

    .line 202
    iput v1, p0, Lcom/leo/service/plug/LeoGlobalActions;->COUNT:I

    return-void
.end method

.method private hideStatusBar()V
    .registers 4

    .line 103
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_hidestatusbar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 104
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 105
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 106
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_27
    return-void
.end method


# virtual methods
.method public Background()V
    .registers 5

    .line 113
    iget v0, p0, Lcom/leo/service/plug/LeoGlobalActions;->style:I

    if-nez v0, :cond_c0

    .line 115
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_blur"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leo_salt_power_menu_wallpaper"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v1, v2, :cond_82

    .line 117
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leo_salt_power_menu_wallpaper_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 119
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/service/plug/LeoGlobalActions;->bitmapWallpaper:Landroid/graphics/Bitmap;

    .line 123
    iget-object v1, p0, Lcom/leo/service/plug/LeoGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leo/service/plug/LeoGlobalBlur;->with(Landroid/content/Context;)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/service/plug/LeoGlobalActions;->bitmapWallpaper:Landroid/graphics/Bitmap;

    .line 124
    invoke-virtual {v1, v2}, Lcom/leo/service/plug/LeoGlobalBlur;->bitmap(Landroid/graphics/Bitmap;)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v1

    .line 125
    invoke-virtual {v1, v0}, Lcom/leo/service/plug/LeoGlobalBlur;->radius(I)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v3}, Lcom/leo/service/plug/LeoGlobalBlur;->scale(I)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/leo/service/plug/LeoGlobalBlur;->blur()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/leo/service/plug/LeoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/leo/service/plug/LeoGlobalActions;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    :cond_74
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/leo/service/plug/LeoGlobalActions;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c0

    .line 135
    :cond_82
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/service/plug/LeoGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    .line 136
    iget-object v1, p0, Lcom/leo/service/plug/LeoGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leo/service/plug/LeoGlobalBlur;->with(Landroid/content/Context;)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/service/plug/LeoGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {v1, v2}, Lcom/leo/service/plug/LeoGlobalBlur;->bitmap(Landroid/graphics/Bitmap;)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v0}, Lcom/leo/service/plug/LeoGlobalBlur;->radius(I)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v3}, Lcom/leo/service/plug/LeoGlobalBlur;->scale(I)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/leo/service/plug/LeoGlobalBlur;->blur()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/leo/service/plug/LeoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/leo/service/plug/LeoGlobalActions;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/leo/service/plug/LeoGlobalActions;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c0
    :goto_c0
    return-void
.end method

.method public DialogTheme()V
    .registers 4

    .line 216
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const v0, 0x7f090006

    .line 217
    invoke-virtual {p0, v0}, Lcom/leo/service/plug/LeoGlobalActions;->setTheme(I)V

    goto :goto_1f

    :cond_19
    const v0, 0x7f090005

    .line 219
    invoke-virtual {p0, v0}, Lcom/leo/service/plug/LeoGlobalActions;->setTheme(I)V

    :goto_1f
    return-void
.end method

.method public GridViewNumber()V
    .registers 4

    .line 245
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_item_quantity"

    iget v2, p0, Lcom/leo/service/plug/LeoGlobalActions;->COUNT:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/leo/service/plug/LeoGlobalActions;->COUNT:I

    return-void
.end method

.method public dialog()Ljava/lang/String;
    .registers 4

    .line 207
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_dialog_title"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 208
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_dialog_title_string"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/service/plug/Utils;->getLeoCustomString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 210
    :cond_25
    iget-object v0, p0, Lcom/leo/service/plug/LeoGlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "dialog_powermenu_title"

    invoke-static {v0, v1}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0
.end method

.method public hideNavKey(Landroid/content/Context;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/16 v2, 0xb

    if-le v0, v2, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1c

    .line 165
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_37

    .line 167
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_37

    .line 169
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 173
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_37
    :goto_37
    return-void
.end method

.method public initAction(I)V
    .registers 5

    .line 154
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_affirm"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {p0, p1, v1}, Lcom/leo/service/plug/Utils;->PowerMenuAction(Landroid/app/Activity;IZ)V

    return-void
.end method

.method protected abstract initLayout()I
.end method

.method public onBackPressed()V
    .registers 1

    .line 228
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iput-object p0, p0, Lcom/leo/service/plug/LeoGlobalActions;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x680080

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 78
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_34

    .line 79
    invoke-direct {p0}, Lcom/leo/service/plug/LeoGlobalActions;->hideStatusBar()V

    .line 80
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 86
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 88
    :cond_34
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->initLayout()I

    move-result p1

    if-lez p1, :cond_41

    .line 89
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->initLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/LeoGlobalActions;->setContentView(I)V

    :cond_41
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 236
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->onBackPressed()V

    const/4 p1, 0x0

    return p1

    .line 240
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .registers 1

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public setLeoTheme()V
    .registers 4

    .line 95
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_bg"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/leo/service/plug/LeoGlobalActions;->style:I

    .line 96
    iget v0, p0, Lcom/leo/service/plug/LeoGlobalActions;->style:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const v0, 0x7f090004

    .line 97
    invoke-virtual {p0, v0}, Lcom/leo/service/plug/LeoGlobalActions;->setTheme(I)V

    goto :goto_27

    .line 98
    :cond_1d
    iget v0, p0, Lcom/leo/service/plug/LeoGlobalActions;->style:I

    if-nez v0, :cond_27

    const v0, 0x7f090003

    .line 99
    invoke-virtual {p0, v0}, Lcom/leo/service/plug/LeoGlobalActions;->setTheme(I)V

    :cond_27
    :goto_27
    return-void
.end method

.method public setTextReminderStyele(Landroid/widget/TextView;)V
    .registers 6

    .line 264
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_textfont"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 266
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "sec-roboto-light"

    invoke-static {v1, v0, v3, v2}, Lcom/leo/service/plug/Utils;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_textcolor"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextStyele(Landroid/widget/TextView;)V
    .registers 6

    .line 258
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_text_size"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 259
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_textfont"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 261
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "sec-roboto-light"

    invoke-static {v1, v0, v3, v2}, Lcom/leo/service/plug/Utils;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTextStyeleColor(Landroid/widget/TextView;)V
    .registers 5

    .line 270
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_textcolor"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setViewSize(Landroid/widget/ImageView;)V
    .registers 5

    .line 250
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_icon_size"

    const/16 v2, 0x82

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 251
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 252
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 253
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 254
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setdialog()V
    .registers 3

    const v0, 0x7f050002

    .line 223
    invoke-virtual {p0, v0}, Lcom/leo/service/plug/LeoGlobalActions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoGlobalActions;->dialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
