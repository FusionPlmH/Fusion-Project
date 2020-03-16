.class public Lcom/leo/salt/tweaks/view/widget/DialogView;
.super Ljava/lang/Object;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/widget/DialogView$ChineseCityAdapter;,
        Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;,
        Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;
    }
.end annotation


# static fields
.field static mDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppPackage(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.mhook.dialog"

    invoke-static {p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const-string v1, "Y29tLmxlby5zYWx0LnR3ZWFrcw=="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static AppPackageVersionsError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f100039

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100037

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f100038

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f100034

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$2mdgmHOQpypju78Y1X1hA9nM6oU;

    invoke-direct {v1, p2, p0, p1}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$2mdgmHOQpypju78Y1X1hA9nM6oU;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static Blacklist(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Blacklist_values"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$HvCnmdN1BSiGjLCNPVgDFEg8Yu8;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$HvCnmdN1BSiGjLCNPVgDFEg8Yu8;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static Giving_Notice(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v2, 0x7f080082

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(I)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v2, 0x7f1000e6

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v2, 0x7f1000e7

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$LF4g6PWIPGouQiND7FUuh-E_BRc;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$LF4g6PWIPGouQiND7FUuh-E_BRc;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    sget-object v0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$PRlnPq90sOVisGieYlSgSeHesxM;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$PRlnPq90sOVisGieYlSgSeHesxM;

    invoke-virtual {p0, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static GlobaInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLandroid/graphics/drawable/Drawable;)V
    .locals 1

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-direct {v0, p0, p3, p4}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p5}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    sget-object p1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$po5_UXHMZQ5Jy9Hn4u8xE36cnxw;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$po5_UXHMZQ5Jy9Hn4u8xE36cnxw;

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static GlobaInfoBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-direct {v0, p0, p3, p4}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p5}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    new-instance p2, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$q65KvViynGA1px5qxJRxr0uPPPI;

    invoke-direct {p2, p0, p6}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$q65KvViynGA1px5qxJRxr0uPPPI;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public static InternetCheckView(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/leo/salt/utils/PrefUtils;->NetworkCheckDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/leo/salt/utils/NetUtils;->hasNetWork(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->NetworkCheck2(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static LeoLogDialog(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f1000d7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f1000c6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$mghwLK5ZNp9e0s10bnuF1DEfRqw;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$mghwLK5ZNp9e0s10bnuF1DEfRqw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static LeoLogDialogERROR(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f100246

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f100245

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    sget-object v0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$TQsldcLcLYBw9w44tyLHtbi2MVA;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$TQsldcLcLYBw9w44tyLHtbi2MVA;

    invoke-virtual {p0, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static LeoLogDialoglist(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100244

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$AdOi6Rimz8bYNgqeQB8ocixmzO8;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$AdOi6Rimz8bYNgqeQB8ocixmzO8;-><init>(Landroid/content/Context;)V

    const p0, 0x7f030041

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget-object v0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$Yf2V3We5uk042LoWPcYx7b9_2SQ;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$Yf2V3We5uk042LoWPcYx7b9_2SQ;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static NetworkCheck(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "network_check"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "network_check_null"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f100056

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff3d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$v9-uPF0vDFKEbRkbwa-nmpkVWTU;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$v9-uPF0vDFKEbRkbwa-nmpkVWTU;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static NetworkCheck2(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "network_check_null"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f100056

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff3d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->ToastALL(Ljava/lang/String;)V

    return-void
.end method

.method public static PermissionFunction(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f10012a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f10012c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    :goto_0
    return-void
.end method

.method public static PermissionHome(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "HomePermission"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f10012a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f10012b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$ZsPUQdmkUF5FFE05PJwBPfSu8_M;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$ZsPUQdmkUF5FFE05PJwBPfSu8_M;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static Reboot()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "G97"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reboot recovery"

    goto :goto_0

    :cond_0
    const-string v0, "reboot"

    :goto_0
    return-object v0
.end method

.method public static RestartDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    new-instance p2, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$0scFJKybCXfIHqOH6Y5EfBhwXQM;

    invoke-direct {p2, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$0scFJKybCXfIHqOH6Y5EfBhwXQM;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static SafetyBackView(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$v1DFAr36Z_ngYb_qoJ5e00SUHIU;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$v1DFAr36Z_ngYb_qoJ5e00SUHIU;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static SafetyDonateDialogView(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "global_no_donate_info"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "no_donate_info"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v2, 0x7f1001a6

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v2, 0x7f10024a

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$F4jLhPBK39yIPyQtAaWfyNL0fgI;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$F4jLhPBK39yIPyQtAaWfyNL0fgI;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$0f2DDT-lOWgxo3gA4VlBO6zO4qA;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$0f2DDT-lOWgxo3gA4VlBO6zO4qA;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p2, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uff3b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff3d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "goodlock_null"

    invoke-static {v4, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "ota_download"

    invoke-static {p3, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p2

    const/high16 p3, 0x1040000

    invoke-static {p3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$ZCZN4K2dJIyIVdnFJDchOeI7e7E;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$ZCZN4K2dJIyIVdnFJDchOeI7e7E;

    invoke-virtual {p2, p3}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$TPWG_PnMyLbDu5TGs6iGdZj_ydA;

    invoke-direct {p3, p0, p1}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$TPWG_PnMyLbDu5TGs6iGdZj_ydA;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    :goto_0
    return-void
.end method

.method public static ScienceHttp(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const-string v2, "ic_telegram"

    invoke-static {p0, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v2, 0x7f10003a

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const-string v2, "\u5982\u679c\u4f60\u9700\u8981\u8bbf\u95eeLeo\u56e2\u961f\u7535\u62a5\u7fa4,\u4f60\u9700\u8981\u4f7f\u7528\u79d1\u5b66\u4e0a\u7f51\u624d\u884c,\u5177\u4f53\u65b9\u6cd5\u8bf7\u4f7f\u7528\u7f51\u7edc\u641c\u7d22"

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$rBz6W9_T6JBhB3ecKeDwFitgHJI;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$rBz6W9_T6JBhB3ecKeDwFitgHJI;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static Shortcut(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "shortcut_select"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "shortcut_items"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogView$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/view/widget/DialogView$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static ToastALL(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static WebDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x1040000

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$tp1pbFySec3xOXI7Ov2ApA8KKsw;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$tp1pbFySec3xOXI7Ov2ApA8KKsw;

    const/4 p2, -0x2

    invoke-virtual {v0, p2, p0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->dismiss()V

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->create()V

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->show()V

    return-void
.end method

.method public static checkOTAinfo(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v2, 0x7f080093

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(I)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const-string v2, "OTA?"

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v2, 0x7f1000f8

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v2, 0x104000a

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$_L-Y-WFjqWhi8_CCkaytgeirA8o;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$_L-Y-WFjqWhi8_CCkaytgeirA8o;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static checkUpdateError(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f10003a

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ota_state_info_null"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$yiVngNUInBvi0anx-Oh_yEPGAAo;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$yiVngNUInBvi0anx-Oh_yEPGAAo;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static dialogCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    new-instance v3, Lcom/leo/salt/tweaks/view/widget/DialogView$ChineseCityAdapter;

    invoke-direct {v3, p0}, Lcom/leo/salt/tweaks/view/widget/DialogView$ChineseCityAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v2, 0x7f0900c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0900bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance p3, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;

    invoke-direct {p3, v2, p0, p1, p2}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;-><init>(Landroid/widget/CheckBox;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x1040013

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "NOT checked"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string p2, "checked"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public static getefs()Ljava/lang/String;
    .locals 7

    const-string v0, "/efs/FactoryApp/epen_count"

    :try_start_0
    const-string v1, "batt_cable_count"

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->m99955(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "earjack_count"

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->m99955(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\n"

    const-string v3, "/efs/FactoryApp/batt_cable_count"

    const-string v4, "/efs/FactoryApp/earjack_count"

    const-string v5, "\u8033\u673a\u8fde\u63a5\u6b21\u6570:"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "epen_count"

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->m99955(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Spen\u62d4\u51fa\u6b21\u6570:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/leo/salt/utils/BatteryUtil;->readCurrentFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/leo/salt/utils/BatteryUtil;->readCurrentFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\u5145\u7535\u8fde\u63a5\u6b21\u6570:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/leo/salt/utils/BatteryUtil;->readCurrentFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/leo/salt/utils/BatteryUtil;->readCurrentFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5145\u7535\u8fde\u63a5\u6b21\u6570:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/leo/salt/utils/BatteryUtil;->readCurrentFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static goToMainAppsMarketQQ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.samsungapps.com/appquery/appDetail.as?appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.samsungapps"

    const-string v2, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static initInfoView(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/leo/salt/tweaks/view/widget/DialogView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/leo/salt/tweaks/view/widget/DialogView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object p1, Lcom/leo/salt/tweaks/view/widget/DialogView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c00ab

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget-object p2, Lcom/leo/salt/tweaks/view/widget/DialogView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_0
    array-length v0, p3

    const-string v1, "message"

    const-string v3, "name"

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aget-object v4, p3, p2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v3, p4, p2

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/widget/SimpleAdapter;

    const p3, 0x7f0c005e

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 p4, 0x2

    new-array v5, p4, [I

    fill-array-data v5, :array_0

    move-object v0, p2

    move-object v1, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const p0, 0x7f090218

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    invoke-virtual {p0, p2}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 p1, 0x12c

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setMaxOverScrollY(I)V

    sget-object p0, Lcom/leo/salt/tweaks/view/widget/DialogView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    sget-object p2, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$c_EpuFGCaeJMN0QbDRVIqwwEWpA;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$c_EpuFGCaeJMN0QbDRVIqwwEWpA;

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    sget-object p0, Lcom/leo/salt/tweaks/view/widget/DialogView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :array_0
    .array-data 4
        0x7f090123
        0x7f090122
    .end array-data
.end method

.method public static intCodeViewDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x1040000

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$H21iIyzM1x8mw-YM9Qh_xgnRmq4;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$H21iIyzM1x8mw-YM9Qh_xgnRmq4;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;->dismiss()V

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;->create()V

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;->show()V

    return-void
.end method

.method public static isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static joinQQGroup(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-direct {v0, p0, p1, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f10003a

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "qq_null"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "qq_download"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$f8-hRJqt4YcjLQ0HWmAK6RZp0us;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$f8-hRJqt4YcjLQ0HWmAK6RZp0us;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$AppPackageVersionsError$17(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 1

    invoke-virtual {p3}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    sget-object p3, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    invoke-virtual {p3, p0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    new-instance p0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 p3, 0x2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const p3, 0x7f100034

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f100035

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    const p2, 0x7f100036

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    sget-object p1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$r6y_Xgwz1_0bP17ERljDkHdfsLU;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$r6y_Xgwz1_0bP17ERljDkHdfsLU;

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method static synthetic lambda$Blacklist$8(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/leo/salt/tweaks/FragSettingActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/leo/salt/tweaks/FragSettingActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->AppProcess:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/leo/salt/tweaks/FragSettingActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/leo/salt/tweaks/FragSettingActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->Blacklist:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$Giving_Notice$27(Landroid/app/Activity;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method static synthetic lambda$Giving_Notice$28(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$GlobaInfo$21(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$GlobaInfoBoolean$22(Landroid/content/Context;Ljava/lang/String;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic lambda$LeoLogDialog$19(Landroid/content/Context;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    sget-object p1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v0, "mount -o rw,remount /data"

    invoke-virtual {p1, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v0, "mount -o rw,remount /system"

    invoke-virtual {p1, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v0, "rm -rf /sdcard/LeoTweaks/Log/leo_*.txt"

    invoke-virtual {p1, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v0, "rm -rf /sdcard/LeoTweaks/Log/*_log.zip"

    invoke-virtual {p1, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    sget-object p1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$V5qw0oVa0oJe5PpXBAfZiJ1rXSU;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$V5qw0oVa0oJe5PpXBAfZiJ1rXSU;

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method static synthetic lambda$LeoLogDialogERROR$20(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$LeoLogDialoglist$25(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "url"

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/File;

    const-string v0, "/sdcard/LeoTweaks/Log/leo_boot.txt"

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "file:///sdcard/LeoTweaks/Log/leo_boot.txt"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->LeoLogDialogERROR(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/io/File;

    const-string v0, "/sdcard/LeoTweaks/Log/leo_kernel.txt"

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "file:///sdcard/LeoTweaks/Log/leo_kernel.txt"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->LeoLogDialogERROR(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/io/File;

    const-string v0, "/sdcard/LeoTweaks/Log/leo_logcat.txt"

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "file:///sdcard/LeoTweaks/Log/leo_logcat.txt"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->LeoLogDialogERROR(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$LeoLogDialoglist$26(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$NetworkCheck$7(Landroid/app/Activity;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$PermissionHome$9(Landroid/content/Context;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "HomePermission"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    invoke-static {p0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->InternetCheckView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$RestartDialog$29(Landroid/content/Context;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 1

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    invoke-static {}, Lcom/leo/salt/tweaks/view/widget/DialogView;->Reboot()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1f4

    invoke-static {p0, p1, v0}, Lcom/leo/salt/utils/PrefUtils;->ScriptsLogClear(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$SafetyBackView$10(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method static synthetic lambda$SafetyDonateDialogView$11(Landroid/app/Activity;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->SafetyBackView(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$SafetyDonateDialogView$12(Landroid/app/Activity;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$SamsungGoodLock$2(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$SamsungGoodLock$3(Landroid/content/Context;Ljava/lang/String;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p2}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    invoke-static {p0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->goToMainAppsMarketQQ(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$ScienceHttp$4(Landroid/content/Context;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 1

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://t.me/joinchat/EJAScg_-vxG8Ppj2HvUifw"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$WebDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$checkOTAinfo$14(Landroid/app/Activity;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$checkUpdateError$13(Landroid/app/Activity;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$dialogCheck$15(Landroid/widget/CheckBox;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "checked"

    goto :goto_0

    :cond_0
    const-string p0, "NOT checked"

    :goto_0
    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic lambda$initInfoView$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$intCodeViewDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$joinQQGroup$1(Landroid/content/Context;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    const-string p1, "com.tencent.mobileqq"

    invoke-static {p0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->goToMainAppsMarketQQ(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$linkCountDialog$30(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/FactoryApp/epen_count"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v0, "earjack_count"

    const-string v1, "batt_cable_count"

    if-eqz p0, :cond_0

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->m99855(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->m99855(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "epen_count"

    invoke-static {p0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->m99855(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->m99855(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->m99855(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic lambda$null$16(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    sget-object p0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v0, "reboot"

    invoke-virtual {p0, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$null$18(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$patcS10$23(Landroid/app/Activity;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    const/16 p1, 0x7d4

    invoke-static {p0, p1}, Lcom/os/salt/globalactions/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic lambda$showNormalDialog$24(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static linkCountDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    invoke-static {}, Lcom/leo/salt/tweaks/view/widget/DialogView;->getefs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    sget-object p1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$ZyoFxXFmWIA_A8OpK4mEJCL4NnA;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$ZyoFxXFmWIA_A8OpK4mEJCL4NnA;

    invoke-virtual {p0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method static m99855(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod -R 0600 /efs/FactoryApp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m99955(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod -R 0604 /efs/FactoryApp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static patcS10(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-static {v2}, Lcom/os/salt/OSBuild$SystemUrl;->FloatingFature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8fdb\u5165TWRP\u65b9\u6cd5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const-string v1, "\u5728\u624b\u673a\u91cd\u542f\u7684\u540c\u65f6\u6309\u4f4f\n[\u97f3\u91cf+\u952e-Bixby\u952e-\u7535\u6e90\u952e]\u4e09\u952e\u540c\u65f6\u6309\u4f4f\n\u76f4\u81f3\u8fdb\u5165TWRP\u754c\u9762\u677e\u5f00\u5373\u53ef\n\n\u5982\u679c\u4f60\u5df2\u7ecf\u660e\u767d\u70b9\u51fb[\u786e\u5b9a]\u5f00\u59cb\u6267\u884c"

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$C5-xYOYNHZpAL-YneNda2OnL-Gw;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$C5-xYOYNHZpAL-YneNda2OnL-Gw;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static shareMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "image/jpg"

    invoke-virtual {v0, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p4

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p4, "text/plain"

    invoke-virtual {v0, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_1
    const-string p4, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showNormalDialog(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "kernel_info_no"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$voHfcsNWzN7zo_u0JB6jY48BK1Q;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$voHfcsNWzN7zo_u0JB6jY48BK1Q;-><init>(Landroid/app/Activity;)V

    const p0, 0x104000a

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
