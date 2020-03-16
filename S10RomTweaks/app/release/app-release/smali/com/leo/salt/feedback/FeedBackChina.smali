.class public Lcom/leo/salt/feedback/FeedBackChina;
.super Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;
.source "FeedBackChina.java"


# static fields
.field private static final mDeviceName:Ljava/lang/String;

.field private static final mKenelName:Ljava/lang/String;

.field private static final mLine:Ljava/lang/String; = "\n"

.field private static final mOSName:Ljava/lang/String;

.field private static final mSerialName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u624b\u673a\u578b\u53f7:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.boot.em.model"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/feedback/FeedBackChina;->mDeviceName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ROM\u7248\u672c:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/feedback/FeedBackChina;->mOSName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5185\u6838\u7248\u672c:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/leo/salt/utils/ExtraInfo;->getKenel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/feedback/FeedBackChina;->mKenelName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e8f\u5217\u53f7:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ril.serialnumber"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/feedback/FeedBackChina;->mSerialName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;-><init>()V

    return-void
.end method

.method public static PermissionHome(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "vip_feedback"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-direct {v0, p0, v2, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f1003d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const-string v1, "\u4e3a\u4ec0\u4e48\u5f00\u901a\u6350\u8d60\u7248\u53cd\u9988\u901a\u9053?\n\n1.\u4e0d\u60f3\u56e0\u4e3aQQ\u7fa4\u7684\u4fe1\u606f\u8fc7\u591a\u5bfc\u81f4\u91cd\u8981\u7684\u53cd\u9988\u4fe1\u606f\u9519\u8fc7\n2.\u4f5c\u4e3a\u5f00\u53d1\u8005\u6211\u4eec\u4e5f\u5e0c\u671b\u6350\u8d60\u7248\u7528\u6237\u80fd\u591f\u63d0\u51fa\u5b9d\u8d35\u7684\u610f\u89c1\n3.\u5927\u5bb6\u90fd\u6709\u5de5\u4f5c\u4e0d\u80fd\u968f\u65f6\u76ef\u7740QQ\u7fa4\u7684\u4fe1\u606f.\u8fd9\u6837\u53ef\u80fd\u4f1a\u9519\u8fc7\u5f88\u591a\u4fe1\u606f,\u4e3a\u6b64\u6211\u4eec\u5f00\u901a\u6350\u8d60\u7248\u53cd\u9988\u901a\u9053,\u5c31\u7b97\u6211\u4e0d\u80fd\u53ca\u65f6\u56de\u590d\u4f60\u7684\u4fe1\u606f\u4f46\u662f\u4f60\u7ed9\u6211\u4eec\u63d0\u51fa\u610f\u89c1\u5efa\u8bae\u90fd\u5728\u670d\u52a1\u5668\u4e2d\u4fdd\u7559,\u5f85\u6211\u4eec\u67e5\u770b\u56de\u590d\u4f60\u80fd\u65f6\u80fd\u6536\u5230\u6211\u4eec\u7684\u4fe1\u606f\n\n\u5bf9\u4e8e\u4f60\u7ed9\u6211\u4eec\u63d0\u51fa\u7684\u610f\u89c1,\u6211\u4eec\u8868\u793a\u611f\u8c22.\u5e76\u4e14\u5728\u6280\u672f\u80fd\u529b\u8303\u56f4\u5185\u5c3d\u529b\u53bb\u5b9e\u73b0\u4f60\u7684\u9700\u6c42"

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/feedback/-$$Lambda$FeedBackChina$XSreUPHrzVBDwzkDQHJCfgA9mxE;

    invoke-direct {v1, p0}, Lcom/leo/salt/feedback/-$$Lambda$FeedBackChina$XSreUPHrzVBDwzkDQHJCfgA9mxE;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$PermissionHome$0(Landroid/content/Context;Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vip_feedback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/feedback/FeedBackChina;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/leo/salt/feedback/FeedBackChina;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/leo/salt/feedback/FeedBackChina;->PermissionHome(Landroid/content/Context;)V

    return-void
.end method

.method protected onLoadDataComplete(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V
    .locals 3

    if-eqz p2, :cond_0

    new-instance p2, Lcom/meiqia/meiqiasdk/model/TextMessage;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/feedback/FeedBackChina;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/feedback/FeedBackChina;->mOSName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/feedback/FeedBackChina;->mKenelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/feedback/FeedBackChina;->mSerialName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/meiqia/meiqiasdk/model/TextMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    :cond_0
    return-void
.end method
