.class public Lcom/leo/salt/utils/root/GoogleServices;
.super Landroid/app/Service;
.source "GoogleServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;
    }
.end annotation


# instance fields
.field private downloadTask:Lcom/leo/salt/utils/root/DownloadTask;

.field private downloadUrl:Ljava/lang/String;

.field private listener:Lcom/leo/salt/utils/root/DownloadListener;

.field private mBinder:Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/leo/salt/utils/root/GoogleServices$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/utils/root/GoogleServices$1;-><init>(Lcom/leo/salt/utils/root/GoogleServices;)V

    iput-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices;->listener:Lcom/leo/salt/utils/root/DownloadListener;

    new-instance v0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;

    invoke-direct {v0, p0}, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;-><init>(Lcom/leo/salt/utils/root/GoogleServices;)V

    iput-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices;->mBinder:Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/utils/root/GoogleServices;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/utils/root/GoogleServices;->getNotification(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/utils/root/GoogleServices;)Landroid/app/NotificationManager;
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/utils/root/GoogleServices;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/utils/root/GoogleServices;)Lcom/leo/salt/utils/root/DownloadTask;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/utils/root/GoogleServices;->downloadTask:Lcom/leo/salt/utils/root/DownloadTask;

    return-object p0
.end method

.method static synthetic access$202(Lcom/leo/salt/utils/root/GoogleServices;Lcom/leo/salt/utils/root/DownloadTask;)Lcom/leo/salt/utils/root/DownloadTask;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/root/GoogleServices;->downloadTask:Lcom/leo/salt/utils/root/DownloadTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/leo/salt/utils/root/GoogleServices;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/utils/root/GoogleServices;->downloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/leo/salt/utils/root/GoogleServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/root/GoogleServices;->downloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/leo/salt/utils/root/GoogleServices;)Lcom/leo/salt/utils/root/DownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/utils/root/GoogleServices;->listener:Lcom/leo/salt/utils/root/DownloadListener;

    return-object p0
.end method

.method private getNotification(Ljava/lang/String;I)Landroid/app/Notification;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f0e0000

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/utils/root/GoogleServices;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    if-ltz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5df2\u4e0b\u8f7d:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 p1, 0x64

    invoke-virtual {v2, p1, p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/leo/salt/utils/root/GoogleServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/utils/root/GoogleServices;->mBinder:Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;

    return-object p1
.end method
