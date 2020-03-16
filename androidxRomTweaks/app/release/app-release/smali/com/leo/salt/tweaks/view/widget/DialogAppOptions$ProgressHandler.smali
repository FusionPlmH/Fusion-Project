.class public Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;
.super Landroid/os/Handler;
.source "DialogAppOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0001X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;",
        "Landroid/os/Handler;",
        "dialog",
        "Landroid/view/View;",
        "alert",
        "Landroid/app/AlertDialog;",
        "handler",
        "(Landroid/view/View;Landroid/app/AlertDialog;Landroid/os/Handler;)V",
        "getAlert",
        "()Landroid/app/AlertDialog;",
        "setAlert",
        "(Landroid/app/AlertDialog;)V",
        "error",
        "Ljava/lang/StringBuilder;",
        "getHandler",
        "()Landroid/os/Handler;",
        "setHandler",
        "(Landroid/os/Handler;)V",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "getProgressBar",
        "()Landroid/widget/ProgressBar;",
        "setProgressBar",
        "(Landroid/widget/ProgressBar;)V",
        "textView",
        "Landroid/widget/TextView;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
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
.field private alert:Landroid/app/AlertDialog;

.field private error:Ljava/lang/StringBuilder;

.field private handler:Landroid/os/Handler;

.field private progressBar:Landroid/widget/ProgressBar;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/AlertDialog;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alert"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->alert:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->handler:Landroid/os/Handler;

    const p2, 0x7f0900bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->textView:Landroid/widget/TextView;

    const p2, 0x7f0900be

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->progressBar:Landroid/widget/ProgressBar;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->error:Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->textView:Landroid/widget/TextView;

    const p2, 0x7f1003a1

    invoke-static {p2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getError$p(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->error:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static final synthetic access$setError$p(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->error:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected final getAlert()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->alert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method protected final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "msg"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->textView:Landroid/widget/TextView;

    const-string v2, "execute_wait"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->error:Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->error:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_1
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    const v4, 0x7f100095

    if-ne v2, v3, :cond_3

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->textView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->textView:Landroid/widget/TextView;

    const v2, 0x7f100093

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$1;

    invoke-direct {v2, v0}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$1;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "[operation completed]"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v2, v3, v6, v8, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->textView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$2;

    invoke-direct {v2, v0}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler$handleMessage$2;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x4b0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :cond_4
    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "^\\[.*]$"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->progressBar:Landroid/widget/ProgressBar;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "[copy "

    const-string v7, "[\u590d\u5236 "

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "[uninstall "

    const-string v13, "[\u5378\u8f7d "

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "[install "

    const-string v3, "[\u5b89\u88c5 "

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "[restore "

    const-string v9, "[\u8fd8\u539f "

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[backup "

    const-string v3, "[\u5907\u4efd "

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[unhide "

    const-string v9, "[\u663e\u793a "

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[hide "

    const-string v3, "[\u9690\u85cf "

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[delete "

    const-string v9, "[\u5220\u9664 "

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[disable "

    const-string v3, "[\u7981\u7528 "

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[enable "

    const-string v9, "[\u542f\u7528 "

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[trim caches "

    const-string v3, "[\u6e05\u9664\u7f13\u5b58 "

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[clear "

    const-string v9, "[\u6e05\u9664\u6570\u636e "

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[skip "

    const-string v3, "[\u8df3\u8fc7 "

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[link "

    const-string v9, "[\u94fe\u63a5 "

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[compile "

    const-string v3, "[\u7f16\u8bd1 "

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->textView:Landroid/widget/TextView;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected final setAlert(Landroid/app/AlertDialog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->alert:Landroid/app/AlertDialog;

    return-void
.end method

.method protected final setHandler(Landroid/os/Handler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$ProgressHandler;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method
