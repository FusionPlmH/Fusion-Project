.class Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;
.super Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;
.source "MQCollectInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextItem"
.end annotation


# instance fields
.field contentEt:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-direct/range {p0 .. p6}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->setListeners()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->setInputType()V

    return-void
.end method

.method private setInputType()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->fieldName:Ljava/lang/String;

    const-string v1, "tel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->contentEt:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->fieldName:Ljava/lang/String;

    const-string v1, "qq"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->fieldName:Ljava/lang/String;

    const-string v1, "age"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->fieldName:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->contentEt:Landroid/widget/EditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->contentEt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setListeners()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->contentEt:Landroid/widget/EditText;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method findViews()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_form_type_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->rootView:Landroid/view/View;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->rootView:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->titleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->rootView:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->content_et:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->contentEt:Landroid/widget/EditText;

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->contentEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->contentEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->contentEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
