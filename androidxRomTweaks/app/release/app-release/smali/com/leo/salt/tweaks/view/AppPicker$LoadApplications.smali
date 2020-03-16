.class Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;
.super Landroid/os/AsyncTask;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadApplications"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/AppPicker;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/AppPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/AppPicker;->access$400(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "select_custom_app_title"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/AppPicker;->showSnack(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/AppPicker;->access$200(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/view/AppPicker;->access$500(Lcom/leo/salt/tweaks/view/AppPicker;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/view/AppPicker;->access$102(Lcom/leo/salt/tweaks/view/AppPicker;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    new-instance v0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/AppPicker;->access$100(Lcom/leo/salt/tweaks/view/AppPicker;)Ljava/util/List;

    move-result-object v5

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/AppPicker;->access$200(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const v4, 0x7f0c0034

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;-><init>(Lcom/leo/salt/tweaks/view/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;Lcom/leo/salt/tweaks/view/AppPicker$1;)V

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/view/AppPicker;->access$602(Lcom/leo/salt/tweaks/view/AppPicker;Lcom/leo/salt/tweaks/view/AppPicker$Adapter;)Lcom/leo/salt/tweaks/view/AppPicker$Adapter;

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$onPostExecute$0$AppPicker$LoadApplications(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-virtual {p1, p3}, Lcom/leo/salt/tweaks/view/AppPicker;->onLongClick(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    const/4 p2, 0x1

    const/16 p3, 0xa

    invoke-virtual {p1, p2, p3}, Lcom/leo/salt/tweaks/view/AppPicker;->intVibrator(II)V

    return p2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/AppPicker;->access$800(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/AppPicker;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/AppPicker;->access$600(Lcom/leo/salt/tweaks/view/AppPicker;)Lcom/leo/salt/tweaks/view/AppPicker$Adapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/AppPicker;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/AppPicker;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/tweaks/view/-$$Lambda$AppPicker$LoadApplications$RzOQsIW2LzEnrrSfqvLBnEbX-Ko;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/-$$Lambda$AppPicker$LoadApplications$RzOQsIW2LzEnrrSfqvLBnEbX-Ko;-><init>(Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/AppPicker;->access$800(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
