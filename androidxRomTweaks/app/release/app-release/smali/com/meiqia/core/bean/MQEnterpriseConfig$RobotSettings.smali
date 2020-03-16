.class public Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/core/bean/MQEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RobotSettings"
.end annotation


# instance fields
.field private show_switch:Z

.field final synthetic this$0:Lcom/meiqia/core/bean/MQEnterpriseConfig;


# direct methods
.method public constructor <init>(Lcom/meiqia/core/bean/MQEnterpriseConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;->this$0:Lcom/meiqia/core/bean/MQEnterpriseConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShow_switch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;->show_switch:Z

    return v0
.end method

.method public setShow_switch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;->show_switch:Z

    return-void
.end method
