.class Lcom/leo/salt/update/DownloadActivity$5;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/update/DownloadActivity;->getDownload(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/update/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/update/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/update/DownloadActivity$5;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f1002c6

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getROMVersion()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/leo/salt/utils/Constants;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/update/DownloadActivity$5;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {p2}, Lcom/leo/salt/update/DownloadActivity;->access$1000(Lcom/leo/salt/update/DownloadActivity;)Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    move-result-object p2

    const-string v0, "http://ota.52leo.cc/leo/LeoGlobal_V8.1.zip"

    invoke-virtual {p2, v0}, Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;->startDownload(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getROMVersion()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/leo/salt/utils/Constants;->Hitomi_ROM:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/leo/salt/update/DownloadActivity$5;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {p2}, Lcom/leo/salt/update/DownloadActivity;->access$1000(Lcom/leo/salt/update/DownloadActivity;)Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    move-result-object p2

    const-string v0, "http://ota.52leo.cc/hitomi/Hitomi_OTA_V6.zip"

    invoke-virtual {p2, v0}, Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;->startDownload(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/leo/salt/update/DownloadActivity$5;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {p2}, Lcom/leo/salt/update/DownloadActivity;->access$1300(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getROMVersion()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/leo/salt/utils/Constants;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/leo/salt/update/DownloadActivity$5;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {p2}, Lcom/leo/salt/update/DownloadActivity;->access$1000(Lcom/leo/salt/update/DownloadActivity;)Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    move-result-object p2

    const-string v0, "http://ota.leorom.cc/leo/LeoGlobal_V8.1.zip"

    invoke-virtual {p2, v0}, Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;->startDownload(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getROMVersion()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/leo/salt/utils/Constants;->Hitomi_ROM:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/leo/salt/update/DownloadActivity$5;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {p2}, Lcom/leo/salt/update/DownloadActivity;->access$1000(Lcom/leo/salt/update/DownloadActivity;)Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;

    move-result-object p2

    const-string v0, "http://ota.leorom.cc/hitomi/Hitomi_OTA_V6.zip"

    invoke-virtual {p2, v0}, Lcom/leo/salt/utils/root/DownloadService$DownloadBinder;->startDownload(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/leo/salt/update/DownloadActivity$5;->this$0:Lcom/leo/salt/update/DownloadActivity;

    invoke-static {p2}, Lcom/leo/salt/update/DownloadActivity;->access$1200(Lcom/leo/salt/update/DownloadActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
