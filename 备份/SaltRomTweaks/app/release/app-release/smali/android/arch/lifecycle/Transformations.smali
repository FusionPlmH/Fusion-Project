.class public Landroid/arch/lifecycle/Transformations;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static map(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TX;>;",
            "Landroid/arch/core/util/Function<",
            "TX;TY;>;)",
            "Landroid/arch/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    new-instance v0, Landroid/arch/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MediatorLiveData;-><init>()V

    new-instance v1, Landroid/arch/lifecycle/Transformations$1;

    invoke-direct {v1, v0, p1}, Landroid/arch/lifecycle/Transformations$1;-><init>(Landroid/arch/lifecycle/MediatorLiveData;Landroid/arch/core/util/Function;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MediatorLiveData;->addSource(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    return-object v0
.end method

.method public static switchMap(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TX;>;",
            "Landroid/arch/core/util/Function<",
            "TX;",
            "Landroid/arch/lifecycle/LiveData<",
            "TY;>;>;)",
            "Landroid/arch/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    new-instance v0, Landroid/arch/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MediatorLiveData;-><init>()V

    new-instance v1, Landroid/arch/lifecycle/Transformations$2;

    invoke-direct {v1, p1, v0}, Landroid/arch/lifecycle/Transformations$2;-><init>(Landroid/arch/core/util/Function;Landroid/arch/lifecycle/MediatorLiveData;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MediatorLiveData;->addSource(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    return-object v0
.end method
