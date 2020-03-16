.class final Lcom/stericson/RootShell/RootShell$2;
.super Lcom/stericson/RootShell/execution/Command;
.source "RootShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootShell/RootShell;->findBinary(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$binaryName:Ljava/lang/String;

.field final synthetic val$currentPath:Ljava/lang/String;

.field final synthetic val$foundPaths:Ljava/util/List;


# direct methods
.method varargs constructor <init>(IZ[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p4, p0, Lcom/stericson/RootShell/RootShell$2;->val$binaryName:Ljava/lang/String;

    iput-object p5, p0, Lcom/stericson/RootShell/RootShell$2;->val$foundPaths:Ljava/util/List;

    iput-object p6, p0, Lcom/stericson/RootShell/RootShell$2;->val$currentPath:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/stericson/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 2

    const-string v0, "File: "

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stericson/RootShell/RootShell$2;->val$binaryName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stericson/RootShell/RootShell$2;->val$foundPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/stericson/RootShell/RootShell$2;->val$currentPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/stericson/RootShell/RootShell$2;->val$binaryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was found here: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stericson/RootShell/RootShell$2;->val$currentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/stericson/RootShell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method
