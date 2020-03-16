.class final Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;
.super Ljava/lang/Object;
.source "CheckRootStatus.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/CheckRootStatus;->forceGetRoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $completed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/CheckRootStatus;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    iput-object p2, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/CheckRootStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u6ca1\u6709ROOT\u6743\u9650"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u7b49\u5f85\u8d85\u65f6"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "ok"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2$1;-><init>(Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u9000\u51fa"

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v2, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2$2;->INSTANCE:Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2$2;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
