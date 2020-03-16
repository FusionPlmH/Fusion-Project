.class public Lcom/stericson/RootShell/execution/JavaCommand;
.super Lcom/stericson/RootShell/execution/Command;
.source "JavaCommand.java"


# direct methods
.method public varargs constructor <init>(IILandroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/stericson/RootShell/execution/Command;-><init>(II[Ljava/lang/String;)V

    iput-object p3, p0, Lcom/stericson/RootShell/execution/JavaCommand;->context:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/stericson/RootShell/execution/JavaCommand;->javaCommand:Z

    return-void
.end method

.method public varargs constructor <init>(ILandroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/stericson/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stericson/RootShell/execution/JavaCommand;->context:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/stericson/RootShell/execution/JavaCommand;->javaCommand:Z

    return-void
.end method

.method public varargs constructor <init>(IZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/stericson/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    iput-object p3, p0, Lcom/stericson/RootShell/execution/JavaCommand;->context:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/stericson/RootShell/execution/JavaCommand;->javaCommand:Z

    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 0

    return-void
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/stericson/RootShell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
