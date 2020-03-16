.class public abstract Lcom/os/salt/globalactions/LeoGlobalActions;
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


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "android"

    const-string v2, "tw_ic_do_poweroff"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "tw_ic_do_restart"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_quickboot"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_download"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_recovery"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    sget-object v2, Lcom/leo/salt/tweaks/resource/Resource;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {v2}, Lcom/os/salt/globalactions/Utils;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "tw_ic_do_mobiledata"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_airplane"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_flashlight"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_outdoors"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_floating"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_mipop"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_screenshot"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_screenrecord"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_tweaks"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v0, v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tw_leo_wifi"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v0, v3

    const-string v2, "tw_ic_do_lockdown"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clear"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->Icon:[Landroid/graphics/drawable/Drawable;

    const-string v0, "powermeun_style_values"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->itemName:[Ljava/lang/String;

    iput v2, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->COUNT:I

    return-void
.end method

.method private hideStatusBar()V
    .locals 3

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_hidestatusbar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Background()V
    .locals 4

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_blur"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leo_salt_power_menu_bg"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "leo_salt_power_menu_bg_wallpaper_url"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->bitmapWallpaper:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/os/salt/globalactions/LeoGlobalBlur;->with(Landroid/content/Context;)Lcom/os/salt/globalactions/LeoGlobalBlur;

    move-result-object v1

    iget-object v3, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->bitmapWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/os/salt/globalactions/LeoGlobalBlur;->bitmap(Landroid/graphics/Bitmap;)Lcom/os/salt/globalactions/LeoGlobalBlur;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/os/salt/globalactions/LeoGlobalBlur;->radius(I)Lcom/os/salt/globalactions/LeoGlobalBlur;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/os/salt/globalactions/LeoGlobalBlur;->scale(I)Lcom/os/salt/globalactions/LeoGlobalBlur;

    move-result-object v0

    invoke-virtual {v0}, Lcom/os/salt/globalactions/LeoGlobalBlur;->blur()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08006a

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/os/salt/globalactions/LeoGlobalBlur;->with(Landroid/content/Context;)Lcom/os/salt/globalactions/LeoGlobalBlur;

    move-result-object v1

    iget-object v3, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/os/salt/globalactions/LeoGlobalBlur;->bitmap(Landroid/graphics/Bitmap;)Lcom/os/salt/globalactions/LeoGlobalBlur;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/os/salt/globalactions/LeoGlobalBlur;->radius(I)Lcom/os/salt/globalactions/LeoGlobalBlur;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/os/salt/globalactions/LeoGlobalBlur;->scale(I)Lcom/os/salt/globalactions/LeoGlobalBlur;

    move-result-object v0

    invoke-virtual {v0}, Lcom/os/salt/globalactions/LeoGlobalBlur;->blur()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public DialogTheme()V
    .locals 3

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f11018a

    invoke-virtual {p0, v0}, Lcom/os/salt/globalactions/LeoGlobalActions;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f110189

    invoke-virtual {p0, v0}, Lcom/os/salt/globalactions/LeoGlobalActions;->setTheme(I)V

    :goto_0
    return-void
.end method

.method public GridViewNumber()V
    .locals 3

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->COUNT:I

    const-string v2, "leo_salt_power_menu_item_quantity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->COUNT:I

    return-void
.end method

.method public dialog()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_dialog_title"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_dialog_title_string"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/os/salt/globalactions/Utils;->getLeoCustomString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "dialog_powermenu_title"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hideNavKey(Landroid/content/Context;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initAction(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_power_menu_affirm"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p0, p1, v1}, Lcom/os/salt/globalactions/Utils;->PowerMenuAction(Landroid/app/Activity;IZ)V

    return-void
.end method

.method public initActionSimplify(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_power_menu_affirm"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p0, p1, v1}, Lcom/os/salt/globalactions/Utils;->PowerMenuActionSimplify(Landroid/app/Activity;IZ)V

    return-void
.end method

.method protected abstract initLayout()I
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/os/salt/globalactions/LeoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x680080

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->hideStatusBar()V

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->initLayout()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->initLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/os/salt/globalactions/LeoGlobalActions;->setContentView(I)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->onBackPressed()V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public setLeoTheme()V
    .locals 1

    const v0, 0x7f1100d2

    invoke-virtual {p0, v0}, Lcom/os/salt/globalactions/LeoGlobalActions;->setTheme(I)V

    return-void
.end method

.method public setTextReminderStyele(Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_power_menu_textfont"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sec-roboto-light"

    invoke-static {v2, v0, v3, v1}, Lcom/os/salt/globalactions/Utils;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

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
    .locals 4

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_text_size"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_power_menu_textfont"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sec-roboto-light"

    invoke-static {v2, v0, v3, v1}, Lcom/os/salt/globalactions/Utils;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTextStyeleColor(Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

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
    .locals 3

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_icon_size"

    const/16 v2, 0x82

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setdialog()V
    .locals 2

    const v0, 0x7f090107

    invoke-virtual {p0, v0}, Lcom/os/salt/globalactions/LeoGlobalActions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/os/salt/globalactions/LeoGlobalActions;->dialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
