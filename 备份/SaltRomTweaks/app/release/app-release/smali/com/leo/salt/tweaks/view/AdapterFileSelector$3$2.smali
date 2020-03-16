.class Lcom/leo/salt/tweaks/view/AdapterFileSelector$3$2;
.super Ljava/lang/Object;
.source "AdapterFileSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "file_selector_delete"

    invoke-static {p2}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->FileView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;->this$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;

    iget-object p2, p2, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;->val$file:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->access$102(Lcom/leo/salt/tweaks/view/AdapterFileSelector;Ljava/io/File;)Ljava/io/File;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3$2;->this$1:Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;->this$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->access$200(Lcom/leo/salt/tweaks/view/AdapterFileSelector;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
