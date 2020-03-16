.class Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;
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
    name = "MultipleChoiceItem"
.end annotation


# instance fields
.field private checkBoxList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private checkboxContainer:Landroid/widget/LinearLayout;

.field private choices:Ljava/lang/String;

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object p5, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->choices:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->checkBoxList:Ljava/util/List;

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->initData()V

    return-void
.end method

.method private initData()V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->choices:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_form_checkbox:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    sget v3, Lcom/meiqia/meiqiasdk/R$drawable;->mq_checkbox_uncheck:I

    sget v4, Lcom/meiqia/meiqiasdk/R$drawable;->mq_checkbox_unchecked:I

    invoke-static {v2, v3, v4}, Lcom/meiqia/meiqiasdk/util/MQUtils;->tintCompoundButton(Landroid/widget/CompoundButton;II)V

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->checkboxContainer:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v5, v6}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->checkBoxList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->rootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method findViews()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_form_type_multiple_choice:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->rootView:Landroid/view/View;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->rootView:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->titleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->rootView:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->checkbox_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->checkboxContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->checkBoxList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->checkBoxList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;->checkValid()Z

    return-void
.end method
