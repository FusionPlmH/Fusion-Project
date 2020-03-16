.class final Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1$1;
.super Ljava/lang/Object;
.source "FragmentPerformance.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;->run()V
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
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;

    iget-object v0, v0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;

    iget-object v0, v0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    invoke-virtual {v0}, Lcom/leo/salt/kt/FragmentPerformance;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/16 v0, 0x400

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v3, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;

    iget-object v3, v3, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;

    iget-object v3, v3, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    sget v6, Lcom/leo/salt/R$id;->raminfo:I

    invoke-virtual {v3, v6}, Lcom/leo/salt/kt/FragmentPerformance;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/leo/salt/widget/ProgressBarView;

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/leo/salt/widget/ProgressBarView;->setData(FF)V

    iget-wide v7, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v7, v4

    long-to-float v1, v7

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;

    iget-object v2, v2, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;

    iget-object v2, v2, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    invoke-virtual {v2}, Lcom/leo/salt/kt/FragmentPerformance;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u7f13\u5b58\u5df2\u6e05\u7406"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;

    iget-object v2, v2, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;

    iget-object v2, v2, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    sget v3, Lcom/leo/salt/R$id;->raminfo_text:I

    invoke-virtual {v2, v3}, Lcom/leo/salt/kt/FragmentPerformance;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "raminfo_text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MB / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "MB"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;

    iget-object v0, v0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;

    iget-object v0, v0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    sget v2, Lcom/leo/salt/R$id;->raminfo:I

    invoke-virtual {v0, v2}, Lcom/leo/salt/kt/FragmentPerformance;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/widget/ProgressBarView;

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Lcom/leo/salt/widget/ProgressBarView;->setData(FF)V

    return-void

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
