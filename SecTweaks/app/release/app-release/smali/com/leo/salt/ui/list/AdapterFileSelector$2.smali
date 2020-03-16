.class Lcom/leo/salt/ui/list/AdapterFileSelector$2;
.super Ljava/lang/Object;
.source "AdapterFileSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ui/list/AdapterFileSelector;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/leo/salt/ui/list/AdapterFileSelector;Ljava/io/File;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$2;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    iput-object p2, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$2;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$2;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6240\u9009\u7684\u6587\u4ef6\u5df2\u88ab\u5220\u9664\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\uff01"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$2;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p1, p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$2;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$2;->val$file:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/leo/salt/ui/list/AdapterFileSelector;->access$500(Lcom/leo/salt/ui/list/AdapterFileSelector;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$2;->val$view:Landroid/view/View;

    const-string v0, "\u8be5\u76ee\u5f55\u4e0b\u6ca1\u6709\u6587\u4ef6\uff01"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :goto_0
    return-void
.end method
