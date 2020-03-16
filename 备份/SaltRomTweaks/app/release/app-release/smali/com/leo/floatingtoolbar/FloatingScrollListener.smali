.class Lcom/leo/floatingtoolbar/FloatingScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FloatingScrollListener.java"


# instance fields
.field private mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingScrollListener;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingScrollListener;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingScrollListener;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->hide()V

    :cond_0
    return-void
.end method
