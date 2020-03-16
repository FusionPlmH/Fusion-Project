.class Lcom/meiqia/core/g$29;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(Lcom/meiqia/core/g$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/g$d;

.field final synthetic b:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$d;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$29;->b:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$29;->a:Lcom/meiqia/core/g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 2

    iget-object p2, p0, Lcom/meiqia/core/g$29;->a:Lcom/meiqia/core/g$d;

    const-string v0, "position"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/meiqia/core/g$d;->a(I)V

    return-void
.end method
