.class Lcom/leo/salt/utils/root/GoogleServices$1$1$1;
.super Ljava/lang/Object;
.source "GoogleServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/root/GoogleServices$1$1;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leo/salt/utils/root/GoogleServices$1$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/root/GoogleServices$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/root/GoogleServices$1$1$1;->this$2:Lcom/leo/salt/utils/root/GoogleServices$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->OtaCode()V

    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$1$1$1;->this$2:Lcom/leo/salt/utils/root/GoogleServices$1$1;

    iget-object v0, v0, Lcom/leo/salt/utils/root/GoogleServices$1$1;->this$1:Lcom/leo/salt/utils/root/GoogleServices$1;

    iget-object v0, v0, Lcom/leo/salt/utils/root/GoogleServices$1;->Loaddialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method
