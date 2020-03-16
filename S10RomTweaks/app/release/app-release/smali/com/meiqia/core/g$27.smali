.class Lcom/meiqia/core/g$27;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(JILcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;

.field final synthetic b:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$27;->b:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$27;->a:Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 1

    iget-object p2, p0, Lcom/meiqia/core/g$27;->a:Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;

    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
