.class public final enum Lcom/stericson/RootShell/execution/Shell$ShellContext;
.super Ljava/lang/Enum;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootShell/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShellContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stericson/RootShell/execution/Shell$ShellContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stericson/RootShell/execution/Shell$ShellContext;

.field public static final enum NORMAL:Lcom/stericson/RootShell/execution/Shell$ShellContext;

.field public static final enum PLATFORM_APP:Lcom/stericson/RootShell/execution/Shell$ShellContext;

.field public static final enum RECOVERY:Lcom/stericson/RootShell/execution/Shell$ShellContext;

.field public static final enum SHELL:Lcom/stericson/RootShell/execution/Shell$ShellContext;

.field public static final enum SYSTEM_APP:Lcom/stericson/RootShell/execution/Shell$ShellContext;

.field public static final enum SYSTEM_SERVER:Lcom/stericson/RootShell/execution/Shell$ShellContext;

.field public static final enum UNTRUSTED_APP:Lcom/stericson/RootShell/execution/Shell$ShellContext;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;

    const-string v1, "NORMAL"

    const-string v2, "normal"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/stericson/RootShell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->NORMAL:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    new-instance v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;

    const-string v1, "SHELL"

    const-string v2, "u:r:shell:s0"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/stericson/RootShell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->SHELL:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    new-instance v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;

    const-string v1, "SYSTEM_SERVER"

    const-string v2, "u:r:system_server:s0"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/stericson/RootShell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->SYSTEM_SERVER:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    new-instance v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;

    const-string v1, "SYSTEM_APP"

    const-string v2, "u:r:system_app:s0"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/stericson/RootShell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->SYSTEM_APP:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    new-instance v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;

    const-string v1, "PLATFORM_APP"

    const-string v2, "u:r:platform_app:s0"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/stericson/RootShell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->PLATFORM_APP:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    new-instance v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;

    const-string v1, "UNTRUSTED_APP"

    const-string v2, "u:r:untrusted_app:s0"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/stericson/RootShell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->UNTRUSTED_APP:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    new-instance v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;

    const-string v1, "RECOVERY"

    const-string v2, "u:r:recovery:s0"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/stericson/RootShell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->RECOVERY:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/stericson/RootShell/execution/Shell$ShellContext;

    sget-object v1, Lcom/stericson/RootShell/execution/Shell$ShellContext;->NORMAL:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/stericson/RootShell/execution/Shell$ShellContext;->SHELL:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    aput-object v1, v0, v4

    sget-object v1, Lcom/stericson/RootShell/execution/Shell$ShellContext;->SYSTEM_SERVER:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    aput-object v1, v0, v5

    sget-object v1, Lcom/stericson/RootShell/execution/Shell$ShellContext;->SYSTEM_APP:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    aput-object v1, v0, v6

    sget-object v1, Lcom/stericson/RootShell/execution/Shell$ShellContext;->PLATFORM_APP:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    aput-object v1, v0, v7

    sget-object v1, Lcom/stericson/RootShell/execution/Shell$ShellContext;->UNTRUSTED_APP:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    aput-object v1, v0, v8

    sget-object v1, Lcom/stericson/RootShell/execution/Shell$ShellContext;->RECOVERY:Lcom/stericson/RootShell/execution/Shell$ShellContext;

    aput-object v1, v0, v9

    sput-object v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->$VALUES:[Lcom/stericson/RootShell/execution/Shell$ShellContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stericson/RootShell/execution/Shell$ShellContext;
    .locals 1

    const-class v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stericson/RootShell/execution/Shell$ShellContext;

    return-object p0
.end method

.method public static values()[Lcom/stericson/RootShell/execution/Shell$ShellContext;
    .locals 1

    sget-object v0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->$VALUES:[Lcom/stericson/RootShell/execution/Shell$ShellContext;

    invoke-virtual {v0}, [Lcom/stericson/RootShell/execution/Shell$ShellContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stericson/RootShell/execution/Shell$ShellContext;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Shell$ShellContext;->value:Ljava/lang/String;

    return-object v0
.end method
