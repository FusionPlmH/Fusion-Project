.class Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$3;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "FloatingAnimatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$3;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$3;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$3;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method
