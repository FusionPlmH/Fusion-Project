.class public Lcom/android/systemui/statusbar/policy/IconLoggerImpl;
.super Ljava/lang/Object;
.source "IconLoggerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IconLogger;


# static fields
.field protected static MIN_LOG_INTERVAL:J = 0x3e8L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcons:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLog:J

.field private final mLog:Ljava/lang/Runnable;

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLastLog:J

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$IconLoggerImpl$R-UnLK2IlCvdUfqG-_mI_-TEpe4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$IconLoggerImpl$R-UnLK2IlCvdUfqG-_mI_-TEpe4;-><init>(Lcom/android/systemui/statusbar/policy/IconLoggerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    aget-object p2, p2, p1

    aput-object p2, p3, p1

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIconIndex:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->doLog()V

    return-void
.end method

.method private doLog()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLastLog:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLastLog:J

    return-void
.end method

.method private getBitField(Landroid/util/ArraySet;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$R-UnLK2IlCvdUfqG-_mI_-TEpe4(Lcom/android/systemui/statusbar/policy/IconLoggerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->doLog()V

    return-void
.end method


# virtual methods
.method public onIconHidden(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onIconShown(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic onIconVisibility(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/IconLogger$-CC;->$default$onIconVisibility(Lcom/android/systemui/statusbar/policy/IconLogger;Ljava/lang/String;Z)V

    return-void
.end method
