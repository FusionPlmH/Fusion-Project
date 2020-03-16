.class Lcom/leo/salt/update/DownloadActivity$3;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/update/DownloadActivity;->checkNetworkInf0()V
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

    iput-object p1, p0, Lcom/leo/salt/update/DownloadActivity$3;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/leo/salt/update/DownloadActivity$3;->this$0:Lcom/leo/salt/update/DownloadActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/leo/salt/update/DownloadActivity;->access$1100(Lcom/leo/salt/update/DownloadActivity;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
