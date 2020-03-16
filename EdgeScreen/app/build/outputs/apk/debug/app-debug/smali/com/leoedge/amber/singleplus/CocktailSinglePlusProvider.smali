.class public Lcom/leoedge/amber/singleplus/CocktailSinglePlusProvider;
.super Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.source "CocktailSinglePlusProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;-><init>()V

    return-void
.end method

.method private setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p1, v0, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private setPendingIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x7f030000

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/leoedge/amber/singleplus/CocktailSinglePlusProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f030008

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/leoedge/amber/singleplus/CocktailSinglePlusProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.google.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v1, 0x7f030001

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/leoedge/amber/singleplus/CocktailSinglePlusProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    invoke-static {}, Lcom/leoedge/amber/salt/CocktailUtils;->isLunarSettingdonate()Z

    move-result v0

    const v1, 0x7f030003

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.leo.service"

    const-string v3, "com.leo.service.MainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, p1, v1, v3, p2}, Lcom/leoedge/amber/singleplus/CocktailSinglePlusProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://www.paypal.me/plmh"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/leoedge/amber/singleplus/CocktailSinglePlusProvider;->setPendingIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/widget/RemoteViews;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040001

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/leoedge/amber/singleplus/CocktailSinglePlusProvider;->setPendingIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    aget v2, p3, v1

    invoke-virtual {p2, v2, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
