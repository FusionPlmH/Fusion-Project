.class Lcom/leo/salt/ui/list/AdapterFileSelector$3$2;
.super Ljava/lang/Object;
.source "AdapterFileSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ui/list/AdapterFileSelector$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$3;


# direct methods
.method constructor <init>(Lcom/leo/salt/ui/list/AdapterFileSelector$3;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$3;

    iget-object p1, p1, Lcom/leo/salt/ui/list/AdapterFileSelector$3;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$3;

    iget-object p1, p1, Lcom/leo/salt/ui/list/AdapterFileSelector$3;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6240\u9009\u7684\u6587\u4ef6\u5df2\u88ab\u5220\u9664\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\uff01"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$3;

    iget-object p1, p1, Lcom/leo/salt/ui/list/AdapterFileSelector$3;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    iget-object p2, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$3;

    iget-object p2, p2, Lcom/leo/salt/ui/list/AdapterFileSelector$3;->val$file:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/leo/salt/ui/list/AdapterFileSelector;->access$602(Lcom/leo/salt/ui/list/AdapterFileSelector;Ljava/io/File;)Ljava/io/File;

    iget-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$3;

    iget-object p1, p1, Lcom/leo/salt/ui/list/AdapterFileSelector$3;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    invoke-static {p1}, Lcom/leo/salt/ui/list/AdapterFileSelector;->access$700(Lcom/leo/salt/ui/list/AdapterFileSelector;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
