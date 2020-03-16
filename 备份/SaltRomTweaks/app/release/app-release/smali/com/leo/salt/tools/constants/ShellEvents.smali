.class public Lcom/leo/salt/tools/constants/ShellEvents;
.super Ljava/lang/Object;
.source "ShellEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/leo/salt/tools/constants/ShellEvents;",
        "",
        "()V",
        "PROCESS_EVENT_CONTENT",
        "",
        "getPROCESS_EVENT_CONTENT",
        "()I",
        "setPROCESS_EVENT_CONTENT",
        "(I)V",
        "PROCESS_EVENT_ERROR_CONTENT",
        "getPROCESS_EVENT_ERROR_CONTENT",
        "setPROCESS_EVENT_ERROR_CONTENT",
        "PROCESS_EVENT_EXIT",
        "getPROCESS_EVENT_EXIT",
        "setPROCESS_EVENT_EXIT",
        "PROCESS_EVENT_STAR",
        "getPROCESS_EVENT_STAR",
        "setPROCESS_EVENT_STAR",
        "processHandler",
        "Landroid/os/Handler;",
        "getProcessHandler",
        "()Landroid/os/Handler;",
        "setProcessHandler",
        "(Landroid/os/Handler;)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private PROCESS_EVENT_CONTENT:I

.field private PROCESS_EVENT_ERROR_CONTENT:I

.field private PROCESS_EVENT_EXIT:I

.field private PROCESS_EVENT_STAR:I

.field private processHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_CONTENT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_ERROR_CONTENT:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_EXIT:I

    return-void
.end method


# virtual methods
.method public final getPROCESS_EVENT_CONTENT()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_CONTENT:I

    return v0
.end method

.method public final getPROCESS_EVENT_ERROR_CONTENT()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_ERROR_CONTENT:I

    return v0
.end method

.method public final getPROCESS_EVENT_EXIT()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_EXIT:I

    return v0
.end method

.method public final getPROCESS_EVENT_STAR()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_STAR:I

    return v0
.end method

.method protected final getProcessHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/ShellEvents;->processHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final setPROCESS_EVENT_CONTENT(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_CONTENT:I

    return-void
.end method

.method public final setPROCESS_EVENT_ERROR_CONTENT(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_ERROR_CONTENT:I

    return-void
.end method

.method public final setPROCESS_EVENT_EXIT(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_EXIT:I

    return-void
.end method

.method public final setPROCESS_EVENT_STAR(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/tools/constants/ShellEvents;->PROCESS_EVENT_STAR:I

    return-void
.end method

.method protected final setProcessHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/ShellEvents;->processHandler:Landroid/os/Handler;

    return-void
.end method
