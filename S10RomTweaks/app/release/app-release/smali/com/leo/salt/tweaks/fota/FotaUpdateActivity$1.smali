.class Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$1;
.super Ljava/lang/Object;
.source "FotaUpdateActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$1;->this$0:Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$1;->this$0:Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;

    check-cast p2, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;

    invoke-static {p1, p2}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->access$002(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;)Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
