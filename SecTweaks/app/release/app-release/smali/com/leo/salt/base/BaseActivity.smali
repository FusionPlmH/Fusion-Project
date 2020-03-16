.class public abstract Lcom/leo/salt/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected mContext:Landroid/app/Activity;

.field protected mIntent:Landroid/content/Intent;

.field protected mThemeUtils:Lcom/leo/salt/theme/ThemeControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private warning()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/base/BaseActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100433

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100434

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/base/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/base/BaseActivity$1;-><init>(Lcom/leo/salt/base/BaseActivity;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public MyCopyright()V
    .locals 2

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getRomName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->LeoROMName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomSystemVersion()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->LeoROMCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/base/BaseActivity;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/leo/salt/utils/root/Verify;->get(Landroid/content/Context;)Lcom/leo/salt/utils/root/Verify;

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->createSDCardDir()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/leo/salt/base/BaseActivity;->warning()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/leo/salt/base/BaseActivity;->warning()V

    :goto_0
    return-void
.end method

.method public createSDCardDir()V
    .locals 3

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/LeoTweaks/Log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paht ok,path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/base/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->createSDCardDirimg()V

    return-void

    :cond_1
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/leo/salt/base/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public createSDCardDirimg()V
    .locals 3

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/LeoFlashImg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paht ok,path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/base/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/leo/salt/base/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getThemeUtils()Lcom/leo/salt/theme/ThemeControl;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/base/BaseActivity;->mThemeUtils:Lcom/leo/salt/theme/ThemeControl;

    return-object v0
.end method

.method protected abstract initLayout()I
.end method

.method protected abstract initStatusBarColor()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->initStatusBarColor()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/leo/salt/theme/Utils;->StatusBarColor(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getLeoKernel()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x9

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/leo/salt/theme/ThemeControl;

    invoke-direct {p1, p0}, Lcom/leo/salt/theme/ThemeControl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/base/BaseActivity;->mThemeUtils:Lcom/leo/salt/theme/ThemeControl;

    iget-object p1, p0, Lcom/leo/salt/base/BaseActivity;->mThemeUtils:Lcom/leo/salt/theme/ThemeControl;

    invoke-virtual {p1, p0}, Lcom/leo/salt/theme/ThemeControl;->getTheme(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/base/BaseActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->initLayout()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->initLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/base/BaseActivity;->setContentView(I)V

    :cond_1
    iput-object p0, p0, Lcom/leo/salt/base/BaseActivity;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object p1

    const-string v0, "R28K136VAZJ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->createSDCardDir()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object p1

    const-string v0, "R58J44F6B3D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->createSDCardDir()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RF8J52ELJFR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->createSDCardDir()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object p1

    const-string v0, "R28J51NJ0FD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->createSDCardDir()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->MyCopyright()V

    :cond_6
    :goto_0
    return-void

    nop

    :array_0
    .array-data 2
        0x46s
        0x75s
        0x73s
        0x69s
        0x6fs
        0x6es
        0x4cs
        0x65s
        0x6fs
    .end array-data
.end method

.method protected onPause()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/leo/salt/base/BaseActivity;->mThemeUtils:Lcom/leo/salt/theme/ThemeControl;

    invoke-virtual {v0}, Lcom/leo/salt/theme/ThemeControl;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->reload()V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/leo/salt/base/BaseActivity;->overridePendingTransition(II)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/base/BaseActivity;->finish()V

    invoke-virtual {p0, v1, v1}, Lcom/leo/salt/base/BaseActivity;->overridePendingTransition(II)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
