.class Lcom/leo/service/plug/Utils$RestartSystemUITask;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/service/plug/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestartSystemUITask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 753
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 754
    iput-object p1, p0, Lcom/leo/service/plug/Utils$RestartSystemUITask;->mContext:Landroid/content/Context;

    .line 755
    iput-object p2, p0, Lcom/leo/service/plug/Utils$RestartSystemUITask;->mString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 749
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/Utils$RestartSystemUITask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .registers 4

    .line 760
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.leo.global.action"

    .line 761
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "leo_action"

    const/16 v1, 0x7d1

    .line 762
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "leo_processName"

    .line 763
    iget-object v1, p0, Lcom/leo/service/plug/Utils$RestartSystemUITask;->mString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    iget-object v0, p0, Lcom/leo/service/plug/Utils$RestartSystemUITask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p1

    .line 766
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    const/4 p1, 0x0

    return-object p1
.end method
