.class Lcom/leo/salt/update/DownloadActivity$OTAanalysis;
.super Landroid/widget/BaseAdapter;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/update/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OTAanalysis"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/update/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/update/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v0}, Lcom/leo/salt/update/DownloadActivity;->access$000(Lcom/leo/salt/update/DownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v0}, Lcom/leo/salt/update/DownloadActivity;->access$000(Lcom/leo/salt/update/DownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c006b

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/update/ItemTag;

    invoke-direct {p3}, Lcom/leo/salt/update/ItemTag;-><init>()V

    const v0, 0x7f090144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/leo/salt/update/ItemTag;->ROMVersions:Landroid/widget/TextView;

    const v0, 0x7f090143

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/leo/salt/update/ItemTag;->ROMDate:Landroid/widget/TextView;

    const v0, 0x7f09011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/leo/salt/update/ItemTag;->OtaVersions:Landroid/widget/TextView;

    const v0, 0x7f09011b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/leo/salt/update/ItemTag;->OtaDate:Landroid/widget/TextView;

    const v0, 0x7f09005d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/leo/salt/update/ItemTag;->ChangeLog:Landroid/widget/TextView;

    const v0, 0x7f09011e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/leo/salt/update/ItemTag;->OtaStopDate:Landroid/widget/TextView;

    const v0, 0x7f09011d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/leo/salt/update/ItemTag;->OtaPush:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/leo/salt/update/ItemTag;

    iget-object v0, p3, Lcom/leo/salt/update/ItemTag;->ROMVersions:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$100(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getROMVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/leo/salt/update/ItemTag;->ROMDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$200(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$000(Lcom/leo/salt/update/DownloadActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/update/FQ;

    invoke-virtual {v2}, Lcom/leo/salt/update/FQ;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/leo/salt/update/ItemTag;->OtaVersions:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$300(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1002dd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$000(Lcom/leo/salt/update/DownloadActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/update/FQ;

    invoke-virtual {v2}, Lcom/leo/salt/update/FQ;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/leo/salt/update/ItemTag;->OtaDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$400(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$000(Lcom/leo/salt/update/DownloadActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/update/FQ;

    invoke-virtual {v2}, Lcom/leo/salt/update/FQ;->getOTA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/leo/salt/update/ItemTag;->OtaStopDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$500(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1003e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$000(Lcom/leo/salt/update/DownloadActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/update/FQ;

    invoke-virtual {v2}, Lcom/leo/salt/update/FQ;->getOtaStopDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/leo/salt/update/ItemTag;->OtaPush:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$600(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10032f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v2}, Lcom/leo/salt/update/DownloadActivity;->access$000(Lcom/leo/salt/update/DownloadActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/update/FQ;

    invoke-virtual {v2}, Lcom/leo/salt/update/FQ;->getOtaPush()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p3, Lcom/leo/salt/update/ItemTag;->ChangeLog:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v1}, Lcom/leo/salt/update/DownloadActivity;->access$700(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v1}, Lcom/leo/salt/update/DownloadActivity;->access$000(Lcom/leo/salt/update/DownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/update/FQ;

    invoke-virtual {p1}, Lcom/leo/salt/update/FQ;->getChangeLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
