.class Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;
.super Landroid/os/AsyncTask;
.source "BatteryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/BatteryPicker;
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
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/BatteryPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$100(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "custom_battery_authorpt"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$002(Lcom/leo/salt/tweaks/view/BatteryPicker;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$300(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "custom_battery_compilerpt"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$202(Lcom/leo/salt/tweaks/view/BatteryPicker;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "leorom.intent.category.BATTERY_MODULE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$400(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$500(Lcom/leo/salt/tweaks/view/BatteryPicker;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$600(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "select_battery_title"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/BatteryPicker;->showSnack(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/BatteryPicker;->mBatteries:Ljava/util/List;

    new-instance v0, Lcom/leo/salt/tweaks/view/BatteryPicker$AlphabeticalComparator;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$700(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/leo/salt/tweaks/view/BatteryPicker$AlphabeticalComparator;-><init>(Lcom/leo/salt/tweaks/view/BatteryPicker;Landroid/content/Context;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    new-instance v0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$800(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0036

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    iget-object v3, v3, Lcom/leo/salt/tweaks/view/BatteryPicker;->mBatteries:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;-><init>(Lcom/leo/salt/tweaks/view/BatteryPicker;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p1, Lcom/leo/salt/tweaks/view/BatteryPicker;->listadapter:Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$900(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/BatteryPicker;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    iget-object v0, v0, Lcom/leo/salt/tweaks/view/BatteryPicker;->listadapter:Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$900(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
