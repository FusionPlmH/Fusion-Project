.class Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;
.super Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;
.source "MQCollectInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CodeAuthItem"
.end annotation


# instance fields
.field private authCodeEt:Landroid/widget/EditText;

.field private authCodeIv:Landroid/widget/ImageView;

.field private captcha_image:Ljava/lang/String;

.field private captcha_token:Ljava/lang/String;

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->authCodeIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$1;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->captcha_image:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->captcha_image:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->captcha_token:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->authCodeIv:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method findViews()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_form_type_auth_code:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->rootView:Landroid/view/View;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->rootView:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->titleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->rootView:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->auth_code_et:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->authCodeEt:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->rootView:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->auth_code_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->authCodeIv:Landroid/widget/ImageView;

    return-void
.end method

.method public getCaptcha_token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->captcha_token:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->authCodeEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->authCodeEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public refreshAuthCode()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->authCodeIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->authCodeIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->authCodeEt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
