.class Lcom/meiqia/core/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic d:Lcom/meiqia/core/g;


# direct methods
.method private constructor <init>(Lcom/meiqia/core/g;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$c;->d:Lcom/meiqia/core/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/g$c;-><init>(Lcom/meiqia/core/g;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 0

    return-void
.end method
