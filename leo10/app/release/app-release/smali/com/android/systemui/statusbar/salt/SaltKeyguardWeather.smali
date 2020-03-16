.class public Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;
.super Landroid/widget/LinearLayout;
.source "SaltKeyguardWeather.java"

# interfaces
.implements Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;


# instance fields
.field private i:I

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mComponent:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mWidgetClass:Ljava/lang/String;

.field private mWidgetId:I

.field private mWidgetPackage:Ljava/lang/String;

.field private mWidgetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->i:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/settingslib/salt/utils/LeoReceiver;

    invoke-direct {p1, p0}, Lcom/android/settingslib/salt/utils/LeoReceiver;-><init>(Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;)V

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "U0FMVF9VUERBVEVfTE9DS1dFQVRIRVJfU0VUVElOR1M="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather$1;-><init>(Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;Landroid/os/Handler;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private GetWidget()Landroid/appwidget/AppWidgetHostView;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/salt/utils/LeoManages;->KeyguardWeather:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigCenter;->WidgetData(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigCenter;->WidgetDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetClass:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/salt/utils/LeoManages;->KeyguardWeather:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1, v3}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetId:I

    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetClass:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mComponent:Landroid/content/ComponentName;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x2

    const-string v5, "appWidgetCategory"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    const-class v5, Landroid/appwidget/AppWidgetManager;

    const-string v6, "bindAppWidgetId"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    const-class v9, Landroid/content/ComponentName;

    aput-object v9, v8, v2

    const-class v9, Landroid/os/Bundle;

    aput-object v9, v8, v4

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-array v8, v7, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mComponent:Landroid/content/ComponentName;

    aput-object v3, v8, v2

    aput-object v0, v8, v4

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetId:I

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetId:I

    invoke-virtual {v2, v3, v4, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetId:I

    invoke-virtual {v2, v3, v0}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->setMinimumHeight(I)V

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetHostView;->setMinimumWidth(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/settingslib/salt/utils/LeoManages;->KeyguardWeather:[Ljava/lang/String;

    aget-object v5, v5, v7

    const/16 v6, 0x15e

    invoke-static {v4, v5, v6}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->i:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->i:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;)Landroid/appwidget/AppWidgetHost;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetHost;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;Landroid/appwidget/AppWidgetManager;)Landroid/appwidget/AppWidgetManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p1
.end method

.method private initUI()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->GetWidget()Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/salt/utils/LeoManages;->KeyguardWeather:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->setPadding(IIII)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->setGravity(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->startView()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    return-void
.end method

.method public onLeoChange(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "U0FMVF9VUERBVEVfTE9DS1dFQVRIRVJfU0VUVElOR1M="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->startView()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetView:Landroid/view/View;

    if-eqz p1, :cond_0

    instance-of p1, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x2

    const-string v1, "appWidgetCategory"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetView:Landroid/view/View;

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected startView()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->initUI()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    :cond_1
    return-void
.end method
