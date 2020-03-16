.class final Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$backupAll$1;
.super Ljava/lang/Object;
.source "DialogAppOptions.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;->backupAll(ZZ)V
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
.field final synthetic $apk:Z

.field final synthetic $data:Z

.field final synthetic this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$backupAll$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;

    iput-boolean p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$backupAll$1;->$apk:Z

    iput-boolean p3, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$backupAll$1;->$data:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$backupAll$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;

    iget-boolean v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$backupAll$1;->$apk:Z

    iget-boolean v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$backupAll$1;->$data:Z

    invoke-static {v0, v1, v2}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;->access$_backupAll(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;ZZ)V

    return-void
.end method
