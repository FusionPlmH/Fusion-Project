.class public Lcom/leo/salt/edgescreen/CocktailSaltProvider;
.super Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.source "CocktailSaltProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/edgescreen/CocktailSaltProvider$LeoObserver;
    }
.end annotation


# instance fields
.field public mAPPS:I

.field public mAutostarts:I

.field public mClear:I

.field public mDonate:I

.field public mFloating:I

.field public mIMG:I

.field public mLeo:I

.field private mLeoObserver:Lcom/leo/salt/edgescreen/CocktailSaltProvider$LeoObserver;

.field public mLock:I

.field public mMIniPOP:I

.field public mWIFI:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;-><init>()V

    return-void
.end method

.method private Donate(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4

    const v0, 0x7f09008a

    iput v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mDonate:I

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSettingdonate()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/leo/salt/donate/DonateActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mDonate:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mDonate:I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://www.paypal.me/plmh"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    :goto_0
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

.method private lock(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3

    const v0, 0x7f09008e

    iput v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mLock:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->LEO_ACTION_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/utils/Constants;->LEO_ACTION_GLOBAL:Ljava/lang/String;

    const-string v2, "com.hitomileo.action.lock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mLock:I

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->getLeoBroadcast(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/content/Intent;)V

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
    .locals 10

    const v0, 0x7f090087

    iput v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mAPPS:I

    iget v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mAPPS:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/leo/salt/activity/AppsActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    const v0, 0x7f090090

    iput v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mWIFI:I

    iget v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mWIFI:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/leo/salt/activity/WifiPasswordActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    const v0, 0x7f090088

    iput v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mAutostarts:I

    iget v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mAutostarts:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/leo/salt/activity/ManageAutostartsActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    const v0, 0x7f09008b

    iput v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mFloating:I

    iget v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mFloating:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/leo/salt/activity/FloatingActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    const v0, 0x7f09008f

    iput v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mMIniPOP:I

    iget v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mMIniPOP:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/leo/salt/activity/MIPOPActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    const v0, 0x7f09008c

    iput v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mIMG:I

    iget v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mIMG:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/leo/salt/activity/ImgActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    const v0, 0x7f09008d

    iput v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mLeo:I

    iget v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mLeo:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/leo/salt/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->Donate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const v0, 0x7f090089

    iput v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mClear:I

    iget v0, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mClear:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/leo/salt/activity/CleanActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->lock(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const-string v0, "leo_tweaks_edge_text_color"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "leo_tweaks_edge_text_size"

    const/16 v2, 0xd

    invoke-static {p1, v1, v2}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget v4, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mAPPS:I

    const-string v2, "leo_tweaks_edge_apps"

    const/4 v8, 0x0

    invoke-static {p1, v2, v8}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object v2, p0

    move-object v3, p2

    move v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZII)V

    iget v4, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mWIFI:I

    const-string v2, "leo_tweaks_edge_wifi"

    invoke-static {p1, v2, v9}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move-object v2, p0

    move-object v3, p2

    move v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZII)V

    iget v4, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mAutostarts:I

    const-string v2, "leo_tweaks_edge_autostarts"

    invoke-static {p1, v2, v9}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move-object v2, p0

    move-object v3, p2

    move v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZII)V

    iget v4, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mMIniPOP:I

    const-string v2, "leo_tweaks_edge_mipop"

    invoke-static {p1, v2, v9}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    move-object v2, p0

    move-object v3, p2

    move v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZII)V

    iget v4, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mFloating:I

    const-string v2, "leo_tweaks_edge_floating"

    invoke-static {p1, v2, v9}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    move-object v2, p0

    move-object v3, p2

    move v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZII)V

    iget v4, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mIMG:I

    const-string v2, "leo_tweaks_edge_img"

    invoke-static {p1, v2, v9}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    move-object v2, p0

    move-object v3, p2

    move v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZII)V

    iget v4, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mLeo:I

    const-string v2, "leo_tweaks_edge_leo"

    invoke-static {p1, v2, v9}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    move-object v2, p0

    move-object v3, p2

    move v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZII)V

    iget v4, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mClear:I

    const-string v2, "leo_tweaks_edge_clear"

    invoke-static {p1, v2, v9}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_7

    const/4 v5, 0x1

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    :goto_7
    move-object v2, p0

    move-object v3, p2

    move v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZII)V

    iget v4, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mLock:I

    const-string v2, "leo_tweaks_edge_lock"

    invoke-static {p1, v2, v9}, Lcom/leo/salt/utils/AndroidUtils;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v9, :cond_8

    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    move-object v2, p0

    move-object v3, p2

    move v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZII)V

    iget v4, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mDonate:I

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->updateAppsSetting(Landroid/widget/RemoteViews;IZII)V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c002f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->setPendingIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const/4 p1, 0x0

    :goto_0
    array-length v1, p3

    if-ge p1, v1, :cond_0

    aget v1, p3, p1

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILandroid/widget/RemoteViews;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/leo/salt/edgescreen/CocktailSaltProvider$LeoObserver;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/leo/salt/edgescreen/CocktailSaltProvider$LeoObserver;-><init>(Lcom/leo/salt/edgescreen/CocktailSaltProvider;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mLeoObserver:Lcom/leo/salt/edgescreen/CocktailSaltProvider$LeoObserver;

    iget-object p1, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider;->mLeoObserver:Lcom/leo/salt/edgescreen/CocktailSaltProvider$LeoObserver;

    invoke-virtual {p1}, Lcom/leo/salt/edgescreen/CocktailSaltProvider$LeoObserver;->observe()V

    return-void
.end method

.method public updateAppsSetting(Landroid/widget/RemoteViews;IZII)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 p3, 0x1

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    invoke-virtual {p1, p2, p5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method
