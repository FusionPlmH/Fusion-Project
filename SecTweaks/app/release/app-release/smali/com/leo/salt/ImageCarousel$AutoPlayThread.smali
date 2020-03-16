.class Lcom/leo/salt/ImageCarousel$AutoPlayThread;
.super Ljava/lang/Thread;
.source "ImageCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/ImageCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoPlayThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/ImageCarousel;


# direct methods
.method constructor <init>(Lcom/leo/salt/ImageCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ImageCarousel$AutoPlayThread;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/ImageCarousel$AutoPlayThread;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v0}, Lcom/leo/salt/ImageCarousel;->access$500(Lcom/leo/salt/ImageCarousel;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/leo/salt/ImageCarousel$AutoPlayThread;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v0}, Lcom/leo/salt/ImageCarousel;->access$600(Lcom/leo/salt/ImageCarousel;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/leo/salt/ImageCarousel$AutoPlayThread;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v0}, Lcom/leo/salt/ImageCarousel;->access$800(Lcom/leo/salt/ImageCarousel;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/leo/salt/ImageCarousel$AutoPlayThread$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/ImageCarousel$AutoPlayThread$1;-><init>(Lcom/leo/salt/ImageCarousel$AutoPlayThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/leo/salt/ImageCarousel$AutoPlayThread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "thrad"

    const-string v1, "\u5df2\u7ecf\u662f\u505c\u6b62\u72b6\u6001\u4e86\uff0c\u6211\u8981\u9000\u51fa\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    const-string v0, "thrad"

    const-string v1, "\u5f3a\u5236\u8bf7\u6c42\u9000\u51fa\u7ebf\u7a0b"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
