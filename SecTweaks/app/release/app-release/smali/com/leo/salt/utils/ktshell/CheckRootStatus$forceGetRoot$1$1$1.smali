.class final Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1$1;
.super Ljava/lang/Object;
.source "CheckRootStatus.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1;->run()V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.topjohnwu.magisk"

    const-string v0, "a.b"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "eu.chainfire.supersu"

    const-string v0, "eu.chainfire.supersu.MainActivity"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
