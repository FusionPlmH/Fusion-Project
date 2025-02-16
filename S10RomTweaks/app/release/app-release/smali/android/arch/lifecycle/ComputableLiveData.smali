.class public abstract Landroid/arch/lifecycle/ComputableLiveData;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mInvalidationRunnable:Ljava/lang/Runnable;

.field private final mLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mRefreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/arch/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/arch/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/arch/lifecycle/ComputableLiveData$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ComputableLiveData$2;-><init>(Landroid/arch/lifecycle/ComputableLiveData;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/arch/lifecycle/ComputableLiveData$3;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ComputableLiveData$3;-><init>(Landroid/arch/lifecycle/ComputableLiveData;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ComputableLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/arch/lifecycle/ComputableLiveData;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Landroid/arch/lifecycle/ComputableLiveData$1;

    invoke-direct {p1, p0}, Landroid/arch/lifecycle/ComputableLiveData$1;-><init>(Landroid/arch/lifecycle/ComputableLiveData;)V

    iput-object p1, p0, Landroid/arch/lifecycle/ComputableLiveData;->mLiveData:Landroid/arch/lifecycle/LiveData;

    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/arch/lifecycle/ComputableLiveData;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/arch/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/arch/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Landroid/arch/lifecycle/ComputableLiveData;)Landroid/arch/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Landroid/arch/lifecycle/ComputableLiveData;->mLiveData:Landroid/arch/lifecycle/LiveData;

    return-object p0
.end method


# virtual methods
.method protected abstract compute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getLiveData()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/ComputableLiveData;->mLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/ComputableLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
