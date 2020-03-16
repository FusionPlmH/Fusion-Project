.class public Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;
.super Ljava/lang/Object;
.source "MQIntentBuilder.java"


# instance fields
.field private mAgentId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGroupId:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mScheduleRule:Lcom/meiqia/core/MQScheduleRule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/meiqia/core/MQScheduleRule;->REDIRECT_ENTERPRISE:Lcom/meiqia/core/MQScheduleRule;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mScheduleRule:Lcom/meiqia/core/MQScheduleRule;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mContext:Landroid/content/Context;

    const-class v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0, p1, v0}, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/meiqia/core/MQScheduleRule;->REDIRECT_ENTERPRISE:Lcom/meiqia/core/MQScheduleRule;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mScheduleRule:Lcom/meiqia/core/MQScheduleRule;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private checkClient(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mContext:Landroid/content/Context;

    const-string v1, "CURRENT_CLIENT"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->survey:Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;->setHas_submitted_form(Z)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p1}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getCurrentAgent()Lcom/meiqia/core/bean/MQAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getMQInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQInquireForm;->isMenusOpen()Z

    move-result v0

    invoke-static {p1}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meiqia/core/MQManager;->getMQInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQInquireForm;->isInputsOpen()Z

    move-result v1

    if-eqz v0, :cond_1

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    :goto_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mAgentId:Ljava/lang/String;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mGroupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mScheduleRule:Lcom/meiqia/core/MQScheduleRule;

    invoke-virtual {v0, v1, v2, v3}, Lcom/meiqia/core/MQManager;->setScheduledAgentOrGroupWithId(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/MQScheduleRule;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "clientId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->checkClient(Ljava/lang/String;)V

    return-object p0
.end method

.method public setClientInfo(Ljava/util/HashMap;)Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "clientInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setCustomizedId(Ljava/lang/String;)Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "customizedId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->checkClient(Ljava/lang/String;)V

    return-object p0
.end method

.method public setPreSendImageMessage(Ljava/io/File;)Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "preSendImagePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public setPreSendTextMessage(Ljava/lang/String;)Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "preSendText"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setScheduleRule(Lcom/meiqia/core/MQScheduleRule;)Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mScheduleRule:Lcom/meiqia/core/MQScheduleRule;

    return-object p0
.end method

.method public setScheduledAgent(Ljava/lang/String;)Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mAgentId:Ljava/lang/String;

    return-object p0
.end method

.method public setScheduledGroup(Ljava/lang/String;)Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public updateClientInfo(Ljava/util/HashMap;)Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "updateClientInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method
