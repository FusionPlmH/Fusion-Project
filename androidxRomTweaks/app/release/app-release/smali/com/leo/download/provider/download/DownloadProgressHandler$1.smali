.class Lcom/leo/download/provider/download/DownloadProgressHandler$1;
.super Landroid/os/Handler;
.source "DownloadProgressHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/download/provider/download/DownloadProgressHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;


# direct methods
.method constructor <init>(Lcom/leo/download/provider/download/DownloadProgressHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$000(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$002(Lcom/leo/download/provider/download/DownloadProgressHandler;I)I

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$100(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/data/DownloadData;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$000(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/leo/download/provider/data/DownloadData;->setStatus(I)V

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$000(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v1

    const/16 v2, 0x1005

    const/16 v3, 0x1003

    const/16 v4, 0x1008

    const/4 v5, 0x0

    if-eq v1, v2, :cond_e

    const/16 v0, 0x1010

    if-eq v1, v0, :cond_c

    const/16 v0, 0x1007

    if-eq v1, v0, :cond_a

    if-eq v1, v4, :cond_8

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$400(Lcom/leo/download/provider/download/DownloadProgressHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$900(Lcom/leo/download/provider/download/DownloadProgressHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/download/provider/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/db/Db;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/leo/download/provider/utils/Utils;->getPercentage(II)F

    move-result v1

    iget-object v2, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$600(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/leo/download/provider/db/Db;->updateProgress(IFILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1208(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$500(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/leo/download/provider/callback/DownloadCallback;->onPause()V

    :cond_1
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1, v5}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1202(Lcom/leo/download/provider/download/DownloadProgressHandler;I)I

    :cond_2
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    iget-object v2, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v2

    iget p1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$302(Lcom/leo/download/provider/download/DownloadProgressHandler;I)I

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$100(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/data/DownloadData;

    move-result-object p1

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/leo/download/provider/utils/Utils;->getPercentage(II)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/leo/download/provider/data/DownloadData;->setPercentage(F)V

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1100(Lcom/leo/download/provider/download/DownloadProgressHandler;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x14

    cmp-long p1, v1, v3

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v1

    if-ne p1, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object v1

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    int-to-long v2, p1

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    int-to-long v4, p1

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    iget-object v6, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v6}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v6

    invoke-static {p1, v6}, Lcom/leo/download/provider/utils/Utils;->getPercentage(II)F

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/leo/download/provider/callback/DownloadCallback;->onProgress(JJF)V

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1102(Lcom/leo/download/provider/download/DownloadProgressHandler;J)J

    :cond_4
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v1

    if-ne p1, v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->sendEmptyMessage(I)Z

    :cond_5
    monitor-exit p0

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    const-string v1, "totalLength"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$202(Lcom/leo/download/provider/download/DownloadProgressHandler;I)I

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    const-string v1, "currentLength"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$302(Lcom/leo/download/provider/download/DownloadProgressHandler;I)I

    const-string v0, "lastModify"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    const-string v1, "isSupportRange"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$402(Lcom/leo/download/provider/download/DownloadProgressHandler;Z)Z

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$400(Lcom/leo/download/provider/download/DownloadProgressHandler;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$502(Lcom/leo/download/provider/download/DownloadProgressHandler;I)I

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$900(Lcom/leo/download/provider/download/DownloadProgressHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/download/provider/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/db/Db;

    move-result-object p1

    new-instance v0, Lcom/leo/download/provider/data/DownloadData;

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$600(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$700(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$500(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v4

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$800(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v6

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/leo/download/provider/data/DownloadData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;J)V

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/db/Db;->insertData(Lcom/leo/download/provider/data/DownloadData;)V

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object v0

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    int-to-long v3, p1

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    iget-object v5, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v5}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v5

    invoke-static {p1, v5}, Lcom/leo/download/provider/utils/Utils;->getPercentage(II)F

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/leo/download/provider/callback/DownloadCallback;->onStart(JJF)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$400(Lcom/leo/download/provider/download/DownloadProgressHandler;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$900(Lcom/leo/download/provider/download/DownloadProgressHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/download/provider/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/db/Db;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v2

    iget-object v3, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v3}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/leo/download/provider/utils/Utils;->getPercentage(II)F

    move-result v2

    iget-object v3, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v3}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$600(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/leo/download/provider/db/Db;->updateProgress(IFILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/leo/download/provider/callback/DownloadCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$400(Lcom/leo/download/provider/download/DownloadProgressHandler;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$700(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$800(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/leo/download/provider/utils/Utils;->deleteFile(Ljava/io/File;)Z

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$900(Lcom/leo/download/provider/download/DownloadProgressHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/download/provider/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/db/Db;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$600(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/db/Db;->deleteData(Ljava/lang/String;)V

    :cond_b
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$700(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$800(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/leo/download/provider/callback/DownloadCallback;->onFinish(Ljava/io/File;)V

    goto/16 :goto_1

    :cond_c
    monitor-enter p0

    :try_start_2
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$400(Lcom/leo/download/provider/download/DownloadProgressHandler;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$900(Lcom/leo/download/provider/download/DownloadProgressHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/download/provider/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/db/Db;

    move-result-object p1

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$300(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v2

    iget-object v3, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v3}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/leo/download/provider/utils/Utils;->getPercentage(II)F

    move-result v2

    iget-object v3, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v3}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$600(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/leo/download/provider/db/Db;->updateProgress(IFILjava/lang/String;)V

    :cond_d
    monitor-exit p0

    goto/16 :goto_1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_e
    monitor-enter p0

    :try_start_3
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1208(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$500(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result v1

    if-eq p1, v1, :cond_f

    if-eq v0, v3, :cond_f

    if-ne v0, v4, :cond_13

    :cond_f
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1, v5}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1202(Lcom/leo/download/provider/download/DownloadProgressHandler;I)I

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object v6

    const-wide/16 v7, 0x0

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$200(Lcom/leo/download/provider/download/DownloadProgressHandler;)I

    move-result p1

    int-to-long v9, p1

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/leo/download/provider/callback/DownloadCallback;->onProgress(JJF)V

    :cond_10
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1, v5}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$302(Lcom/leo/download/provider/download/DownloadProgressHandler;I)I

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$400(Lcom/leo/download/provider/download/DownloadProgressHandler;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$900(Lcom/leo/download/provider/download/DownloadProgressHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/download/provider/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/db/Db;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$600(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/db/Db;->deleteData(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$700(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v2}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$800(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/leo/download/provider/utils/Utils;->deleteFile(Ljava/io/File;)Z

    :cond_11
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$700(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$800(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/leo/download/provider/utils/Utils;->deleteFile(Ljava/io/File;)Z

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1000(Lcom/leo/download/provider/download/DownloadProgressHandler;)Lcom/leo/download/provider/callback/DownloadCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/leo/download/provider/callback/DownloadCallback;->onCancel()V

    :cond_12
    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1300(Lcom/leo/download/provider/download/DownloadProgressHandler;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1, v5}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$1302(Lcom/leo/download/provider/download/DownloadProgressHandler;Z)Z

    iget-object p1, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$900(Lcom/leo/download/provider/download/DownloadProgressHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/download/provider/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/download/DownloadManger;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/download/provider/download/DownloadProgressHandler$1;->this$0:Lcom/leo/download/provider/download/DownloadProgressHandler;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadProgressHandler;->access$600(Lcom/leo/download/provider/download/DownloadProgressHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/download/provider/download/DownloadManger;->innerRestart(Ljava/lang/String;)V

    :cond_13
    monitor-exit p0

    :cond_14
    :goto_1
    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
