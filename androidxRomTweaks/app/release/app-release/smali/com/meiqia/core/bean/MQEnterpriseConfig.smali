.class public Lcom/meiqia/core/bean/MQEnterpriseConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/core/bean/MQEnterpriseConfig$Form;,
        Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;,
        Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;,
        Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;,
        Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;
    }
.end annotation


# static fields
.field public static final OPEN:Ljava/lang/String; = "open"

.field public static final SINGLE:Ljava/lang/String; = "single"


# instance fields
.field public avatar:Ljava/lang/String;

.field public ent_welcome_message:Ljava/lang/String;

.field public form:Lcom/meiqia/core/bean/MQEnterpriseConfig$Form;

.field public public_nickname:Ljava/lang/String;

.field public robotSettings:Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;

.field public scheduler_after_client_send_msg:Z

.field public serviceEvaluationConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;

.field public survey:Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;

.field public ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;

    invoke-direct {v0, p0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;-><init>(Lcom/meiqia/core/bean/MQEnterpriseConfig;)V

    iput-object v0, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->robotSettings:Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;

    new-instance v0, Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;

    invoke-direct {v0, p0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;-><init>(Lcom/meiqia/core/bean/MQEnterpriseConfig;)V

    iput-object v0, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->serviceEvaluationConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;

    new-instance v0, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-direct {v0, p0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;-><init>(Lcom/meiqia/core/bean/MQEnterpriseConfig;)V

    iput-object v0, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    new-instance v0, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;

    invoke-direct {v0, p0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;-><init>(Lcom/meiqia/core/bean/MQEnterpriseConfig;)V

    iput-object v0, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->survey:Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;

    new-instance v0, Lcom/meiqia/core/bean/MQEnterpriseConfig$Form;

    invoke-direct {v0, p0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$Form;-><init>(Lcom/meiqia/core/bean/MQEnterpriseConfig;)V

    iput-object v0, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->form:Lcom/meiqia/core/bean/MQEnterpriseConfig$Form;

    return-void
.end method
