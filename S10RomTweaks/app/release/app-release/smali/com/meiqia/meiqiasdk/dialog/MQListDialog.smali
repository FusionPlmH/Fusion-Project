.class public Lcom/meiqia/meiqiasdk/dialog/MQListDialog;
.super Landroid/app/Dialog;
.source "MQListDialog.java"


# instance fields
.field private mListview:Landroid/widget/ListView;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/meiqia/meiqiasdk/R$style;->MQDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_dialog_ticket_categry:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->setContentView(I)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_comfirm_title:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->list_lv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->mListview:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->mListview:Landroid/widget/ListView;

    new-instance v7, Landroid/widget/SimpleAdapter;

    sget v4, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_text_list:I

    const-string v1, "name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [I

    const/4 v0, 0x0

    const v1, 0x1020014

    aput v1, v6, v0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->mListview:Landroid/widget/ListView;

    new-instance p2, Lcom/meiqia/meiqiasdk/dialog/MQListDialog$1;

    invoke-direct {p2, p0, p4}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog$1;-><init>(Lcom/meiqia/meiqiasdk/dialog/MQListDialog;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
