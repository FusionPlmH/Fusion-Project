.class Lcom/leo/salt/tweaks/view/AdapterFileSelector$4;
.super Ljava/lang/Object;
.source "AdapterFileSelector.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/AdapterFileSelector;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;Landroid/view/View;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4;->this$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "file_selector_no"

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->FileView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4$2;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4$2;-><init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector$4;)V

    const v1, 0x1040013

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4$1;-><init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector$4;)V

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
