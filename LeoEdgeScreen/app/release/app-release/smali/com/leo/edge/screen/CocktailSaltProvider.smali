.class public Lcom/leo/edge/screen/CocktailSaltProvider;
.super Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.source "CocktailSaltProvider.java"


# instance fields
.field public LeoSettings:Landroid/provider/Settings$System;

.field public mAPPS:I

.field public mAlipay:I

.field public mClear:I

.field public mDonate:I

.field public mFusionLeoKernel:I

.field public mLeo:I

.field public mLock:I

.field public mWIFI:I

.field public mWeChat:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;-><init>()V

    return-void
.end method

.method private Donate(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2

    const v0, 0x7f040003

    iput v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mDonate:I

    iget v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mDonate:I

    const-string v1, "com.leo.ACTION_DONATE"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoIntentFlags(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method private getLeoBroadcast(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p1, v0, p4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private getLeoIntentFlags(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/leo/edge/screen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private lock(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4

    const v0, 0x7f040006

    iput v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mLock:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.leo.global.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/String;

    const-string v2, "bGVvX2FjdGlvbg=="

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mLock:I

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoBroadcast(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/content/Intent;)V

    return-void
.end method

.method private panelUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/leo/edge/screen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const/4 p1, 0x0

    :goto_0
    array-length v1, p3

    if-ge p1, v1, :cond_0

    aget v1, p3, p1

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILandroid/widget/RemoteViews;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p1, v0, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p4, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private setPendingIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 9

    const v0, 0x7f040001

    iput v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mAPPS:I

    iget v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mAPPS:I

    const-string v1, "com.leo.ACTION_APPS"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoIntentFlags(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    const v0, 0x7f040008

    iput v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mWIFI:I

    iget v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mWIFI:I

    const-string v1, "com.leo.ACTION_WIFI"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoIntentFlags(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    const v0, 0x7f040005

    iput v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mLeo:I

    iget v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mLeo:I

    const-string v1, "com.leo.ROM_CONTROL"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoIntentFlags(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, p1, p2}, Lcom/leo/edge/screen/CocktailSaltProvider;->Donate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const v0, 0x7f040002

    iput v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mClear:I

    iget v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mClear:I

    const-string v1, "com.leo.ACTION_CLEAN"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoIntentFlags(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, p1, p2}, Lcom/leo/edge/screen/CocktailSaltProvider;->lock(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-virtual {p0, p1, p2}, Lcom/leo/edge/screen/CocktailSaltProvider;->toAliPayScan(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-virtual {p0, p1, p2}, Lcom/leo/edge/screen/CocktailSaltProvider;->WeChatScan(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-virtual {p0, p1, p2}, Lcom/leo/edge/screen/CocktailSaltProvider;->FusionLeoKernel(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const-string v0, "leo_salt_edge_text_color"

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "leo_salt_edge_text_size"

    const/16 v2, 0xd

    invoke-virtual {p0, p1, v1, v2}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget v4, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mAPPS:I

    invoke-virtual {p0}, Lcom/leo/edge/screen/CocktailSaltProvider;->DefaultValue()I

    move-result v2

    const-string v3, "leo_salt_edge_apps_enabled"

    invoke-virtual {p0, p1, v3, v2}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const-string v2, "grid_apps"

    invoke-virtual {p0, v2, p1}, Lcom/leo/edge/screen/CocktailSaltProvider;->setLeoText(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, p2

    move v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v8}, Lcom/leo/edge/screen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZIILjava/lang/String;)V

    iget v4, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mWIFI:I

    invoke-virtual {p0}, Lcom/leo/edge/screen/CocktailSaltProvider;->DefaultValue()I

    move-result v2

    const-string v3, "leo_salt_edge_wifi_enabled"

    invoke-virtual {p0, p1, v3, v2}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const-string v2, "grid_wifi"

    invoke-virtual {p0, v2, p1}, Lcom/leo/edge/screen/CocktailSaltProvider;->setLeoText(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/leo/edge/screen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZIILjava/lang/String;)V

    iget v4, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mLeo:I

    invoke-virtual {p0}, Lcom/leo/edge/screen/CocktailSaltProvider;->DefaultValue()I

    move-result v2

    const-string v3, "leo_salt_edge_leo_enabled"

    invoke-virtual {p0, p1, v3, v2}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const-string v2, "leo_app_name"

    invoke-virtual {p0, v2, p1}, Lcom/leo/edge/screen/CocktailSaltProvider;->setLeoText(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/leo/edge/screen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZIILjava/lang/String;)V

    iget v4, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mClear:I

    invoke-virtual {p0}, Lcom/leo/edge/screen/CocktailSaltProvider;->DefaultValue()I

    move-result v2

    const-string v3, "leo_salt_edge_clear_enabled"

    invoke-virtual {p0, p1, v3, v2}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/leo/edge/screen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZIILjava/lang/String;)V

    iget v4, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mLock:I

    invoke-virtual {p0}, Lcom/leo/edge/screen/CocktailSaltProvider;->DefaultValue()I

    move-result v2

    const-string v3, "leo_salt_edge_lock_enabled"

    invoke-virtual {p0, p1, v3, v2}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/leo/edge/screen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZIILjava/lang/String;)V

    iget v4, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mDonate:I

    const-string v2, "leo_slide_meun_donate"

    invoke-virtual {p0, v2, p1}, Lcom/leo/edge/screen/CocktailSaltProvider;->setLeoText(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/leo/edge/screen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZIILjava/lang/String;)V

    iget v4, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mAlipay:I

    invoke-virtual {p0}, Lcom/leo/edge/screen/CocktailSaltProvider;->DefaultValue()I

    move-result v2

    const-string v3, "leo_salt_edge_alipay_enabled"

    invoke-virtual {p0, p1, v3, v2}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const-string v2, "alipay"

    invoke-virtual {p0, v2, p1}, Lcom/leo/edge/screen/CocktailSaltProvider;->setLeoText(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/leo/edge/screen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZIILjava/lang/String;)V

    iget v4, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mWeChat:I

    invoke-virtual {p0}, Lcom/leo/edge/screen/CocktailSaltProvider;->DefaultValue()I

    move-result v2

    const-string v3, "leo_salt_edge_wechat_enabled"

    invoke-virtual {p0, p1, v3, v2}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const-string v2, "wechat"

    invoke-virtual {p0, v2, p1}, Lcom/leo/edge/screen/CocktailSaltProvider;->setLeoText(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/leo/edge/screen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZIILjava/lang/String;)V

    iget v4, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mFusionLeoKernel:I

    invoke-virtual {p0}, Lcom/leo/edge/screen/CocktailSaltProvider;->DefaultValue()I

    move-result v2

    const-string v3, "leo_salt_edge_kernel_enabled"

    invoke-virtual {p0, p1, v3, v2}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const-string v8, "FusionLeo Kernel"

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/leo/edge/screen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public DefaultValue()I
    .locals 2

    invoke-static {}, Lcom/leo/edge/screen/Resource;->getDonationData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LeoROM\uff3bDonate\uff3d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public FusionLeoKernel(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2

    const v0, 0x7f040004

    iput v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mFusionLeoKernel:I

    iget v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mFusionLeoKernel:I

    const-string v1, "com.leo.fusionleo_kernel"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/leo/edge/screen/CocktailSaltProvider;->getLeoIntentFlags(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method public WeChatScan(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4

    const v0, 0x7f040007

    iput v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mWeChat:I

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "LauncherUI.From.Scaner.Shortcut"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mWeChat:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/leo/edge/screen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "wechat_payment_title"

    invoke-static {p1, p2}, Lcom/leo/edge/screen/Resource;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getLeoBoolean(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->LeoSettings:Landroid/provider/Settings$System;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->LeoSettings:Landroid/provider/Settings$System;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/leo/edge/screen/CocktailSaltProvider;->panelUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V

    return-void
.end method

.method public setLeoText(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p2, p1}, Lcom/leo/edge/screen/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toAliPayScan(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3

    const/high16 v0, 0x7f040000

    iput v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mAlipay:I

    :try_start_0
    const-string v0, "alipayqr://platformapi/startapp?saId=10000007"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget v0, p0, Lcom/leo/edge/screen/CocktailSaltProvider;->mAlipay:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/leo/edge/screen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "alipay_payment_title"

    invoke-static {p1, p2}, Lcom/leo/edge/screen/Resource;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateAppsSetting(Landroid/widget/RemoteViews;IZIILjava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, p2, p6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 p3, 0x1

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    invoke-virtual {p1, p2, p5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method
