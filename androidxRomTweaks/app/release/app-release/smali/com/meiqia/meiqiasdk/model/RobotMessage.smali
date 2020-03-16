.class public Lcom/meiqia/meiqiasdk/model/RobotMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "RobotMessage.java"


# static fields
.field public static final EVALUATE_USEFUL:I = 0x1

.field public static final EVALUATE_USELESS:I = 0x0

.field public static final SUB_TYPE_EVALUATE:Ljava/lang/String; = "evaluate"

.field public static final SUB_TYPE_MANUAL_REDIRECT:Ljava/lang/String; = "manual_redirect"

.field public static final SUB_TYPE_MENU:Ljava/lang/String; = "menu"

.field public static final SUB_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field public static final SUB_TYPE_QUEUEING:Ljava/lang/String; = "queueing"

.field public static final SUB_TYPE_REDIRECT:Ljava/lang/String; = "redirect"

.field public static final SUB_TYPE_REPLY:Ljava/lang/String; = "reply"

.field public static final SUB_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private contentRobot:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private isAlreadyFeedback:Z

.field private questionId:J

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->setItemViewType(I)V

    return-void
.end method


# virtual methods
.method public getContentRobot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/RobotMessage;->contentRobot:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/RobotMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionId()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/meiqiasdk/model/RobotMessage;->questionId:J

    return-wide v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/RobotMessage;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public isAlreadyFeedback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/model/RobotMessage;->isAlreadyFeedback:Z

    return v0
.end method

.method public setAlreadyFeedback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/model/RobotMessage;->isAlreadyFeedback:Z

    return-void
.end method

.method public setContentRobot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/RobotMessage;->contentRobot:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/RobotMessage;->extra:Ljava/lang/String;

    return-void
.end method

.method public setQuestionId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/meiqiasdk/model/RobotMessage;->questionId:J

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/RobotMessage;->subType:Ljava/lang/String;

    return-void
.end method
