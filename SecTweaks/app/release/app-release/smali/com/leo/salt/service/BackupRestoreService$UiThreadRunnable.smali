.class Lcom/leo/salt/service/BackupRestoreService$UiThreadRunnable;
.super Ljava/lang/Object;
.source "BackupRestoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/service/BackupRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiThreadRunnable"
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/service/BackupRestoreService;


# direct methods
.method constructor <init>(Lcom/leo/salt/service/BackupRestoreService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/service/BackupRestoreService$UiThreadRunnable;->this$0:Lcom/leo/salt/service/BackupRestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/service/BackupRestoreService$UiThreadRunnable;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/service/BackupRestoreService$UiThreadRunnable;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
