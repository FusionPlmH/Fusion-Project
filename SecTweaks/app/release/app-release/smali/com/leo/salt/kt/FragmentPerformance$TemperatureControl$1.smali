.class final Lcom/leo/salt/kt/FragmentPerformance$TemperatureControl$1;
.super Ljava/lang/Object;
.source "FragmentPerformance.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/kt/FragmentPerformance;->TemperatureControl()V
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

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentPerformance$TemperatureControl$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/leo/salt/utils/ktshell/ThermalAddin;

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentPerformance$TemperatureControl$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    invoke-virtual {v0}, Lcom/leo/salt/kt/FragmentPerformance;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p1, v0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->showOption()V

    return-void
.end method
