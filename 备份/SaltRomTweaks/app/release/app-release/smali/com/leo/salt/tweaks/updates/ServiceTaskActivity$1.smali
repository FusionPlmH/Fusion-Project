.class Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$1;
.super Ljava/lang/Object;
.source "ServiceTaskActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$1;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$1;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    check-cast p2, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    invoke-static {p1, p2}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->access$002(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;)Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
