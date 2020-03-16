.class final Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;
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

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    sget v0, Lcom/leo/salt/R$id;->raminfo_text:I

    invoke-virtual {p1, v0}, Lcom/leo/salt/kt/FragmentPerformance;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "raminfo_text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u6b63\u5728\u6e05\u7406"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;-><init>(Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
