.class final Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showBackupAppOptions$1;
.super Ljava/lang/Object;
.source "DialogSingleAppOptions.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->showBackupAppOptions()V
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
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showBackupAppOptions$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showBackupAppOptions$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->access$showInMarket(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showBackupAppOptions$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->access$copyPackageName(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showBackupAppOptions$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;

    invoke-virtual {p2, p1, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->restoreAll(ZZ)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showBackupAppOptions$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;

    invoke-virtual {p1, v0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->restoreAll(ZZ)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showBackupAppOptions$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;

    invoke-virtual {p2, v0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->restoreAll(ZZ)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showBackupAppOptions$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->deleteBackupAll()V

    :goto_0
    return-void
.end method
