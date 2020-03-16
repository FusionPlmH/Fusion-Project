.class public final Lcom/leo/salt/tools/apps/ActivityFileSelector$intSettings$1;
.super Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;
.source "ActivityFileSelector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/ActivityFileSelector;->intSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/leo/salt/tools/apps/ActivityFileSelector$intSettings$1",
        "Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;",
        "onStateChanged",
        "",
        "appBarLayout",
        "Landroid/support/design/widget/AppBarLayout;",
        "state",
        "Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;",
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
.field final synthetic this$0:Lcom/leo/salt/tools/apps/ActivityFileSelector;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/ActivityFileSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector$intSettings$1;->this$0:Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;)V
    .locals 1

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->EXPANDED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector$intSettings$1;->this$0:Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-static {p1}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->access$getMSubtitleLayout$p(Lcom/leo/salt/tools/apps/ActivityFileSelector;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->COLLAPSED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector$intSettings$1;->this$0:Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-static {p1}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->access$getMSubtitleLayout$p(Lcom/leo/salt/tools/apps/ActivityFileSelector;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector$intSettings$1;->this$0:Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-static {p1}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->access$getMSubtitleLayout$p(Lcom/leo/salt/tools/apps/ActivityFileSelector;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
