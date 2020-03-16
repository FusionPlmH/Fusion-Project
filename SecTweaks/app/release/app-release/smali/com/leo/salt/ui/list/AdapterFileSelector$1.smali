.class Lcom/leo/salt/ui/list/AdapterFileSelector$1;
.super Ljava/lang/Object;
.source "AdapterFileSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ui/list/AdapterFileSelector;->loadDir(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

.field final synthetic val$dir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/leo/salt/ui/list/AdapterFileSelector;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    iput-object p2, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->val$dir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->val$dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->val$dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->val$dir:Ljava/io/File;

    new-instance v1, Lcom/leo/salt/ui/list/AdapterFileSelector$1$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/ui/list/AdapterFileSelector$1$1;-><init>(Lcom/leo/salt/ui/list/AdapterFileSelector$1;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v1

    aget-object v5, v0, v3

    aput-object v5, v0, v1

    aput-object v4, v0, v3

    goto :goto_2

    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-ne v4, v5, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    aget-object v4, v0, v1

    aget-object v5, v0, v3

    aput-object v5, v0, v1

    aput-object v4, v0, v3

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    invoke-static {v1, v0}, Lcom/leo/salt/ui/list/AdapterFileSelector;->access$102(Lcom/leo/salt/ui/list/AdapterFileSelector;[Ljava/io/File;)[Ljava/io/File;

    :cond_4
    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    iget-object v1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->val$dir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/leo/salt/ui/list/AdapterFileSelector;->access$202(Lcom/leo/salt/ui/list/AdapterFileSelector;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector$1;->this$0:Lcom/leo/salt/ui/list/AdapterFileSelector;

    invoke-static {v0}, Lcom/leo/salt/ui/list/AdapterFileSelector;->access$400(Lcom/leo/salt/ui/list/AdapterFileSelector;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/ui/list/AdapterFileSelector$1$2;

    invoke-direct {v1, p0}, Lcom/leo/salt/ui/list/AdapterFileSelector$1$2;-><init>(Lcom/leo/salt/ui/list/AdapterFileSelector$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
