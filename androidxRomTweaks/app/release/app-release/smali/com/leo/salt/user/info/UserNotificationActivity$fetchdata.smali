.class public Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;
.super Landroid/os/AsyncTask;
.source "UserNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/user/info/UserNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "fetchdata"
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
.field final synthetic this$0:Lcom/leo/salt/user/info/UserNotificationActivity;


# direct methods
.method public constructor <init>(Lcom/leo/salt/user/info/UserNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->help()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->LeoFoatJsonServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string p1, ""

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v3, v3, Lcom/leo/salt/user/info/UserNotificationActivity;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/leo/salt/user/info/UserNotificationActivity;->data:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v0, v0, Lcom/leo/salt/user/info/UserNotificationActivity;->data:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    const-string v3, "Date"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/leo/salt/user/info/UserNotificationActivity;->Carnumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    const-string v3, "info"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/leo/salt/user/info/UserNotificationActivity;->Carnumber2:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v1, v1, Lcom/leo/salt/user/info/UserNotificationActivity;->CarNumber_list2:Ljava/util/List;

    iget-object v2, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v2, v2, Lcom/leo/salt/user/info/UserNotificationActivity;->Carnumber2:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v1, v1, Lcom/leo/salt/user/info/UserNotificationActivity;->CarNumber_list:Ljava/util/List;

    iget-object v2, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v2, v2, Lcom/leo/salt/user/info/UserNotificationActivity;->Carnumber:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public help()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v0, v0, Lcom/leo/salt/user/info/UserNotificationActivity;->CN:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v0, v0, Lcom/leo/salt/user/info/UserNotificationActivity;->EN:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v0, v0, Lcom/leo/salt/user/info/UserNotificationActivity;->CarNumber_list2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v0, v0, Lcom/leo/salt/user/info/UserNotificationActivity;->mName:Landroid/widget/TextView;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v0, v0, Lcom/leo/salt/user/info/UserNotificationActivity;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v1, v1, Lcom/leo/salt/user/info/UserNotificationActivity;->CarNumber_list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v0, v0, Lcom/leo/salt/user/info/UserNotificationActivity;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leo/salt/user/info/UserNotificationActivity$fetchdata;->this$0:Lcom/leo/salt/user/info/UserNotificationActivity;

    iget-object v1, v1, Lcom/leo/salt/user/info/UserNotificationActivity;->CarNumber_list2:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
