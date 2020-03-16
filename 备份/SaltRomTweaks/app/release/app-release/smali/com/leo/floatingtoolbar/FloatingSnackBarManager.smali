.class Lcom/leo/floatingtoolbar/FloatingSnackBarManager;
.super Ljava/lang/Object;
.source "FloatingSnackBarManager.java"

# interfaces
.implements Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;


# instance fields
.field private mDismissCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "Landroid/support/design/widget/Snackbar;",
            ">;"
        }
    .end annotation
.end field

.field mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

.field private mHideCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "Landroid/support/design/widget/Snackbar;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "Landroid/support/design/widget/Snackbar;",
            ">;"
        }
    .end annotation
.end field

.field mSnackBar:Landroid/support/design/widget/Snackbar;


# direct methods
.method public constructor <init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager$1;

    invoke-direct {v0, p0}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager$1;-><init>(Lcom/leo/floatingtoolbar/FloatingSnackBarManager;)V

    iput-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mShowCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    new-instance v0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager$2;

    invoke-direct {v0, p0}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager$2;-><init>(Lcom/leo/floatingtoolbar/FloatingSnackBarManager;)V

    iput-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mHideCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    new-instance v0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager$3;

    invoke-direct {v0, p0}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager$3;-><init>(Lcom/leo/floatingtoolbar/FloatingSnackBarManager;)V

    iput-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mDismissCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {p1, p0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->addMorphListener(Lcom/leo/floatingtoolbar/FloatingToolbar$MorphListener;)V

    return-void
.end method

.method private showSnackBarInternal(Landroid/support/design/widget/Snackbar;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mDismissCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mHideCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mShowCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    :cond_0
    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mDismissCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method


# virtual methods
.method public dismissAndHide()V
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mHideCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    return-void
.end method

.method public dismissAndShow()V
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mShowCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    return-void
.end method

.method public hasSnackBar()Z
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMorphEnd()V
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->isShownOrQueued()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0, v0}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->showSnackBarInternal(Landroid/support/design/widget/Snackbar;)V

    :cond_0
    return-void
.end method

.method public onMorphStart()V
    .locals 0

    return-void
.end method

.method public onUnmorphEnd()V
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->isShownOrQueued()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0, v0}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->showSnackBarInternal(Landroid/support/design/widget/Snackbar;)V

    :cond_0
    return-void
.end method

.method public onUnmorphStart()V
    .locals 0

    return-void
.end method

.method public showSnackBar(Landroid/support/design/widget/Snackbar;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mFloatingToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    iget-boolean v0, v0, Lcom/leo/floatingtoolbar/FloatingToolbar;->mAnimating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mHideCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mShowCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mDismissCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    :cond_0
    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->mSnackBar:Landroid/support/design/widget/Snackbar;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/leo/floatingtoolbar/FloatingSnackBarManager;->showSnackBarInternal(Landroid/support/design/widget/Snackbar;)V

    :goto_0
    return-void
.end method
