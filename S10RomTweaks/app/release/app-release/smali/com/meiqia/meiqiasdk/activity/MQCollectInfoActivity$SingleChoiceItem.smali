.class Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;
.super Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;
.source "MQCollectInfoActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleChoiceItem"
.end annotation


# instance fields
.field private choices:Ljava/lang/String;

.field radioGroup:Landroid/widget/RadioGroup;

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object p5, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->choices:Ljava/lang/String;

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->initData()V

    return-void
.end method

.method private initData()V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->choices:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_form_radio_btn:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setId(I)V

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v4, Lcom/meiqia/meiqiasdk/R$drawable;->mq_radio_btn_uncheck:I

    sget v5, Lcom/meiqia/meiqiasdk/R$drawable;->mq_radio_btn_checked:I

    invoke-static {v2, v4, v5}, Lcom/meiqia/meiqiasdk/util/MQUtils;->tintCompoundButton(Landroid/widget/CompoundButton;II)V

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->radioGroup:Landroid/widget/RadioGroup;

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v5, v6}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->rootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method findViews()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_form_type_single_choice:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->rootView:Landroid/view/View;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->rootView:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->titleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->rootView:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->radio_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->radioGroup:Landroid/widget/RadioGroup;

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->validState()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;->checkValid()Z

    :goto_0
    return-void
.end method
