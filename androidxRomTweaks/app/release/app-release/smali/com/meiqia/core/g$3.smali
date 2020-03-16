.class Lcom/meiqia/core/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(JJLjava/lang/String;JLcom/meiqia/core/callback/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/SimpleCallback;

.field final synthetic b:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$3;->b:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$3;->a:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/core/g$3;->a:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/meiqia/core/callback/SimpleCallback;->onSuccess()V

    :cond_0
    return-void
.end method
