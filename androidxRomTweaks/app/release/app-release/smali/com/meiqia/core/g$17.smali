.class Lcom/meiqia/core/g$17;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/meiqia/core/callback/SimpleCallback;

.field final synthetic c:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$17;->c:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$17;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/meiqia/core/g$17;->b:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DvcInfo "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meiqia/core/g$17;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/g$17;->b:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-interface {p1}, Lcom/meiqia/core/callback/SimpleCallback;->onSuccess()V

    return-void
.end method
