.class Lcom/meiqia/core/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->b(Ljava/io/File;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/g$b;

.field final synthetic b:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$2;->b:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$2;->a:Lcom/meiqia/core/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/g$2;->a:Lcom/meiqia/core/g$b;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/g$b;->a(Lorg/json/JSONObject;Lokhttp3/Response;)V

    return-void
.end method
