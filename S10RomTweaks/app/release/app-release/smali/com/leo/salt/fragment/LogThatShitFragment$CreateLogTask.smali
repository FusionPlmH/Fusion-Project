.class Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;
.super Landroid/os/AsyncTask;
.source "LogThatShitFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/fragment/LogThatShitFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateLogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/leo/salt/fragment/LogThatShitFragment;


# direct methods
.method private constructor <init>(Lcom/leo/salt/fragment/LogThatShitFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->mException:Ljava/lang/Exception;

    return-void
.end method

.method synthetic constructor <init>(Lcom/leo/salt/fragment/LogThatShitFragment;Lcom/leo/salt/fragment/LogThatShitFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;-><init>(Lcom/leo/salt/fragment/LogThatShitFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 5

    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/leo/salt/fragment/LogThatShitFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CreateLogTask: invalid argument count"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-virtual {v2}, Lcom/leo/salt/fragment/LogThatShitFragment;->makeLogcat()V

    iget-object v2, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-static {v2}, Lcom/leo/salt/fragment/LogThatShitFragment;->access$200(Lcom/leo/salt/fragment/LogThatShitFragment;)Z

    :cond_1
    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-virtual {v3}, Lcom/leo/salt/fragment/LogThatShitFragment;->makeKmsg()V

    iget-object v3, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-static {v3}, Lcom/leo/salt/fragment/LogThatShitFragment;->access$200(Lcom/leo/salt/fragment/LogThatShitFragment;)Z

    :cond_2
    const/4 v3, 0x2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-virtual {v4}, Lcom/leo/salt/fragment/LogThatShitFragment;->makeDmesg()V

    iget-object v4, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-static {v4}, Lcom/leo/salt/fragment/LogThatShitFragment;->access$200(Lcom/leo/salt/fragment/LogThatShitFragment;)Z

    :cond_3
    iget-object v4, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-static {v4}, Lcom/leo/salt/fragment/LogThatShitFragment;->access$300(Lcom/leo/salt/fragment/LogThatShitFragment;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v4, v0, v2, p1}, Lcom/leo/salt/fragment/LogThatShitFragment;->access$400(Lcom/leo/salt/fragment/LogThatShitFragment;ZZZ)V
    :try_end_0
    .catch Lcom/leo/salt/tweaks/resource/SuShell$SuDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    iput-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->mException:Ljava/lang/Exception;

    goto :goto_0

    :catch_1
    move-exception p1

    iput-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->mException:Ljava/lang/Exception;

    :cond_4
    :goto_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->mException:Ljava/lang/Exception;

    instance-of p1, p1, Lcom/leo/salt/tweaks/resource/SuShell$SuDeniedException;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-virtual {p1}, Lcom/leo/salt/fragment/LogThatShitFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-virtual {v0}, Lcom/leo/salt/fragment/LogThatShitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_su_dialog_title"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-static {p1}, Lcom/leo/salt/fragment/LogThatShitFragment;->access$300(Lcom/leo/salt/fragment/LogThatShitFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-virtual {p1}, Lcom/leo/salt/fragment/LogThatShitFragment;->logZipDialog()V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-virtual {v1}, Lcom/leo/salt/fragment/LogThatShitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    const v2, 0x7f1001ba

    invoke-virtual {v1, v2}, Lcom/leo/salt/fragment/LogThatShitFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment$CreateLogTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
