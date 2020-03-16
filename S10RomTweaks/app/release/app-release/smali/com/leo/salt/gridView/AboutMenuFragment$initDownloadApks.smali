.class public Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;
.super Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;
.source "AboutMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/AboutMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "initDownloadApks"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/leo/salt/gridView/AboutMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/AboutMenuFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected initDownloadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-static {v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->access$200(Lcom/leo/salt/gridView/AboutMenuFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDownloadSuccess(Ljava/io/File;)V
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected initDownloadTaskCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected initDownloadTwiceUri()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ZB8GBAgJ"

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "app-release"

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->LeoServerAPK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected initDownloadUri()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ZB8GBAgJ"

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "app-release"

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->LeoServerAPK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected initDownloadpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-static {v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->access$000(Lcom/leo/salt/gridView/AboutMenuFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initProgressName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/gridView/AboutMenuFragment$initDownloadApks;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-static {v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->access$100(Lcom/leo/salt/gridView/AboutMenuFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
