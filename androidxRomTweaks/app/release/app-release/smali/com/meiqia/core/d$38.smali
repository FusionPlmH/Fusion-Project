.class Lcom/meiqia/core/d$38;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(JJILcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;

.field final synthetic c:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;JLcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$38;->c:Lcom/meiqia/core/d;

    iput-wide p2, p0, Lcom/meiqia/core/d$38;->a:J

    iput-object p4, p0, Lcom/meiqia/core/d$38;->b:Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$38;->b:Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$38;->c:Lcom/meiqia/core/d;

    iget-wide v1, p0, Lcom/meiqia/core/d$38;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/d;->b(J)V

    iget-object v0, p0, Lcom/meiqia/core/d$38;->c:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$38$1;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/d$38$1;-><init>(Lcom/meiqia/core/d$38;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method
