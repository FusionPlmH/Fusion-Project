.class public Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/core/bean/MQEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceEvaluationConfig"
.end annotation


# instance fields
.field private prompt_text:Ljava/lang/String;

.field final synthetic this$0:Lcom/meiqia/core/bean/MQEnterpriseConfig;


# direct methods
.method public constructor <init>(Lcom/meiqia/core/bean/MQEnterpriseConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;->this$0:Lcom/meiqia/core/bean/MQEnterpriseConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrompt_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;->prompt_text:Ljava/lang/String;

    return-object v0
.end method

.method public setPrompt_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;->prompt_text:Ljava/lang/String;

    return-void
.end method
