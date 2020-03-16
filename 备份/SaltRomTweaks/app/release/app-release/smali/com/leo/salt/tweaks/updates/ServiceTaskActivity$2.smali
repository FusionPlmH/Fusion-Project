.class Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;
.super Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;
.source "ServiceTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->showLoadDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

.field final synthetic val$a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    iput-object p3, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->val$a:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;-><init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const v0, 0x7f090122

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mState:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const v0, 0x7f09012f

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->access$102(Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const v0, 0x7f090132

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-static {p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->access$202(Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->access$300(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f060047

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-static {}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->access$200()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->DownloadFab()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const v0, 0x7f090148

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mOSname:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const v0, 0x7f09013f

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mNseText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const v0, 0x7f090084

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDetailInfo:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const v0, 0x7f09013e

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->responseText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const v0, 0x7f090085

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDetailText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const v0, 0x7f090149

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->ROMINFO:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    iget-object p1, p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mDetailInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const-string v1, "ota_list_push"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    iget-object p1, p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mNseText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const-string v1, "ota_list_versions_trait"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    iget-object p1, p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->mOSname:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    const-string v1, "ota_list_versions_info"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTATextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2$1;-><init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;->onPreExecute()V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->val$a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->dialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->val$a:Landroid/content/Context;

    const-string v2, "load_data"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
