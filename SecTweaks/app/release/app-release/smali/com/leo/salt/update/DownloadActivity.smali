.class public Lcom/leo/salt/update/DownloadActivity;
.super Lcom/leo/salt/base/BaseActivity;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/update/DownloadActivity$MyTask;,
        Lcom/leo/salt/update/DownloadActivity$OTAanalysis;
    }
.end annotation


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private downloadBinder:Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/salt/update/FQ;",
            ">;"
        }
    .end annotation
.end field

.field private lv_main_list:Landroid/widget/ListView;

.field private myAdapter:Lcom/leo/salt/update/DownloadActivity$OTAanalysis;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/update/DownloadActivity;->lists:Ljava/util/List;

    new-instance v0, Lcom/leo/salt/update/DownloadActivity$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/update/DownloadActivity$1;-><init>(Lcom/leo/salt/update/DownloadActivity;)V

    iput-object v0, p0, Lcom/leo/salt/update/DownloadActivity;->connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/update/DownloadActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->lists:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leo/salt/update/DownloadActivity;)Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->downloadBinder:Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/leo/salt/update/DownloadActivity;Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;)Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/DownloadActivity;->downloadBinder:Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/leo/salt/update/DownloadActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/update/DownloadActivity;->checkOTAInfo(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/leo/salt/update/DownloadActivity;)Lcom/leo/salt/update/DownloadActivity$OTAanalysis;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/update/DownloadActivity;->myAdapter:Lcom/leo/salt/update/DownloadActivity$OTAanalysis;

    return-object p0
.end method

.method private checkNetworkInf0()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/update/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->hasNetWork(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\ud83d\ude13\ud83d\ude13\ud83d\ude13\ud83d\ude13"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1002af

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u6211\u77e5\u9053\u4e86"

    new-instance v3, Lcom/leo/salt/update/DownloadActivity$2;

    invoke-direct {v3, p0}, Lcom/leo/salt/update/DownloadActivity$2;-><init>(Lcom/leo/salt/update/DownloadActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/update/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->hasNetWork(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\ud83d\ude31\ud83d\ude31\ud83d\ude31\ud83d\ude31"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1002ae

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1002bf

    new-instance v3, Lcom/leo/salt/update/DownloadActivity$4;

    invoke-direct {v3, p0}, Lcom/leo/salt/update/DownloadActivity$4;-><init>(Lcom/leo/salt/update/DownloadActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f10043e

    new-instance v3, Lcom/leo/salt/update/DownloadActivity$3;

    invoke-direct {v3, p0}, Lcom/leo/salt/update/DownloadActivity$3;-><init>(Lcom/leo/salt/update/DownloadActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/leo/salt/update/DownloadActivity;->checkOTAInfo(Z)V

    :goto_0
    return-void
.end method

.method private checkOTAInfo(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/update/DownloadActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object p1, p0, Lcom/leo/salt/update/DownloadActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100420

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/leo/salt/update/DownloadActivity$MyTask;

    invoke-direct {p1, p0}, Lcom/leo/salt/update/DownloadActivity$MyTask;-><init>(Lcom/leo/salt/update/DownloadActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/leo/salt/update/DownloadActivity$MyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public OTA()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/DownloadActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/leo/salt/update/DownloadActivity;->getDownload(Landroid/app/Activity;)V

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

    const-string v0, "/Android/ota"

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

    invoke-virtual {p0, v0}, Lcom/leo/salt/update/DownloadActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/leo/salt/update/DownloadActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getDownload(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1002da

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/leo/salt/update/DownloadActivity$5;

    invoke-direct {v1, p0}, Lcom/leo/salt/update/DownloadActivity$5;-><init>(Lcom/leo/salt/update/DownloadActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0022

    return v0
.end method

.method protected initStatusBarColor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/DownloadActivity;->downloadBinder:Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090054

    if-eq p1, v0, :cond_3

    const v0, 0x7f09012e

    if-eq p1, v0, :cond_2

    const v0, 0x7f09017f

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/update/DownloadActivity;->OTA()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/update/DownloadActivity;->downloadBinder:Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    invoke-virtual {p1}, Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;->pauseDownload()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/update/DownloadActivity;->downloadBinder:Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    invoke-virtual {p1}, Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;->cancelDownload()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0900ed

    invoke-virtual {p0, p1}, Lcom/leo/salt/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/leo/salt/update/DownloadActivity;->lv_main_list:Landroid/widget/ListView;

    new-instance p1, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;

    invoke-direct {p1, p0}, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;-><init>(Lcom/leo/salt/update/DownloadActivity;)V

    iput-object p1, p0, Lcom/leo/salt/update/DownloadActivity;->myAdapter:Lcom/leo/salt/update/DownloadActivity$OTAanalysis;

    iget-object p1, p0, Lcom/leo/salt/update/DownloadActivity;->lv_main_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/leo/salt/update/DownloadActivity;->myAdapter:Lcom/leo/salt/update/DownloadActivity$OTAanalysis;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f0901a5

    invoke-virtual {p0, p1}, Lcom/leo/salt/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/leo/salt/update/DownloadActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/update/DownloadActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f10041f

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/leo/salt/update/DownloadActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-static {p0}, Lcom/leo/salt/theme/Utils;->StatusBarColor(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/leo/salt/update/DownloadActivity;->createSDCardDirimg()V

    const p1, 0x7f09017f

    invoke-virtual {p0, p1}, Lcom/leo/salt/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v1, 0x7f09012e

    invoke-virtual {p0, v1}, Lcom/leo/salt/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f090054

    invoke-virtual {p0, v2}, Lcom/leo/salt/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/leo/salt/utils/root/DownloadService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/update/DownloadActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/leo/salt/update/DownloadActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v1, v0}, Lcom/leo/salt/update/DownloadActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/update/DownloadActivity;->checkNetworkInf0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/leo/salt/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/leo/salt/update/DownloadActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/leo/salt/update/DownloadActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/update/DownloadActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p2, p3, p1

    if-eqz p2, :cond_1

    const-string p2, "\u6743\u9650\u88ab\u62d2\u7edd\uff0c\u65e0\u6cd5\u4f7f\u7528\u7a0b\u5e8f"

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/leo/salt/update/DownloadActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
