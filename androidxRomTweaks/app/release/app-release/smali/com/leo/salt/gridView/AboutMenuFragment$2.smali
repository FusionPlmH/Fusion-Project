.class Lcom/leo/salt/gridView/AboutMenuFragment$2;
.super Landroid/os/Handler;
.source "AboutMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/AboutMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/AboutMenuFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$2;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$2;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-static {v0, p1}, Lcom/leo/salt/gridView/AboutMenuFragment;->access$300(Lcom/leo/salt/gridView/AboutMenuFragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
