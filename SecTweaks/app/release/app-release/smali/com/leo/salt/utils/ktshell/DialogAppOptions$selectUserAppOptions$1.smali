.class final Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;
.super Ljava/lang/Object;
.source "DialogAppOptions.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/DialogAppOptions;->selectUserAppOptions()V
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
        "which",
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
.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/DialogAppOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->hideAll()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->enableAll()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->disableAll()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->trimCachesAll()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->clearAll()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->uninstallKeepDataAll()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->uninstallAll()V

    goto :goto_0

    :pswitch_7
    iget-object p2, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->backupAll(ZZ)V

    goto :goto_0

    :pswitch_8
    iget-object p2, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$selectUserAppOptions$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p2, p1, p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->backupAll(ZZ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
