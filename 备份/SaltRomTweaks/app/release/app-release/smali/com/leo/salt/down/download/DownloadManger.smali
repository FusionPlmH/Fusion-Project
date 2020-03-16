.class public Lcom/leo/salt/down/download/DownloadManger;
.super Ljava/lang/Object;
.source "DownloadManger.java"


# static fields
.field private static volatile downloadManager:Lcom/leo/salt/down/download/DownloadManger;


# instance fields
.field private callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/leo/salt/down/callback/DownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private downloadData:Lcom/leo/salt/down/data/DownloadData;

.field private downloadDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/leo/salt/down/data/DownloadData;",
            ">;"
        }
    .end annotation
.end field

.field private fileTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/leo/salt/down/download/FileTask;",
            ">;"
        }
    .end annotation
.end field

.field private progressHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/leo/salt/down/download/DownloadProgressHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadDataMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->callbackMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->fileTaskMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/leo/salt/down/download/DownloadManger;->context:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized execute(Lcom/leo/salt/down/data/DownloadData;Lcom/leo/salt/down/callback/DownloadCallback;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/leo/salt/down/data/DownloadData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/leo/salt/down/data/DownloadData;->getChildTaskCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/leo/salt/down/data/DownloadData;->setChildTaskCount(I)V

    :cond_1
    new-instance v0, Lcom/leo/salt/down/download/DownloadProgressHandler;

    iget-object v1, p0, Lcom/leo/salt/down/download/DownloadManger;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/leo/salt/down/download/DownloadProgressHandler;-><init>(Landroid/content/Context;Lcom/leo/salt/down/data/DownloadData;Lcom/leo/salt/down/callback/DownloadCallback;)V

    new-instance v1, Lcom/leo/salt/down/download/FileTask;

    iget-object v2, p0, Lcom/leo/salt/down/download/DownloadManger;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/leo/salt/down/download/DownloadProgressHandler;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/leo/salt/down/download/FileTask;-><init>(Landroid/content/Context;Lcom/leo/salt/down/data/DownloadData;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/down/download/DownloadProgressHandler;->setFileTask(Lcom/leo/salt/down/download/FileTask;)V

    iget-object v2, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadDataMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/leo/salt/down/data/DownloadData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/leo/salt/down/download/DownloadManger;->callbackMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/leo/salt/down/data/DownloadData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/leo/salt/down/download/DownloadManger;->fileTaskMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/leo/salt/down/data/DownloadData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/leo/salt/down/data/DownloadData;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/leo/salt/down/download/ThreadPool;->getInstance()Lcom/leo/salt/down/download/ThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/down/download/ThreadPool;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/leo/salt/down/download/ThreadPool;->getInstance()Lcom/leo/salt/down/download/ThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/down/download/ThreadPool;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result p1

    invoke-static {}, Lcom/leo/salt/down/download/ThreadPool;->getInstance()Lcom/leo/salt/down/download/ThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/down/download/ThreadPool;->getCorePoolSize()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-interface {p2}, Lcom/leo/salt/down/callback/DownloadCallback;->onWait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/leo/salt/down/download/DownloadManger;
    .locals 2

    sget-object v0, Lcom/leo/salt/down/download/DownloadManger;->downloadManager:Lcom/leo/salt/down/download/DownloadManger;

    if-nez v0, :cond_1

    const-class v0, Lcom/leo/salt/down/download/DownloadManger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/leo/salt/down/download/DownloadManger;->downloadManager:Lcom/leo/salt/down/download/DownloadManger;

    if-nez v1, :cond_0

    new-instance v1, Lcom/leo/salt/down/download/DownloadManger;

    invoke-direct {v1, p0}, Lcom/leo/salt/down/download/DownloadManger;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/leo/salt/down/download/DownloadManger;->downloadManager:Lcom/leo/salt/down/download/DownloadManger;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/leo/salt/down/download/DownloadManger;->downloadManager:Lcom/leo/salt/down/download/DownloadManger;

    return-object p0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/down/download/DownloadManger;->innerCancel(Ljava/lang/String;Z)V

    return-void
.end method

.method public destroy(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/down/download/DownloadProgressHandler;

    invoke-virtual {v0}, Lcom/leo/salt/down/download/DownloadProgressHandler;->destroy()V

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->callbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->fileTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public varargs destroy([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/leo/salt/down/download/DownloadManger;->destroy(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAllDbData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/leo/salt/down/data/DownloadData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/down/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/db/Db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/down/db/Db;->getAllData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentData(Ljava/lang/String;)Lcom/leo/salt/down/data/DownloadData;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/down/download/DownloadProgressHandler;

    invoke-virtual {p1}, Lcom/leo/salt/down/download/DownloadProgressHandler;->getDownloadData()Lcom/leo/salt/down/data/DownloadData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDbData(Ljava/lang/String;)Lcom/leo/salt/down/data/DownloadData;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/down/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/db/Db;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/db/Db;->getData(Ljava/lang/String;)Lcom/leo/salt/down/data/DownloadData;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/leo/salt/down/data/DownloadData;

    invoke-direct {v0}, Lcom/leo/salt/down/data/DownloadData;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadData:Lcom/leo/salt/down/data/DownloadData;

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadData:Lcom/leo/salt/down/data/DownloadData;

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/data/DownloadData;->setUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadData:Lcom/leo/salt/down/data/DownloadData;

    invoke-virtual {p1, p2}, Lcom/leo/salt/down/data/DownloadData;->setPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadData:Lcom/leo/salt/down/data/DownloadData;

    invoke-virtual {p1, p3}, Lcom/leo/salt/down/data/DownloadData;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadData:Lcom/leo/salt/down/data/DownloadData;

    invoke-virtual {p1, p4}, Lcom/leo/salt/down/data/DownloadData;->setChildTaskCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public innerCancel(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/down/download/DownloadProgressHandler;

    invoke-virtual {v0}, Lcom/leo/salt/down/download/DownloadProgressHandler;->getCurrentState()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/leo/salt/down/download/ThreadPool;->getInstance()Lcom/leo/salt/down/download/ThreadPool;

    move-result-object p2

    invoke-virtual {p2}, Lcom/leo/salt/down/download/ThreadPool;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->fileTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/leo/salt/down/download/DownloadManger;->callbackMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/down/callback/DownloadCallback;

    invoke-interface {p2}, Lcom/leo/salt/down/callback/DownloadCallback;->onCancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/down/download/DownloadProgressHandler;

    invoke-virtual {v0, p2}, Lcom/leo/salt/down/download/DownloadProgressHandler;->cancel(Z)V

    :goto_0
    iget-object p2, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/leo/salt/down/download/DownloadManger;->fileTaskMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected innerRestart(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/down/data/DownloadData;

    iget-object v1, p0, Lcom/leo/salt/down/download/DownloadManger;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/down/callback/DownloadCallback;

    invoke-direct {p0, v0, p1}, Lcom/leo/salt/down/download/DownloadManger;->execute(Lcom/leo/salt/down/data/DownloadData;Lcom/leo/salt/down/callback/DownloadCallback;)V

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/down/download/DownloadProgressHandler;

    invoke-virtual {p1}, Lcom/leo/salt/down/download/DownloadProgressHandler;->pause()V

    :cond_0
    return-void
.end method

.method public restart(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/down/download/DownloadProgressHandler;

    invoke-virtual {v0}, Lcom/leo/salt/down/download/DownloadProgressHandler;->getCurrentState()I

    move-result v0

    const/16 v1, 0x1007

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->fileTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/leo/salt/down/download/DownloadManger;->innerRestart(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/leo/salt/down/download/DownloadManger;->innerRestart(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/down/download/DownloadManger;->innerCancel(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/down/download/DownloadProgressHandler;

    invoke-virtual {v0}, Lcom/leo/salt/down/download/DownloadProgressHandler;->getCurrentState()I

    move-result v0

    const/16 v1, 0x1003

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/down/download/DownloadProgressHandler;

    invoke-virtual {v0}, Lcom/leo/salt/down/download/DownloadProgressHandler;->getCurrentState()I

    move-result v0

    const/16 v1, 0x1008

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->progressHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/down/data/DownloadData;

    iget-object v1, p0, Lcom/leo/salt/down/download/DownloadManger;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/down/callback/DownloadCallback;

    invoke-direct {p0, v0, p1}, Lcom/leo/salt/down/download/DownloadManger;->execute(Lcom/leo/salt/down/data/DownloadData;Lcom/leo/salt/down/callback/DownloadCallback;)V

    :cond_1
    return-void
.end method

.method public varargs setCertificates([Ljava/io/InputStream;)V
    .locals 1

    invoke-static {}, Lcom/leo/salt/down/net/OkHttpManager;->getInstance()Lcom/leo/salt/down/net/OkHttpManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/net/OkHttpManager;->setCertificates([Ljava/io/InputStream;)V

    return-void
.end method

.method public declared-synchronized setOnDownloadCallback(Lcom/leo/salt/down/data/DownloadData;Lcom/leo/salt/down/callback/DownloadCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadDataMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/leo/salt/down/data/DownloadData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->callbackMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/leo/salt/down/data/DownloadData;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTaskPoolSize(II)V
    .locals 1

    if-le p2, p1, :cond_0

    mul-int v0, p2, p1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/leo/salt/down/download/ThreadPool;->getInstance()Lcom/leo/salt/down/download/ThreadPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/download/ThreadPool;->setCorePoolSize(I)V

    invoke-static {}, Lcom/leo/salt/down/download/ThreadPool;->getInstance()Lcom/leo/salt/down/download/ThreadPool;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/leo/salt/down/download/ThreadPool;->setMaxPoolSize(I)V

    :cond_0
    return-void
.end method

.method public start(Lcom/leo/salt/down/callback/DownloadCallback;)Lcom/leo/salt/down/download/DownloadManger;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadData:Lcom/leo/salt/down/data/DownloadData;

    invoke-direct {p0, v0, p1}, Lcom/leo/salt/down/download/DownloadManger;->execute(Lcom/leo/salt/down/data/DownloadData;Lcom/leo/salt/down/callback/DownloadCallback;)V

    sget-object p1, Lcom/leo/salt/down/download/DownloadManger;->downloadManager:Lcom/leo/salt/down/download/DownloadManger;

    return-object p1
.end method

.method public start(Lcom/leo/salt/down/data/DownloadData;Lcom/leo/salt/down/callback/DownloadCallback;)Lcom/leo/salt/down/download/DownloadManger;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/down/download/DownloadManger;->execute(Lcom/leo/salt/down/data/DownloadData;Lcom/leo/salt/down/callback/DownloadCallback;)V

    sget-object p1, Lcom/leo/salt/down/download/DownloadManger;->downloadManager:Lcom/leo/salt/down/download/DownloadManger;

    return-object p1
.end method

.method public start(Ljava/lang/String;)Lcom/leo/salt/down/download/DownloadManger;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/down/download/DownloadManger;->downloadDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/down/data/DownloadData;

    iget-object v1, p0, Lcom/leo/salt/down/download/DownloadManger;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/down/callback/DownloadCallback;

    invoke-direct {p0, v0, p1}, Lcom/leo/salt/down/download/DownloadManger;->execute(Lcom/leo/salt/down/data/DownloadData;Lcom/leo/salt/down/callback/DownloadCallback;)V

    sget-object p1, Lcom/leo/salt/down/download/DownloadManger;->downloadManager:Lcom/leo/salt/down/download/DownloadManger;

    return-object p1
.end method
