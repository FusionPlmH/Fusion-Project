.class final Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$2;
.super Ljava/lang/Object;
.source "FragmentPerformance.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/kt/FragmentPerformance;->onActivityCreated(Landroid/os/Bundle;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/leo/salt/kt/FragmentPerformance;


# direct methods
.method constructor <init>(Lcom/leo/salt/kt/FragmentPerformance;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$2;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$2;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    invoke-static {p1}, Lcom/leo/salt/kt/FragmentPerformance;->access$getModeList$p(Lcom/leo/salt/kt/FragmentPerformance;)Lcom/leo/salt/utils/ktshell/ModeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/ModeList;->getDEFAULT$app_release()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$2;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    const v2, 0x7f1002ec

    invoke-virtual {v1, v2}, Lcom/leo/salt/kt/FragmentPerformance;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.power_change_default)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/leo/salt/kt/FragmentPerformance;->access$installConfig(Lcom/leo/salt/kt/FragmentPerformance;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
