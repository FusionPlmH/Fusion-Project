.class public Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/core/bean/MQEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Survey"
.end annotation


# instance fields
.field private has_submitted_form:Z

.field private status:Ljava/lang/String;

.field final synthetic this$0:Lcom/meiqia/core/bean/MQEnterpriseConfig;


# direct methods
.method public constructor <init>(Lcom/meiqia/core/bean/MQEnterpriseConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;->this$0:Lcom/meiqia/core/bean/MQEnterpriseConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isHas_submitted_form()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;->has_submitted_form:Z

    return v0
.end method

.method public setHas_submitted_form(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;->has_submitted_form:Z

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;->status:Ljava/lang/String;

    return-void
.end method
