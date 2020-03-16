.class Lcom/meiqia/meiqiasdk/controller/ControllerImpl$12;
.super Ljava/lang/Object;
.source "ControllerImpl.java"

# interfaces
.implements Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->evaluateRobotAnswer(JJILcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

.field final synthetic val$onEvaluateRobotAnswerCallback:Lcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$12;->this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$12;->val$onEvaluateRobotAnswerCallback:Lcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$12;->val$onEvaluateRobotAnswerCallback:Lcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$12;->val$onEvaluateRobotAnswerCallback:Lcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
