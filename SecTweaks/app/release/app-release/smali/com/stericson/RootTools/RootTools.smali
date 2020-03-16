.class public final Lcom/stericson/RootTools/RootTools;
.super Ljava/lang/Object;
.source "RootTools.java"


# static fields
.field public static debugMode:Z = false

.field public static default_Command_Timeout:I = 0x4e20

.field public static handlerEnabled:Z = true

.field private static rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field public static utilPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUtil(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static closeAllShells()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/stericson/RootShell/RootShell;->closeAllShells()V

    return-void
.end method

.method public static closeCustomShell()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/stericson/RootShell/RootShell;->closeCustomShell()V

    return-void
.end method

.method public static closeShell(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/stericson/RootShell/RootShell;->closeShell(Z)V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static deleteFileOrDirectory(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static exists(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/stericson/RootShell/RootShell;->exists(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static findBinary(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/stericson/RootShell/RootShell;->findBinary(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static fixUtil(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fixUtils([Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->fixUtils([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBusyBoxApplets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBusyBoxVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomShell(Ljava/lang/String;)Lcom/stericson/RootShell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootShell/exceptions/RootDeniedException;
        }
    .end annotation

    const/16 v0, 0x2710

    invoke-static {p0, v0}, Lcom/stericson/RootTools/RootTools;->getCustomShell(Ljava/lang/String;I)Lcom/stericson/RootShell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomShell(Ljava/lang/String;I)Lcom/stericson/RootShell/execution/Shell;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootShell/exceptions/RootDeniedException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/stericson/RootShell/RootShell;->getCustomShell(Ljava/lang/String;I)Lcom/stericson/RootShell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object p0

    return-object p0
.end method

.method public static getInode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;
    .locals 1

    sget-object v0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getInstance()V

    sget-object v0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    return-object v0

    :cond_0
    return-object v0
.end method

.method public static getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getMountedAs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/stericson/RootTools/containers/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPath()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getShell(Z)Lcom/stericson/RootShell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootShell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/stericson/RootTools/RootTools;->getShell(ZI)Lcom/stericson/RootShell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZI)Lcom/stericson/RootShell/execution/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootShell/exceptions/RootDeniedException;
        }
    .end annotation

    sget-object v0, Lcom/stericson/RootShell/execution/Shell;->defaultContext:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    const/4 v1, 0x3

    invoke-static {p0, p1, v0, v1}, Lcom/stericson/RootTools/RootTools;->getShell(ZILcom/stericson/RootShell/execution/Shell$ShellContext;I)Lcom/stericson/RootShell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZILcom/stericson/RootShell/execution/Shell$ShellContext;)Lcom/stericson/RootShell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootShell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/stericson/RootTools/RootTools;->getShell(ZILcom/stericson/RootShell/execution/Shell$ShellContext;I)Lcom/stericson/RootShell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZILcom/stericson/RootShell/execution/Shell$ShellContext;I)Lcom/stericson/RootShell/execution/Shell;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootShell/exceptions/RootDeniedException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/stericson/RootShell/RootShell;->getShell(ZILcom/stericson/RootShell/execution/Shell$ShellContext;I)Lcom/stericson/RootShell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZLcom/stericson/RootShell/execution/Shell$ShellContext;)Lcom/stericson/RootShell/execution/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootShell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, p1, v1}, Lcom/stericson/RootTools/RootTools;->getShell(ZILcom/stericson/RootShell/execution/Shell$ShellContext;I)Lcom/stericson/RootShell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getSpace(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/stericson/RootTools/containers/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getWorkingToolbox()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getWorkingToolbox()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasBinary(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isBinaryAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasEnoughSpaceOnSdCard(J)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasEnoughSpaceOnSdCard(J)Z

    move-result p0

    return p0
.end method

.method public static hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    const-string v0, "700"

    invoke-static {p0, p1, p2, v0}, Lcom/stericson/RootTools/RootTools;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isAccessGiven()Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootShell/RootShell;->isAccessGiven()Z

    move-result v0

    return v0
.end method

.method public static isAppletAvailable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/stericson/RootTools/RootTools;->isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBusyboxAvailable()Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootShell/RootShell;->isBusyboxAvailable()Z

    move-result v0

    return v0
.end method

.method public static isNativeToolsReady(ILandroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isNativeToolsReady(ILandroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isProcessRunning(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isProcessRunning(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isRootAvailable()Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootShell/RootShell;->isRootAvailable()Z

    move-result v0

    return v0
.end method

.method public static islog()Z
    .locals 1

    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    return v0
.end method

.method public static killProcess(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->killProcess(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, p0, v1, v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static log(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string p0, "RootTools v4.2"

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static offerBusyBox(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerBusyBox(Landroid/app/Activity;)V

    return-void
.end method

.method public static offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static offerSuperUser(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerSuperUser(Landroid/app/Activity;)V

    return-void
.end method

.method public static remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/stericson/RootTools/internal/Remounter;

    invoke-direct {v0}, Lcom/stericson/RootTools/internal/Remounter;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/Remounter;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static restartAndroid()V
    .locals 1

    const-string v0, "Restart Android"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v0, "zygote"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->killProcess(Ljava/lang/String;)Z

    return-void
.end method

.method public static runBinary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/stericson/RootTools/internal/Runner;

    invoke-direct {v0, p0, p1, p2}, Lcom/stericson/RootTools/internal/Runner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/Runner;->start()V

    return-void
.end method

.method public static runShellCommand(Lcom/stericson/RootShell/execution/Shell;Lcom/stericson/RootShell/execution/Command;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/stericson/RootShell/execution/Shell;->add(Lcom/stericson/RootShell/execution/Command;)Lcom/stericson/RootShell/execution/Command;

    return-void
.end method

.method public static setRim(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;)V
    .locals 0

    sput-object p0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    return-void
.end method
