.class public Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQCustomKeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;
    }
.end annotation


# static fields
.field private static final WHAT_CHANGE_TO_EMOTION_KEYBOARD:I = 0x2

.field private static final WHAT_CHANGE_TO_VOICE_KEYBOARD:I = 0x3

.field private static final WHAT_SCROLL_CONTENT_TO_BOTTOM:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;

.field private mContentEt:Landroid/widget/EditText;

.field private mEmotionKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

.field private mHandler:Landroid/os/Handler;

.field private mRecorderKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;-><init>(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;-><init>(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$1;-><init>(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->showEmotionKeyboard()V

    return-void
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->showVoiceKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mCallback:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mContentEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->sendScrollContentToBottomMsg()V

    return-void
.end method

.method private sendScrollContentToBottomMsg()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showEmotionKeyboard()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mEmotionKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->sendScrollContentToBottomMsg()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->closeVoiceKeyboard()V

    return-void
.end method

.method private showVoiceKeyboard()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mRecorderKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->sendScrollContentToBottomMsg()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->closeEmotionKeyboard()V

    return-void
.end method


# virtual methods
.method public changeToEmotionKeyboard()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mContentEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mContentEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mContentEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->closeKeyboard(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->showEmotionKeyboard()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public changeToOriginalKeyboard()V
    .locals 4

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->closeCustomKeyboard()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mContentEt:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->openKeyboard(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public changeToVoiceKeyboard()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->closeKeyboard(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->showVoiceKeyboard()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public closeAllKeyboard()V
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->closeCustomKeyboard()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->closeKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method public closeCustomKeyboard()V
    .locals 0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->closeEmotionKeyboard()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->closeVoiceKeyboard()V

    return-void
.end method

.method public closeEmotionKeyboard()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mEmotionKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->setVisibility(I)V

    return-void
.end method

.method public closeVoiceKeyboard()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mRecorderKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->setVisibility(I)V

    return-void
.end method

.method protected getAttrs()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_layout_custom_keyboard:I

    return v0
.end method

.method protected getViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VT:",
            "Landroid/view/View;",
            ">(I)TVT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/app/Activity;Landroid/widget/EditText;Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mContentEt:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mCallback:Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$Callback;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mContentEt:Landroid/widget/EditText;

    new-instance p2, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$4;

    invoke-direct {p2, p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$4;-><init>(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mContentEt:Landroid/widget/EditText;

    new-instance p2, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$5;

    invoke-direct {p2, p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$5;-><init>(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u7684init\u65b9\u6cd5\u7684\u53c2\u6570\u5747\u4e0d\u80fd\u4e3anull"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected initAttr(ILandroid/content/res/TypedArray;)V
    .locals 0

    return-void
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->emotionKeyboardLayout:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mEmotionKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->recorderKeyboardLayout:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mRecorderKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    return-void
.end method

.method public isCustomKeyboardVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isEmotionKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isVoiceKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isEmotionKeyboardVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mEmotionKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mRecorderKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isVoiceKeyboardVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mRecorderKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected processLogic()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mEmotionKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;

    new-instance v1, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$2;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$2;-><init>(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout;->setCallback(Lcom/meiqia/meiqiasdk/widget/MQEmotionKeyboardLayout$Callback;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->mRecorderKeyboardLayout:Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;

    new-instance v1, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$3;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout$3;-><init>(Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;->setCallback(Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;)V

    return-void
.end method

.method public toggleEmotionOriginKeyboard()V
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isEmotionKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->changeToOriginalKeyboard()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->changeToEmotionKeyboard()V

    :goto_0
    return-void
.end method

.method public toggleVoiceOriginKeyboard()V
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->isVoiceKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->changeToOriginalKeyboard()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQCustomKeyboardLayout;->changeToVoiceKeyboard()V

    :goto_0
    return-void
.end method
