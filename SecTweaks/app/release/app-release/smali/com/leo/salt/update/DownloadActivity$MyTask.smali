.class Lcom/leo/salt/update/DownloadActivity$MyTask;
.super Landroid/os/AsyncTask;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/update/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTask"
.end annotation


# instance fields
.field private fq:Lcom/leo/salt/update/FQ;

.field private fq1:Lcom/leo/salt/update/FQ;

.field final synthetic this$0:Lcom/leo/salt/update/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/update/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/leo/salt/utils/Constants;->OtaUrl:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rom_versions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->fq1:Lcom/leo/salt/update/FQ;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rom_versions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/leo/salt/update/FQ;

    invoke-direct {v0}, Lcom/leo/salt/update/FQ;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->fq1:Lcom/leo/salt/update/FQ;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->fq1:Lcom/leo/salt/update/FQ;

    invoke-virtual {v2, v0}, Lcom/leo/salt/update/FQ;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "rom_date"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->fq1:Lcom/leo/salt/update/FQ;

    invoke-virtual {v2, v0}, Lcom/leo/salt/update/FQ;->setContent(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "ota_versions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->fq1:Lcom/leo/salt/update/FQ;

    invoke-virtual {v2, v0}, Lcom/leo/salt/update/FQ;->setTime(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "ota_date"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->fq1:Lcom/leo/salt/update/FQ;

    invoke-virtual {v2, v0}, Lcom/leo/salt/update/FQ;->setOTA(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "push"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->fq1:Lcom/leo/salt/update/FQ;

    invoke-virtual {v2, v0}, Lcom/leo/salt/update/FQ;->setOtaPush(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "stop_date"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->fq1:Lcom/leo/salt/update/FQ;

    invoke-virtual {v2, v0}, Lcom/leo/salt/update/FQ;->setOtaStopDate(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "changelog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->fq1:Lcom/leo/salt/update/FQ;

    invoke-virtual {v2, v0}, Lcom/leo/salt/update/FQ;->setChangeLog(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_7
    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v0}, Lcom/leo/salt/update/DownloadActivity;->access$000(Lcom/leo/salt/update/DownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {p1}, Lcom/leo/salt/update/DownloadActivity;->access$900(Lcom/leo/salt/update/DownloadActivity;)Lcom/leo/salt/update/DownloadActivity$OTAanalysis;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/update/DownloadActivity$OTAanalysis;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {p1}, Lcom/leo/salt/update/DownloadActivity;->access$800(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/leo/salt/update/DownloadActivity$MyTask;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {v0}, Lcom/leo/salt/update/DownloadActivity;->access$800(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
