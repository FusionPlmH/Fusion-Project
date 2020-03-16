.class Lcom/leo/salt/update/DownloadActivity$1;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/update/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/update/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/update/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/DownloadActivity$1;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/update/DownloadActivity$1;->this$0:Lcom/leo/salt/update/DownloadActivity;

    check-cast p2, Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    invoke-static {p1, p2}, Lcom/leo/salt/update/DownloadActivity;->access$1002(Lcom/leo/salt/update/DownloadActivity;Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;)Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
