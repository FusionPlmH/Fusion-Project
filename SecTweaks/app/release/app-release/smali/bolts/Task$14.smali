.class final Lbolts/Task$14;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeImmediately(Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$task:Lbolts/Task;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V
    .locals 0

    iput-object p1, p0, Lbolts/Task$14;->val$ct:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$14;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$14;->val$task:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbolts/Task$14;->val$ct:Lbolts/CancellationToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbolts/Task$14;->val$continuation:Lbolts/Continuation;

    iget-object v1, p0, Lbolts/Task$14;->val$task:Lbolts/Task;

    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    :goto_0
    return-void
.end method
