.class Lcom/leo/salt/ui/list/AdapterFileSelector$1$1;
.super Ljava/lang/Object;
.source "AdapterFileSelector.java"

# interfaces
.implements Ljava/io/FileFilter;


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

    iput-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1$1;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1$1;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$1;

    iget-object v0, v0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    invoke-static {v0}, Lcom/leo/salt/ui/list/AdapterFileSelector;->access$000(Lcom/leo/salt/ui/list/AdapterFileSelector;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1$1;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$1;

    iget-object v0, v0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    invoke-static {v0}, Lcom/leo/salt/ui/list/AdapterFileSelector;->access$000(Lcom/leo/salt/ui/list/AdapterFileSelector;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1$1;->this$1:Lcom/leo/salt/ui/list/AdapterFileSelector$1;

    iget-object v0, v0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    invoke-static {v0}, Lcom/leo/salt/ui/list/AdapterFileSelector;->access$000(Lcom/leo/salt/ui/list/AdapterFileSelector;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
