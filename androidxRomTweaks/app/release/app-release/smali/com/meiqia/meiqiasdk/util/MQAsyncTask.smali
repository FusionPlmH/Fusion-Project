.class public abstract Lcom/meiqia/meiqiasdk/util/MQAsyncTask;
.super Landroid/os/AsyncTask;
.source "MQAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQAsyncTask;->mCallback:Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;

    return-void
.end method


# virtual methods
.method public final cancelTask()V
    .locals 2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQAsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQAsyncTask;->mCallback:Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;->onTaskCancelled()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQAsyncTask;->mCallback:Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;

    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQAsyncTask;->mCallback:Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/meiqia/meiqiasdk/util/MQAsyncTask$Callback;->onPostExecute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
