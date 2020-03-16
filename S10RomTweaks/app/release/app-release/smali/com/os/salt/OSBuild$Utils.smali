.class public Lcom/os/salt/OSBuild$Utils;
.super Ljava/lang/Object;
.source "OSBuild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/os/salt/OSBuild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WeChatScan(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v1, "sleep 1s"

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "am start -n com.tencent.mm/com.tencent.mm.plugin."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "wechat_payment_title"

    invoke-static {p0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static toAliPayCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alipayqr://platformapi/startapp?saId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "alipay_payment_title"

    invoke-static {p0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
