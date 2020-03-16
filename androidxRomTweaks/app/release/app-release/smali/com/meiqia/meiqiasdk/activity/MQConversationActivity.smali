.class public Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;
.super Landroid/app/Activity;
.source "MQConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog$Callback;
.implements Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;
.implements Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;
.implements Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;,
        Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;
    }
.end annotation


# static fields
.field private static final AUTO_DISMISS_TOP_TIP_TIME:J = 0x7d0L

.field public static final CLIENT_ID:Ljava/lang/String; = "clientId"

.field public static final CLIENT_INFO:Ljava/lang/String; = "clientInfo"

.field public static final CUSTOMIZED_ID:Ljava/lang/String; = "customizedId"

.field private static MESSAGE_PAGE_COUNT:I = 0x0

.field public static final PRE_SEND_IMAGE_PATH:Ljava/lang/String; = "preSendImagePath"

.field public static final PRE_SEND_TEXT:Ljava/lang/String; = "preSendText"

.field private static final RECORD_AUDIO_REQUEST_CODE:I = 0x2

.field public static final REQUEST_CODE_CAMERA:I = 0x0

.field public static final REQUEST_CODE_PHOTO:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_CLIENT_INFO:Ljava/lang/String; = "updateClientInfo"

.field private static final WHAT_GET_CLIENT_POSITION_IN_QUEUE:I = 0x1

.field private static final WRITE_EXTERNAL_STORAGE_AND_CAMERA_REQUEST_CODE:I = 0x3

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0x1


# instance fields
.field private delaySendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;"
        }
    .end annotation
.end field

.field private entWelcomeMsg:Lcom/meiqia/meiqiasdk/model/BaseMessage;

.field private hasSetClientOnline:Z

.field private inputTextWatcher:Landroid/text/TextWatcher;

.field private isAddLeaveTip:Z

.field private isBlackState:Z

.field private isDestroy:Z

.field private isNeedDelayOnline:Z

.field private isPause:Z

.field private mAutoDismissTopTipRunnable:Ljava/lang/Runnable;

.field private mBackIv:Landroid/widget/ImageView;

.field private mBackRl:Landroid/widget/RelativeLayout;

.field private mBackTv:Landroid/widget/TextView;

.field private mCameraPicPath:Ljava/lang/String;

.field private mCameraSelectBtn:Landroid/view/View;

.field private mChatBodyRl:Landroid/widget/RelativeLayout;

.field private mChatMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

.field private mController:Lcom/meiqia/meiqiasdk/controller/MQController;

.field private mConversationId:Ljava/lang/String;

.field private mConversationListView:Landroid/widget/ListView;

.field private mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

.field private mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

.field private mEmojiSelectBtn:Landroid/view/View;

.field private mEmojiSelectImg:Landroid/widget/ImageView;

.field private mEmojiSelectIndicator:Landroid/view/View;

.field private mEvaluateBtn:Landroid/view/View;

.field private mEvaluateDialog:Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHasLoadData:Z

.field private mInputEt:Landroid/widget/EditText;

.field private mIsAllocatingAgent:Z

.field private mIsShowRedirectHumanButton:Z

.field private mLastSendRobotMessageTime:J

.field private mLoadProgressBar:Landroid/widget/ProgressBar;

.field private mMessageReceiver:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;

.field private mNetworkChangeReceiver:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;

.field private mPhotoSelectBtn:Landroid/view/View;

.field private mRedirectHumanTv:Landroid/widget/TextView;

.field private mRedirectQueueMessage:Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

.field private mSendTextBtn:Landroid/widget/ImageButton;

.field private mSoundPoolManager:Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mTitleRl:Landroid/widget/RelativeLayout;

.field private mTitleTv:Landroid/widget/TextView;

.field private mTopTipViewTv:Landroid/widget/TextView;

.field private mVoiceBtn:Landroid/view/View;

.field private mVoiceSelectImg:Landroid/widget/ImageView;

.field private mVoiceSelectIndicator:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x1e

    sput v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->MESSAGE_PAGE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHasLoadData:Z

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hasSetClientOnline:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->delaySendList:Ljava/util/List;

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->inputTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getClientPositionInQueue()V

    return-void
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mSendTextBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTopTipViewTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTopTipViewTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatBodyRl:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->cleanVoiceMessage(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->cleanDupMessages(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/util/MQChatAdapter;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mIsAllocatingAgent:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setCurrentAgent(Lcom/meiqia/meiqiasdk/model/Agent;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mMessageReceiver:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setOrUpdateClientInfo()V

    return-void
.end method

.method static synthetic access$2200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->loadData()V

    return-void
.end method

.method static synthetic access$2300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/controller/MQController;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeNoAgentLeaveMsg()V

    return-void
.end method

.method static synthetic access$2500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeRedirectQueueLeaveMsg()V

    return-void
.end method

.method static synthetic access$2600(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendDelayMessages()V

    return-void
.end method

.method static synthetic access$2702(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hasSetClientOnline:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/Agent;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)Lcom/meiqia/meiqiasdk/model/Agent;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addNoAgentLeaveMsg()V

    return-void
.end method

.method static synthetic access$300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideEmojiSelectIndicator()V

    return-void
.end method

.method static synthetic access$3002(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isBlackState:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHasLoadData:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getMessageDataFromDatabaseAndLoad()V

    return-void
.end method

.method static synthetic access$3300()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->MESSAGE_PAGE_COUNT:I

    return v0
.end method

.method static synthetic access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->entWelcomeMsg:Lcom/meiqia/meiqiasdk/model/BaseMessage;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;)Lcom/meiqia/meiqiasdk/model/BaseMessage;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->entWelcomeMsg:Lcom/meiqia/meiqiasdk/model/BaseMessage;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->receiveNewMsg(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addRedirectQueueLeaveMsg(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendGetClientPositionInQueueMsg()V

    return-void
.end method

.method static synthetic access$3800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setClientOnline(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->renameVoiceFilename(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideVoiceSelectIndicator()V

    return-void
.end method

.method static synthetic access$4000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mSoundPoolManager:Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->updateResendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->inputting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addInitiativeRedirectMessage(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->refreshRedirectHumanBtn()V

    return-void
.end method

.method static synthetic access$4500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkSendable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->showEvaluateDialog()V

    return-void
.end method

.method static synthetic access$4800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->updateAgentOnlineOfflineStatusAndRedirectHuman()V

    return-void
.end method

.method static synthetic access$4900(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendPreMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->loadMoreDataFromDatabase()V

    return-void
.end method

.method static synthetic access$700(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->loadMoreDataFromService()V

    return-void
.end method

.method private addInitiativeRedirectMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/Agent;->isRobot()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeInitiativeRedirectMessage()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    new-instance v1, Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;

    invoke-direct {v1, p1}, Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->addMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->scrollListViewToBottom(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private addNoAgentLeaveMsg()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectQueueMessage:Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;->getQueueSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addRedirectQueueLeaveMsg(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeRedirectQueueLeaveMsg()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/meiqia/meiqiasdk/model/NoAgentLeaveMessage;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeNoAgentLeaveMsg()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToNoAgentState()V

    :cond_2
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    new-instance v1, Lcom/meiqia/meiqiasdk/model/NoAgentLeaveMessage;

    invoke-direct {v1}, Lcom/meiqia/meiqiasdk/model/NoAgentLeaveMessage;-><init>()V

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->addMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->scrollListViewToBottom(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private addRedirectQueueLeaveMsg(I)V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeNoAgentLeaveMsg()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToQueue()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeRedirectQueueLeaveMsg()V

    new-instance v0, Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    invoke-direct {v0, p1}, Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;-><init>(I)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectQueueMessage:Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectQueueMessage:Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->addMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->scrollListViewToBottom(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private applyCustomUIConfig()V
    .locals 6

    sget v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->backArrowIconResId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mBackIv:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->backArrowIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    const v1, 0x106000b

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_activity_title_bg:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleBackgroundResId:I

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITintDrawable(Landroid/view/View;III)V

    sget v0, Lcom/meiqia/meiqiasdk/R$color;->mq_activity_title_textColor:I

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleTextColorResId:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mBackTv:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectHumanTv:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mBackTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITitleGravity(Landroid/widget/TextView;Landroid/widget/TextView;)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->photo_select_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_image_normal:I

    sget v2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_image_active:I

    invoke-static {v0, v1, v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->tintPressedIndicator(Landroid/widget/ImageView;II)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->camera_select_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_camera_normal:I

    sget v2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_camera_active:I

    invoke-static {v0, v1, v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->tintPressedIndicator(Landroid/widget/ImageView;II)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->evaluate_select_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_evaluate_normal:I

    sget v2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_evaluate_active:I

    invoke-static {v0, v1, v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->tintPressedIndicator(Landroid/widget/ImageView;II)V

    return-void
.end method

.method private cancelAllDownload()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    instance-of v2, v1, Lcom/meiqia/meiqiasdk/model/FileMessage;

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v2

    check-cast v1, Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->cancelDownload(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkAndPreSend(Lcom/meiqia/meiqiasdk/model/BaseMessage;)Z
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectQueueMessage:Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-nez v0, :cond_1

    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_allocate_queue_tip:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->popTopTip(I)V

    return v1

    :cond_1
    const-string v0, "sending"

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/controller/MQController;->getCurrentClientId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, p1, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->setUnSendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQTimeUtils;->refreshMQTimeItem(Ljava/util/List;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method private checkAudioPermission()Z
    .locals 2

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkIfNeedUpdateClient(Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clientId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "customizedId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;->onFinish()V

    goto :goto_3

    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v1

    new-instance v2, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$11;

    invoke-direct {v2, p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$11;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/meiqia/core/MQManager;->setCurrentClient(Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V

    :goto_3
    return-void
.end method

.method private checkSendable()Z
    .locals 6

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mIsAllocatingAgent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_allocate_agent_tip:I

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHasLoadData:Z

    if-nez v0, :cond_1

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_data_is_loading:I

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectQueueMessage:Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-nez v0, :cond_2

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_allocate_queue_tip:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->popTopTip(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/Agent;->isRobot()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mLastSendRobotMessageTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_send_robot_msg_time_limit_tip:I

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    return v1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mLastSendRobotMessageTime:J

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private checkStorageAndCameraPermission()Z
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.CAMERA"

    if-nez v1, :cond_1

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0
.end method

.method private checkStoragePermission()Z
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method private chooseFromPhotoPicker()V
    .locals 3

    const/4 v0, 0x3

    :try_start_0
    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_send:I

    invoke-virtual {p0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->newIntent(Landroid/content/Context;Ljava/io/File;ILjava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_photo_not_support:I

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private choosePhotoFromCamera()V
    .locals 4

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->closeKeyboard(Landroid/app/Activity;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getPicStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getPicStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCameraPicPath:Ljava/lang/String;

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "_data"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_photo_not_support:I

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    :goto_1
    return-void
.end method

.method private cleanDupMessages(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private cleanVoiceMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/meiqia/meiqiasdk/util/MQConfig;->isVoiceSwitchOpen:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createAndSendImageMessage(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/meiqia/meiqiasdk/model/PhotoMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->setLocalPath(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    return-void
.end method

.method private createAndSendTextMessage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/meiqia/meiqiasdk/model/TextMessage;

    invoke-direct {v0, p1}, Lcom/meiqia/meiqiasdk/model/TextMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    return-void
.end method

.method private findViews()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mBackRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mBackTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mBackIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->redirect_human_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectHumanTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->chat_body_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatBodyRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->messages_lv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->input_et:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->emoji_select_btn:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEmojiSelectBtn:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->customKeyboardLayout:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->send_text_btn:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mSendTextBtn:Landroid/widget/ImageButton;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->photo_select_btn:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mPhotoSelectBtn:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->camera_select_btn:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCameraSelectBtn:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->mic_select_btn:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceBtn:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->evaluate_select_btn:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEvaluateBtn:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->progressbar:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mLoadProgressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->swipe_refresh_layout:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->emoji_select_indicator:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEmojiSelectIndicator:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->emoji_select_img:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEmojiSelectImg:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->conversation_voice_indicator:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceSelectIndicator:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->conversation_voice_img:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceSelectImg:Landroid/widget/ImageView;

    return-void
.end method

.method private forceRedirectHuman()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getCurrentAgent()Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getCurrentAgent()Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/Agent;->isRobot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->setForceRedirectHuman(Z)V

    invoke-direct {p0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setClientOnline(Z)V

    :cond_0
    return-void
.end method

.method private getClientAvatarUrl()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clientInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "avatar"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getClientPositionInQueue()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getIsWaitingInQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$14;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$14;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-interface {v0, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->getClientPositionInQueue(Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V

    :cond_0
    return-void
.end method

.method private getMessageDataFromDatabaseAndLoad()V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->MESSAGE_PAGE_COUNT:I

    new-instance v4, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;

    invoke-direct {v4, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meiqia/meiqiasdk/controller/MQController;->getMessagesFromDatabase(JILcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V

    return-void
.end method

.method private getMessageFromServiceAndLoad()V
    .locals 1

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-direct {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkIfNeedUpdateClient(Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;)V

    return-void
.end method

.method private hiddenAgentStatusAndRedirectHuman()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectHumanTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEvaluateBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideEmojiSelectIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEmojiSelectIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEmojiSelectImg:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_emoji_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEmojiSelectImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method

.method private hideVoiceSelectIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceSelectIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceSelectImg:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_mic_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceSelectImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    :cond_0
    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQTimeUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$1;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mSoundPoolManager:Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

    new-instance v0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1, v2}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/util/List;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceBtn:Landroid/view/View;

    sget-boolean v1, Lcom/meiqia/meiqiasdk/util/MQConfig;->isVoiceSwitchOpen:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEvaluateBtn:Landroid/view/View;

    sget-boolean v1, Lcom/meiqia/meiqiasdk/util/MQConfig;->isEvaluateSwitchOpen:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v1, p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->init(Landroid/app/Activity;Landroid/widget/EditText;Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;)V

    iput-boolean v3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isDestroy:Z

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->scheduler_after_client_send_msg:Z

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isNeedDelayOnline:Z

    return-void
.end method

.method private inputting(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0, p1}, Lcom/meiqia/meiqiasdk/controller/MQController;->sendClientInputtingWithContent(Ljava/lang/String;)V

    return-void
.end method

.method private isDupMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)Z
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-virtual {v1, p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private loadData()V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQTimeUtils;->refreshMQTimeItem(Ljava/util/List;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mLoadProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getClientAvatarUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sending"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "arrived"

    invoke-virtual {v2, v3}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ending"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isBlackState:Z

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    :goto_1
    sget-boolean v3, Lcom/meiqia/meiqiasdk/util/MQConfig;->isShowClientAvatar:Z

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getItemViewType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setAvatar(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isBlackState:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_blacklist_tips:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addBlacklistTip(I)V

    :cond_4
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->scrollListViewToBottom(Landroid/widget/AbsListView;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->downloadAndNotifyDataSetChanged(Ljava/util/List;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHasLoadData:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    invoke-virtual {p0, p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->onLoadDataComplete(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHasLoadData:Z

    return-void
.end method

.method private loadMoreDataFromDatabase()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getCreatedOn()J

    move-result-wide v0

    :cond_0
    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    sget v3, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->MESSAGE_PAGE_COUNT:I

    new-instance v4, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$9;

    invoke-direct {v4, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$9;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/meiqia/meiqiasdk/controller/MQController;->getMessagesFromDatabase(JILcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V

    return-void
.end method

.method private loadMoreDataFromService()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getCreatedOn()J

    move-result-wide v0

    :cond_0
    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    sget v3, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->MESSAGE_PAGE_COUNT:I

    new-instance v4, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$8;

    invoke-direct {v4, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$8;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/meiqia/meiqiasdk/controller/MQController;->getMessageFromService(JILcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V

    return-void
.end method

.method private receiveNewMsg(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isDupMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/meiqia/meiqiasdk/util/MQConfig;->isVoiceSwitchOpen:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isBlackState:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQTimeUtils;->refreshMQTimeItem(Ljava/util/List;)V

    instance-of v0, p1, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/meiqia/meiqiasdk/model/BaseMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->downloadAndNotifyDataSetChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/meiqia/meiqiasdk/model/RobotMessage;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redirect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->forceRedirectHuman()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reply"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addNoAgentLeaveMsg()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "queueing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->forceRedirectHuman()V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manual_redirect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_manual_redirect_tip:I

    invoke-direct {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addInitiativeRedirectMessage(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    :goto_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->scrollListViewToBottom(Landroid/widget/AbsListView;)V

    :cond_8
    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isPause:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/meiqia/meiqiasdk/util/MQConfig;->isSoundSwitchOpen:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mSoundPoolManager:Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

    sget v1, Lcom/meiqia/meiqiasdk/R$raw;->mq_new_message:I

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->playSound(I)V

    :cond_9
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getCreatedOn()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/meiqia/meiqiasdk/controller/MQController;->saveConversationLastMessageTime(J)V

    :cond_a
    return-void
.end method

.method private refreshEnterpriseConfig()V
    .locals 2

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->refreshRedirectHumanBtn()V

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$20;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$20;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-interface {v0, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->refreshEnterpriseConfig(Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V

    return-void
.end method

.method private refreshRedirectHumanBtn()V
    .locals 1

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->robotSettings:Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;->isShow_switch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mIsShowRedirectHumanButton:Z

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setCurrentAgent(Lcom/meiqia/meiqiasdk/model/Agent;)V

    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$1;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mMessageReceiver:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "agent_inputting_action"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "new_msg_received_action"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "agent_change_action"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "invite_evaluation"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "action_agent_status_update_event"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "action_black_add"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "action_black_del"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "action_queueing_remove"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "action_queueing_init_conv"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "end_conv_agent"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "end_conv_timeout"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "socket_open"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mMessageReceiver:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;

    invoke-direct {v0, p0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$1;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mNetworkChangeReceiver:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mNetworkChangeReceiver:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeInitiativeRedirectMessage()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    instance-of v1, v1, Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private removeNoAgentLeaveMsg()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    instance-of v1, v1, Lcom/meiqia/meiqiasdk/model/NoAgentLeaveMessage;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private removeRedirectQueueLeaveMsg()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    instance-of v1, v1, Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectQueueMessage:Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    return-void
.end method

.method private renameVoiceFilename(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 3

    instance-of v0, p1, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->renameVoiceFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/meiqia/meiqiasdk/model/BaseMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->downloadAndNotifyDataSetChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private sendDelayMessages()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->delaySendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->delaySendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setCreatedOn(J)V

    invoke-virtual {p0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->delaySendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private sendGetClientPositionInQueueMsg()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getIsWaitingInQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToQueue()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private sendPreMessage()V
    .locals 5

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getIsWaitingInQueue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preSendText"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "preSendImagePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/meiqia/meiqiasdk/model/TextMessage;

    invoke-direct {v4, v0}, Lcom/meiqia/meiqiasdk/model/TextMessage;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->delaySendList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->createAndSendImageMessage(Ljava/io/File;)V

    :cond_1
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method private setClientOnline(Z)V
    .locals 4

    if-nez p1, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setCurrentAgent(Lcom/meiqia/meiqiasdk/model/Agent;)V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mIsAllocatingAgent:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isNeedDelayOnline:Z

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToAllocatingAgent()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clientId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "customizedId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    new-instance v3, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;

    invoke-direct {v3, p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)V

    invoke-interface {v2, v1, v0, v3}, Lcom/meiqia/meiqiasdk/controller/MQController;->setCurrentClientOnline(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;)V

    :goto_2
    return-void
.end method

.method private setCurrentAgent(Lcom/meiqia/meiqiasdk/model/Agent;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectQueueMessage:Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->getIsWaitingInQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToNoAgentState()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/Agent;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->updateAgentOnlineOfflineStatusAndRedirectHuman()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeLeaveMessageTip()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/Agent;->isRobot()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeNoAgentLeaveMsg()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeInitiativeRedirectMessage()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->removeRedirectQueueLeaveMsg()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setListeners()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mBackRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectHumanTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mSendTextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mPhotoSelectBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCameraSelectBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEvaluateBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->inputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$2;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$2;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEmojiSelectBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$3;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$3;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$4;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$4;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$5;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$5;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private setOrUpdateClientInfo()V
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clientInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v2, v0, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->setClientInfo(Ljava/util/Map;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "updateClientInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v2, v0, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->updateClientInfo(Ljava/util/Map;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V

    :cond_1
    return-void
.end method

.method private showEmojiSelectIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEmojiSelectIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEmojiSelectImg:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_emoji_active:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEmojiSelectImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_indicator_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private showEvaluateDialog()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->closeAllKeyboard()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEvaluateDialog:Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/meiqia/core/bean/MQEnterpriseConfig;->serviceEvaluationConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;->getPrompt_text()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEvaluateDialog:Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEvaluateDialog:Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;

    invoke-virtual {v0, p0}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->setCallback(Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEvaluateDialog:Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->show()V

    :cond_1
    return-void
.end method

.method private showVoiceSelectIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceSelectIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceSelectImg:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_mic_active:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceSelectImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_indicator_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private updateAgentOnlineOfflineStatusAndRedirectHuman()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getCurrentAgent()Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/Agent;->isOnline()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    sget v3, Lcom/meiqia/meiqiasdk/R$drawable;->mq_shape_agent_status_offline:I

    invoke-virtual {v1, v2, v2, v3, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/Agent;->isOffDuty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    sget v3, Lcom/meiqia/meiqiasdk/R$drawable;->mq_shape_agent_status_off_duty:I

    invoke-virtual {v1, v2, v2, v3, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    sget v3, Lcom/meiqia/meiqiasdk/R$drawable;->mq_shape_agent_status_online:I

    invoke-virtual {v1, v2, v2, v3, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/Agent;->isRobot()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectHumanTv:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mIsShowRedirectHumanButton:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEvaluateBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectHumanTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mEvaluateBtn:Landroid/view/View;

    sget-boolean v3, Lcom/meiqia/meiqiasdk/util/MQConfig;->isEvaluateSwitchOpen:Z

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hiddenAgentStatusAndRedirectHuman()V

    :goto_2
    return-void
.end method

.method private updateResendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isBlackState:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getItemViewType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQTimeUtils;->refreshMQTimeItem(Ljava/util/List;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->addMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    const/16 p1, 0x4e24

    if-ne p2, p1, :cond_1

    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_blacklist_tips:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addBlacklistTip(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->scrollContentToBottom()V

    return-void
.end method


# virtual methods
.method protected addBlacklistTip(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isBlackState:Z

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToNoAgentState()V

    new-instance v0, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setItemViewType(I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->addMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    return-void
.end method

.method protected addDirectAgentMessageTip(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/meiqia/meiqiasdk/model/AgentChangeMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/AgentChangeMessage;-><init>()V

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/model/AgentChangeMessage;->setAgentNickname(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected addEvaluateMessageTip(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/meiqia/meiqiasdk/model/EvaluateMessage;

    invoke-direct {v0, p1, p2}, Lcom/meiqia/meiqiasdk/model/EvaluateMessage;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->addMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    return-void
.end method

.method protected addLeaveMessageTip()V
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToNoAgentState()V

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isAddLeaveTip:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/meiqia/meiqiasdk/model/LeaveTipMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/LeaveTipMessage;-><init>()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_leave_msg_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v2}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->getIntro()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/LeaveTipMessage;->setContent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->addMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isAddLeaveTip:Z

    :cond_2
    return-void
.end method

.method protected changeTitleToAllocatingAgent()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_allocate_agent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hiddenAgentStatusAndRedirectHuman()V

    return-void
.end method

.method protected changeTitleToInputting()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_title_inputting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->updateAgentOnlineOfflineStatusAndRedirectHuman()V

    return-void
.end method

.method protected changeTitleToNetErrorState()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_title_net_not_work:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hiddenAgentStatusAndRedirectHuman()V

    return-void
.end method

.method protected changeTitleToNoAgentState()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_title_leave_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hiddenAgentStatusAndRedirectHuman()V

    return-void
.end method

.method protected changeTitleToQueue()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_allocate_queue_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hiddenAgentStatusAndRedirectHuman()V

    return-void
.end method

.method protected changeTitleToUnknownErrorState()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_title_unknown_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hiddenAgentStatusAndRedirectHuman()V

    return-void
.end method

.method public executeEvaluate(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkSendable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationId:Ljava/lang/String;

    new-instance v2, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$18;

    invoke-direct {v2, p0, p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$18;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;ILjava/lang/String;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/meiqia/meiqiasdk/controller/MQController;->executeEvaluate(Ljava/lang/String;ILjava/lang/String;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V

    return-void
.end method

.method public getCameraPicFile()Ljava/io/File;
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCameraPicPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getCameraPicFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->createAndSendImageMessage(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-static {p3}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->getSelectedImages(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->createAndSendImageMessage(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onAudioRecorderFinish(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkSendable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;-><init>()V

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->setDuration(I)V

    invoke-virtual {v0, p2}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->setLocalPath(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    return-void
.end method

.method public onAudioRecorderNoPermission()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_recorder_no_permission:I

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    return-void
.end method

.method public onAudioRecorderTooShort()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_record_record_time_is_short:I

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_rl:I

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->closeKeyboard(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->onBackPressed()V

    goto/16 :goto_2

    :cond_0
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->emoji_select_btn:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isEmotionKeyboardVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideEmojiSelectIndicator()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->showEmojiSelectIndicator()V

    :goto_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideVoiceSelectIndicator()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->toggleEmotionOriginKeyboard()V

    goto/16 :goto_2

    :cond_2
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->send_text_btn:I

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkSendable()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->createAndSendTextMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->photo_select_btn:I

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkSendable()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkStoragePermission()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideEmojiSelectIndicator()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideVoiceSelectIndicator()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->chooseFromPhotoPicker()V

    goto :goto_2

    :cond_6
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->camera_select_btn:I

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkSendable()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkStorageAndCameraPermission()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideEmojiSelectIndicator()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideVoiceSelectIndicator()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->choosePhotoFromCamera()V

    goto :goto_2

    :cond_8
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->mic_select_btn:I

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkSendable()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkAudioPermission()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isVoiceKeyboardVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideVoiceSelectIndicator()V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->showVoiceSelectIndicator()V

    :goto_1
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideEmojiSelectIndicator()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->toggleVoiceOriginKeyboard()V

    goto :goto_2

    :cond_b
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->evaluate_select_btn:I

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideEmojiSelectIndicator()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideVoiceSelectIndicator()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->showEvaluateDialog()V

    goto :goto_2

    :cond_c
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->redirect_human_tv:I

    if-ne p1, v0, :cond_d

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->forceRedirectHuman()V

    :cond_d
    :goto_2
    return-void
.end method

.method public onClickForceRedirectHuman()V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->forceRedirectHuman()V

    return-void
.end method

.method public onClickLeaveMessage()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClickRobotMenuItem(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/meiqia/meiqiasdk/model/TextMessage;

    invoke-direct {v0, p1}, Lcom/meiqia/meiqiasdk/model/TextMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->onConversationOpen()V

    if-eqz p1, :cond_0

    const-string v0, "mCameraPicPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCameraPicPath:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_activity_conversation:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->findViews()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->init()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setListeners()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->applyCustomUIConfig()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->registerReceiver()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->refreshEnterpriseConfig()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getCurrentClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getUnSendTextMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getActivityLifecycleCallback()Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;->onActivityCreated(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->closeKeyboard(Landroid/app/Activity;)V

    :try_start_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mSoundPoolManager:Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->release()V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mMessageReceiver:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mNetworkChangeReceiver:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isDestroy:Z

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->cancelAllDownload()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->onConversationClose()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getCurrentClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->setUnSendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getActivityLifecycleCallback()Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;->onActivityDestroyed(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onEvaluateRobotAnswer(Lcom/meiqia/meiqiasdk/model/RobotMessage;I)V
    .locals 7

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getQuestionId()J

    move-result-wide v3

    new-instance v6, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;

    invoke-direct {v6, p0, p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/RobotMessage;I)V

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/meiqia/meiqiasdk/controller/MQController;->evaluateRobotAnswer(JJILcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;)V

    return-void
.end method

.method public onFileMessageDownloadFailure(Lcom/meiqia/meiqiasdk/model/FileMessage;ILjava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isDestroy:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_download_error:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->popTopTip(I)V

    return-void
.end method

.method public onFileMessageExpired(Lcom/meiqia/meiqiasdk/model/FileMessage;)V
    .locals 0

    iget-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isDestroy:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_expired_top_tip:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->popTopTip(I)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isEmotionKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCustomKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->closeEmotionKeyboard()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLoadDataComplete(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendPreMessage()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isPause:Z

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getActivityLifecycleCallback()Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;->onActivityPaused(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, v0

    if-nez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCameraSelectBtn:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_1
    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_camera_or_storage_no_permission:I

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_camera_or_storage_no_permission:I

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    array-length p1, p3

    if-lez p1, :cond_4

    aget p1, p3, v0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mVoiceBtn:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_4
    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_recorder_no_permission:I

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    array-length p1, p3

    if-lez p1, :cond_6

    aget p1, p3, v0

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_sdcard_no_permission:I

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isNeedDelayOnline:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getCurrentAgent()Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHasLoadData:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->public_nickname:Ljava/lang/String;

    const-string v2, "null"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_title_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mLoadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getMessageFromServiceAndLoad()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setClientOnline(Z)V

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isPause:Z

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getActivityLifecycleCallback()Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;->onActivityResumed(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCameraPicPath:Ljava/lang/String;

    const-string v1, "mCameraPicPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getActivityLifecycleCallback()Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;->onActivitySaveInstanceState(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHasLoadData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->openService()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendGetClientPositionInQueueMsg()V

    :cond_0
    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getActivityLifecycleCallback()Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;->onActivityStarted(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->stopPlayVoice()V

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->release()V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getCreatedOn()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/meiqia/meiqiasdk/controller/MQController;->saveConversationOnStopTime(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/meiqia/meiqiasdk/controller/MQController;->saveConversationOnStopTime(J)V

    :goto_0
    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getActivityLifecycleCallback()Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;->onActivityStopped(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideEmojiSelectIndicator()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->hideVoiceSelectIndicator()V

    const/4 p1, 0x0

    return p1
.end method

.method public popTopTip(I)V
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTopTipViewTv:Landroid/widget/TextView;

    const-wide/16 v1, 0x12c

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/meiqia/meiqiasdk/R$layout;->mq_top_pop_tip:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTopTipViewTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTopTipViewTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meiqia/meiqiasdk/R$dimen;->mq_top_tip_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatBodyRl:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTopTipViewTv:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTopTipViewTv:Landroid/widget/TextView;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v3, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTopTipViewTv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mAutoDismissTopTipRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$6;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;I)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mAutoDismissTopTipRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mAutoDismissTopTipRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mAutoDismissTopTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTopTipViewTv:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mTopTipViewTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$7;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$7;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void
.end method

.method protected removeLeaveMessageTip()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    instance-of v1, v1, Lcom/meiqia/meiqiasdk/model/LeaveTipMessage;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isAddLeaveTip:Z

    return-void
.end method

.method public resendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mRedirectQueueMessage:Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mCurrentAgent:Lcom/meiqia/meiqiasdk/model/Agent;

    if-nez v0, :cond_0

    sget p1, Lcom/meiqia/meiqiasdk/R$string;->mq_allocate_queue_tip:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->popTopTip(I)V

    return-void

    :cond_0
    const-string v0, "sending"

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$16;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$16;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-interface {v0, p1, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->resendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V

    return-void
.end method

.method public scrollContentToBottom()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->scrollListViewToBottom(Landroid/widget/AbsListView;)V

    return-void
.end method

.method public sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->scheduler_after_client_send_msg:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isNeedDelayOnline:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->isNeedDelayOnline:Z

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mHasLoadData:Z

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mChatMsgAdapter:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->closeKeyboard(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mLoadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v1, "sending"

    invoke-virtual {p1, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setStatus(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->delaySendList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of p1, p1, Lcom/meiqia/meiqiasdk/model/TextMessage;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mInputEt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setClientOnline(Z)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkAndPreSend(Lcom/meiqia/meiqiasdk/model/BaseMessage;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mController:Lcom/meiqia/meiqiasdk/controller/MQController;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    invoke-interface {v0, p1, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->mConversationListView:Landroid/widget/ListView;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->scrollListViewToBottom(Landroid/widget/AbsListView;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mailto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getOnLinkClickCallback()Lcom/meiqia/meiqiasdk/callback/OnLinkClickCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getOnLinkClickCallback()Lcom/meiqia/meiqiasdk/callback/OnLinkClickCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/meiqia/meiqiasdk/callback/OnLinkClickCallback;->onClick(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public superStartActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
