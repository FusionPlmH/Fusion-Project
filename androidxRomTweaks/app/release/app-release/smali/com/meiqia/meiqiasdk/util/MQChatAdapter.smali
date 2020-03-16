.class public Lcom/meiqia/meiqiasdk/util/MQChatAdapter;
.super Landroid/widget/BaseAdapter;
.source "MQChatAdapter.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;


# static fields
.field private static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

.field private mCurrentDownloadingItemPosition:I

.field private mCurrentPlayingItemPosition:I

.field private mListView:Landroid/widget/ListView;

.field private mMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyDataSetChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mCurrentPlayingItemPosition:I

    iput v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mCurrentDownloadingItemPosition:I

    new-instance v0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$1;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$1;-><init>(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mNotifyDataSetChangedRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mMessageList:Ljava/util/List;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mNotifyDataSetChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mCurrentPlayingItemPosition:I

    return p1
.end method


# virtual methods
.method public addMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mMessageList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public downloadAndNotifyDataSetChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    instance-of v1, v0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->getCachedVoiceFileByUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->setVoiceMessageDuration(Lcom/meiqia/meiqiasdk/model/VoiceMessage;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$2;-><init>(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;Lcom/meiqia/meiqiasdk/model/VoiceMessage;)V

    invoke-virtual {v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->downloadVoice(Ljava/lang/String;Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentDownloadingItemPosition()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mCurrentDownloadingItemPosition:I

    return v0
.end method

.method public getCurrentPlayingItemPosition()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mCurrentPlayingItemPosition:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getItemViewType()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object p3, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mMessageList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p2, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;-><init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;)V

    goto :goto_0

    :pswitch_1
    new-instance p2, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance p2, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0, v0}, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;-><init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;)V

    goto :goto_0

    :pswitch_3
    new-instance p2, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance p2, Lcom/meiqia/meiqiasdk/chatitem/MQNoAgentItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQNoAgentItem;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    new-instance p2, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;-><init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;)V

    goto :goto_0

    :pswitch_6
    new-instance p2, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    new-instance p2, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    new-instance p2, Lcom/meiqia/meiqiasdk/chatitem/MQTimeItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQTimeItem;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_9
    new-instance p2, Lcom/meiqia/meiqiasdk/chatitem/MQAgentItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0, p0}, Lcom/meiqia/meiqiasdk/chatitem/MQAgentItem;-><init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;)V

    goto :goto_0

    :pswitch_a
    new-instance p2, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p2, v0, p0}, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;-><init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/meiqia/meiqiasdk/chatitem/MQAgentItem;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0, p3, p1, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQAgentItem;->setMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILandroid/app/Activity;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0, p3, p1, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->setMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILandroid/app/Activity;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    move-object p1, p2

    check-cast p1, Lcom/meiqia/meiqiasdk/chatitem/MQNoAgentItem;

    iget-object p3, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1, p3}, Lcom/meiqia/meiqiasdk/chatitem/MQNoAgentItem;->setCallback(Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    move-object p1, p2

    check-cast p1, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;

    check-cast p3, Lcom/meiqia/meiqiasdk/model/RobotMessage;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1, p3, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->setMessage(Lcom/meiqia/meiqiasdk/model/RobotMessage;Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    move-object p1, p2

    check-cast p1, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;

    check-cast p3, Lcom/meiqia/meiqiasdk/model/HybridMessage;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1, p3, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->setMessage(Lcom/meiqia/meiqiasdk/model/HybridMessage;Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    move-object p1, p2

    check-cast p1, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;

    check-cast p3, Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1, p3, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;->setMessage(Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem$Callback;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    move-object p1, p2

    check-cast p1, Lcom/meiqia/meiqiasdk/chatitem/MQTimeItem;

    invoke-virtual {p1, p3}, Lcom/meiqia/meiqiasdk/chatitem/MQTimeItem;->setMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    move-object p1, p2

    check-cast p1, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;

    invoke-virtual {p1, p3}, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;->setMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    move-object p1, p2

    check-cast p1, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;

    check-cast p3, Lcom/meiqia/meiqiasdk/model/EvaluateMessage;

    invoke-virtual {p1, p3}, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->setMessage(Lcom/meiqia/meiqiasdk/model/EvaluateMessage;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    move-object p1, p2

    check-cast p1, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;

    check-cast p3, Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    invoke-virtual {p1, p3}, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->setMessage(Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_b

    move-object p1, p2

    check-cast p1, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;

    check-cast p3, Lcom/meiqia/meiqiasdk/model/RichTextMessage;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1, p3, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->setMessage(Lcom/meiqia/meiqiasdk/model/RichTextMessage;Landroid/app/Activity;)V

    :cond_b
    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public isLastItemAndVisible(I)Z
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public loadMoreMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mMessageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->downloadAndNotifyDataSetChanged(Ljava/util/List;)V

    return-void
.end method

.method public onFileMessageDownloadFailure(Lcom/meiqia/meiqiasdk/model/FileMessage;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->onFileMessageDownloadFailure(Lcom/meiqia/meiqiasdk/model/FileMessage;ILjava/lang/String;)V

    return-void
.end method

.method public onFileMessageExpired(Lcom/meiqia/meiqiasdk/model/FileMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->onFileMessageExpired(Lcom/meiqia/meiqiasdk/model/FileMessage;)V

    return-void
.end method

.method public photoPreview(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getImageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->newIntent(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public resendFailedMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->resendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    return-void
.end method

.method public scrollContentToBottom()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->scrollContentToBottom()V

    return-void
.end method

.method public setCurrentDownloadingItemPosition(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mCurrentPlayingItemPosition:I

    return-void
.end method

.method public setVoiceMessageDuration(Lcom/meiqia/meiqiasdk/model/VoiceMessage;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->setLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0, p2}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->getDurationByFilePath(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->setDuration(I)V

    return-void
.end method

.method public startPlayVoiceAndRefreshList(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$3;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$3;-><init>(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;)V

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->playSound(Ljava/lang/String;Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->setIsRead(Z)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mConversationActivity:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->updateMessage(JZ)V

    iput p2, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mCurrentPlayingItemPosition:I

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public stopPlayVoice()V
    .locals 1

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->stop()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->mCurrentPlayingItemPosition:I

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    return-void
.end method
