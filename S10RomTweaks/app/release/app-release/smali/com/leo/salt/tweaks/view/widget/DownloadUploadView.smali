.class public abstract Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;
.super Ljava/lang/Object;
.source "DownloadUploadView.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mDownloadManger:Lcom/leo/download/provider/download/DownloadManger;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Leo Download Tasks"

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->TAG:Ljava/lang/String;

    return-void
.end method

.method private DownloadTwiceUpload(Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 1

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->acquireWakeLock()V

    invoke-static {p1}, Lcom/leo/download/provider/DUtil;->init(Landroid/content/Context;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->initDownloadTwiceUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DBuilder;->url(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->initDownloadpath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DBuilder;->path(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->initDownloadName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DBuilder;->name(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->initDownloadTaskCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DBuilder;->childTaskCount(I)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/download/provider/download/DBuilder;->build()Lcom/leo/download/provider/download/DownloadManger;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;

    invoke-direct {v0, p0, p2}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;-><init>(Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;Landroid/app/ProgressDialog;)V

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DownloadManger;->start(Lcom/leo/download/provider/callback/DownloadCallback;)Lcom/leo/download/provider/download/DownloadManger;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mDownloadManger:Lcom/leo/download/provider/download/DownloadManger;

    return-void
.end method

.method private DownloadUpload(Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 1

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->acquireWakeLock()V

    invoke-static {p1}, Lcom/leo/download/provider/DUtil;->init(Landroid/content/Context;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->initDownloadUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DBuilder;->url(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->initDownloadpath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DBuilder;->path(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->initDownloadName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DBuilder;->name(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->initDownloadTaskCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DBuilder;->childTaskCount(I)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/download/provider/download/DBuilder;->build()Lcom/leo/download/provider/download/DownloadManger;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$1;

    invoke-direct {v0, p0, p2}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$1;-><init>(Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;Landroid/app/ProgressDialog;)V

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DownloadManger;->start(Lcom/leo/download/provider/callback/DownloadCallback;)Lcom/leo/download/provider/download/DownloadManger;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mDownloadManger:Lcom/leo/download/provider/download/DownloadManger;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->DownloadTwiceUpload(Landroid/content/Context;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x20000001

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method


# virtual methods
.method public DownloadToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public DownloadView(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100054

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->initProgressName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->createSDCardDupdateirimg()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->DownloadUpload(Landroid/content/Context;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method protected abstract initDownloadName()Ljava/lang/String;
.end method

.method protected abstract initDownloadSuccess(Ljava/io/File;)V
.end method

.method protected abstract initDownloadTaskCount()I
.end method

.method protected abstract initDownloadTwiceUri()Ljava/lang/String;
.end method

.method protected abstract initDownloadUri()Ljava/lang/String;
.end method

.method protected abstract initDownloadpath()Ljava/lang/String;
.end method

.method protected abstract initProgressName()Ljava/lang/String;
.end method

.method protected intDownload(Ljava/io/File;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->initDownloadSuccess(Ljava/io/File;)V

    return-void
.end method
