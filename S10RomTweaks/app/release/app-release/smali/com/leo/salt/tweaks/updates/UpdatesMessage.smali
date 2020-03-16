.class public Lcom/leo/salt/tweaks/updates/UpdatesMessage;
.super Ljava/lang/Object;
.source "UpdatesMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/updates/UpdatesMessage$OnOTAListener;
    }
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mI:I

.field public mListener:Lcom/leo/salt/tweaks/updates/UpdatesMessage$OnOTAListener;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/updates/UpdatesMessage$OnOTAListener;Landroid/os/Handler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/updates/UpdatesMessage;->sendRequestWithHttpURLConnection()V

    iput-object p2, p0, Lcom/leo/salt/tweaks/updates/UpdatesMessage;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/UpdatesMessage;->mListener:Lcom/leo/salt/tweaks/updates/UpdatesMessage$OnOTAListener;

    iput p3, p0, Lcom/leo/salt/tweaks/updates/UpdatesMessage;->mI:I

    new-instance p1, Lcom/leo/salt/tweaks/updates/UpdatesMessage$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/tweaks/updates/UpdatesMessage$1;-><init>(Lcom/leo/salt/tweaks/updates/UpdatesMessage;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/UpdatesMessage;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$sendRequestWithHttpURLConnection$0$UpdatesMessage()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/leo/salt/utils/NetUtils;->isNetworkJson:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget v2, p0, Lcom/leo/salt/tweaks/updates/UpdatesMessage;->mI:I

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/UpdatesMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendRequestWithHttpURLConnection()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/tweaks/updates/-$$Lambda$UpdatesMessage$7I0cXV0dQWcPv7MYpI8OfTdOg30;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$UpdatesMessage$7I0cXV0dQWcPv7MYpI8OfTdOg30;-><init>(Lcom/leo/salt/tweaks/updates/UpdatesMessage;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
