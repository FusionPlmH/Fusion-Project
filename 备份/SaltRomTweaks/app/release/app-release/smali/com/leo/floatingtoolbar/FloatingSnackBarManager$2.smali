.class Lcom/leo/floatingtoolbar/FloatingSnackBarManager$2;
.super Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
.source "FloatingSnackBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/floatingtoolbar/FloatingSnackBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
        "Landroid/support/design/widget/Snackbar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/floatingtoolbar/FloatingSnackBarManager;


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingSnackBarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager$2;->this$0:Lcom/leo/floatingtoolbar/FloatingSnackBarManager;

    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    iget-object p2, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager$2;->this$0:Lcom/leo/floatingtoolbar/FloatingSnackBarManager;

    iget-object p2, p2, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {p2}, Lcom/leo/floatingtoolbar/FloatingToolbar;->dispatchHide()V

    invoke-virtual {p1, p0}, Landroid/support/design/widget/Snackbar;->removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Landroid/support/design/widget/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager$2;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    return-void
.end method
