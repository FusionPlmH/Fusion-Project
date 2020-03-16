.class public Lcom/leo/download/provider/download/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/download/provider/download/ThreadPool$SingletonHolder;
    }
.end annotation


# instance fields
.field private CORE_POOL_SIZE:I

.field private CPU_COUNT:I

.field private KEEP_ALIVE:J

.field private MAX_POOL_SIZE:I

.field private THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lcom/leo/download/provider/download/ThreadPool;->CPU_COUNT:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/leo/download/provider/download/ThreadPool;->CORE_POOL_SIZE:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/leo/download/provider/download/ThreadPool;->MAX_POOL_SIZE:I

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/leo/download/provider/download/ThreadPool;->KEEP_ALIVE:J

    new-instance v0, Lcom/leo/download/provider/download/ThreadPool$1;

    invoke-direct {v0, p0}, Lcom/leo/download/provider/download/ThreadPool$1;-><init>(Lcom/leo/download/provider/download/ThreadPool;)V

    iput-object v0, p0, Lcom/leo/download/provider/download/ThreadPool;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/leo/download/provider/download/ThreadPool$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/download/provider/download/ThreadPool;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/leo/download/provider/download/ThreadPool;
    .locals 1

    invoke-static {}, Lcom/leo/download/provider/download/ThreadPool$SingletonHolder;->access$000()Lcom/leo/download/provider/download/ThreadPool;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCorePoolSize()I
    .locals 1

    iget v0, p0, Lcom/leo/download/provider/download/ThreadPool;->CORE_POOL_SIZE:I

    return v0
.end method

.method public getMaxPoolSize()I
    .locals 1

    iget v0, p0, Lcom/leo/download/provider/download/ThreadPool;->MAX_POOL_SIZE:I

    return v0
.end method

.method public getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    iget-object v0, p0, Lcom/leo/download/provider/download/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/leo/download/provider/download/ThreadPool;->CORE_POOL_SIZE:I

    iget v3, p0, Lcom/leo/download/provider/download/ThreadPool;->MAX_POOL_SIZE:I

    iget-wide v4, p0, Lcom/leo/download/provider/download/ThreadPool;->KEEP_ALIVE:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iget-object v8, p0, Lcom/leo/download/provider/download/ThreadPool;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/leo/download/provider/download/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Lcom/leo/download/provider/download/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public setCorePoolSize(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/leo/download/provider/download/ThreadPool;->CORE_POOL_SIZE:I

    return-void
.end method

.method public setMaxPoolSize(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/leo/download/provider/download/ThreadPool;->MAX_POOL_SIZE:I

    return-void
.end method
