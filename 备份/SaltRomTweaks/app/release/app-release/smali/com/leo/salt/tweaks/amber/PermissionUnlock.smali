.class public Lcom/leo/salt/tweaks/amber/PermissionUnlock;
.super Landroid/app/Activity;
.source "PermissionUnlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/amber/PermissionUnlock$permissionTask;
    }
.end annotation


# static fields
.field public static final FLAG_HOMEKEY_DISPATCHED:I = -0x80000000

.field public static final UnlockName:Ljava/lang/String; = "Unlock.zip"


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field public mContext:Landroid/content/Context;

.field private mDownloadManger:Lcom/leo/salt/down/download/DownloadManger;

.field private mFileName:Landroid/widget/TextView;

.field private mPause:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarName:Landroid/widget/TextView;

.field private mProgressBartotalSize:Landroid/widget/TextView;

.field private mRestart:Landroid/widget/TextView;

.field public mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mFileName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mProgressBarName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mProgressBartotalSize:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public DownloadDialog(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/leo/salt/utils/NetUtils;->getpermissionJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mFileName:Landroid/widget/TextView;

    const-string v1, "Unlock Code"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/leo/salt/down/DUtil;->init(Landroid/content/Context;)Lcom/leo/salt/down/download/DBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/down/download/DBuilder;->url(Ljava/lang/String;)Lcom/leo/salt/down/download/DBuilder;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTADownloadPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/down/download/DBuilder;->path(Ljava/lang/String;)Lcom/leo/salt/down/download/DBuilder;

    move-result-object p1

    const-string v0, "Unlock"

    invoke-virtual {p1, v0}, Lcom/leo/salt/down/download/DBuilder;->name(Ljava/lang/String;)Lcom/leo/salt/down/download/DBuilder;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/leo/salt/down/download/DBuilder;->childTaskCount(I)Lcom/leo/salt/down/download/DBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/down/download/DBuilder;->build()Lcom/leo/salt/down/download/DownloadManger;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;-><init>(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/down/download/DownloadManger;->start(Lcom/leo/salt/down/callback/DownloadCallback;)Lcom/leo/salt/down/download/DownloadManger;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mDownloadManger:Lcom/leo/salt/down/download/DownloadManger;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090059

    if-eq p1, v0, :cond_2

    const v0, 0x7f09012a

    if-eq p1, v0, :cond_1

    const v0, 0x7f090140

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mDownloadManger:Lcom/leo/salt/down/download/DownloadManger;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/down/download/DownloadManger;->restart(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mDownloadManger:Lcom/leo/salt/down/download/DownloadManger;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/down/download/DownloadManger;->pause(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mDownloadManger:Lcom/leo/salt/down/download/DownloadManger;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/down/download/DownloadManger;->cancel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mContext:Landroid/content/Context;

    const p1, 0x7f0c008a

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->setContentView(I)V

    new-instance p1, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    const p1, 0x7f0900a0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mProgressBarName:Landroid/widget/TextView;

    const p1, 0x7f09009e

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mProgressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f0901be

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mFileName:Landroid/widget/TextView;

    const p1, 0x7f09009f

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mProgressBartotalSize:Landroid/widget/TextView;

    const p1, 0x7f090140

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mRestart:Landroid/widget/TextView;

    const p1, 0x7f09012a

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mPause:Landroid/widget/TextView;

    const p1, 0x7f090059

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mCancel:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mPause:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mCancel:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mRestart:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->DownloadDialog(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mDownloadManger:Lcom/leo/salt/down/download/DownloadManger;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leo/salt/down/download/DownloadManger;->destroy(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public showUnlockDialog()V
    .locals 4

    new-instance v0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$2;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock$2;-><init>(Lcom/leo/salt/tweaks/amber/PermissionUnlock;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock$permissionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
