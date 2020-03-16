.class Lcom/leo/download/provider/net/OkHttpManager$OkHttpHolder;
.super Ljava/lang/Object;
.source "OkHttpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/download/provider/net/OkHttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OkHttpHolder"
.end annotation


# static fields
.field private static final instance:Lcom/leo/download/provider/net/OkHttpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/leo/download/provider/net/OkHttpManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/leo/download/provider/net/OkHttpManager;-><init>(Lcom/leo/download/provider/net/OkHttpManager$1;)V

    sput-object v0, Lcom/leo/download/provider/net/OkHttpManager$OkHttpHolder;->instance:Lcom/leo/download/provider/net/OkHttpManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/leo/download/provider/net/OkHttpManager;
    .locals 1

    sget-object v0, Lcom/leo/download/provider/net/OkHttpManager$OkHttpHolder;->instance:Lcom/leo/download/provider/net/OkHttpManager;

    return-object v0
.end method
