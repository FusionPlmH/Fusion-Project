.class Landroid/support/design/bottomappbar/BottomAppBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar$7;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar$7;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-static {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$600(Landroid/support/design/bottomappbar/BottomAppBar;)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->access$700(Landroid/support/design/bottomappbar/BottomAppBar;Z)V

    iget-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar$7;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-static {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$800(Landroid/support/design/bottomappbar/BottomAppBar;)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$7;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-static {v1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$600(Landroid/support/design/bottomappbar/BottomAppBar;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$900(Landroid/support/design/bottomappbar/BottomAppBar;IZ)V

    return-void
.end method
