.class Lcom/leo/floatingtoolbar/FloatingToolbar$1;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/floatingtoolbar/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/floatingtoolbar/FloatingToolbar;


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/leo/floatingtoolbar/FloatingToolbar;

    iget-boolean p1, p1, Lcom/leo/floatingtoolbar/FloatingToolbar;->mShowing:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/leo/floatingtoolbar/FloatingToolbar;

    iget-boolean p1, p1, Lcom/leo/floatingtoolbar/FloatingToolbar;->mHandleFabClick:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->show()V

    :cond_0
    return-void
.end method
