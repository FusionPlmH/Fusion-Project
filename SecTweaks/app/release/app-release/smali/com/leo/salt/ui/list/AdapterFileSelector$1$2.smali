.class Lcom/leo/salt/ui/list/AdapterFileSelector$1$2;
.super Ljava/lang/Object;
.source "AdapterFileSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ui/list/AdapterFileSelector$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/ui/list/AdapterFileSelector$1;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1$2;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1$2;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$1;

    iget-object v0, v0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    invoke-virtual {v0}, Lcom/leo/salt/ui/list/AdapterFileSelector;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1$2;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$1;

    iget-object v0, v0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    invoke-static {v0}, Lcom/leo/salt/ui/list/AdapterFileSelector;->access$300(Lcom/leo/salt/ui/list/AdapterFileSelector;)Lcom/leo/salt/kt/ProgressBarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/kt/ProgressBarDialog;->hideDialog()V

    return-void
.end method
