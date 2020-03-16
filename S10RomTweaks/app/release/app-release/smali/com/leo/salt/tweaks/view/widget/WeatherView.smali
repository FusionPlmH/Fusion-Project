.class public Lcom/leo/salt/tweaks/view/widget/WeatherView;
.super Landroid/widget/TextView;
.source "WeatherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field private mWeatherAQI:Ljava/lang/String;

.field private mWeatherCurrentTemp:Ljava/lang/String;

.field private mWeatherDetail:Ljava/lang/String;

.field private mWeatherDetailedLocation:Ljava/lang/String;

.field public mWeatherFormat:Ljava/lang/String;

.field private mWeatherHighTemp:Ljava/lang/String;

.field private mWeatherLocation:Ljava/lang/String;

.field private mWeatherLowTemp:Ljava/lang/String;

.field private mWeatherRealFeel:Ljava/lang/String;

.field public mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

.field private mWeatherState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "aHH:mm"

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherFormat:Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->UpdateWeather()V

    return-void
.end method

.method private WeatherOn()V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->isWeatherTrue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScale(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getRealFeelTemperature(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScaleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRealFeel:Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherLocation:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScale(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getCurrentTemperature(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScaleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherCurrentTemp:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScale(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getLowTemp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScaleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherLowTemp:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScale(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getHighTemp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScaleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherHighTemp:Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getWeatherInfoTextWCN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherState:Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getChinaAQI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherAQI:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getDetailedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherDetailedLocation:Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->updateLeoWeatherDetail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherDetail:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public UpdateWeather()V
    .locals 3

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    invoke-direct {v0}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->isWeatherTrue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->WeatherOn()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherState:Ljava/lang/String;

    const-string v2, "StateWeather"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherCurrentTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public Weather()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->isWeatherTrue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherDetailedLocation:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherCurrentTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff5c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherHighTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherLowTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRealFeel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherAQI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherDetail:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    :try_start_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.sec.android.daemonapp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->Weather()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/leo/salt/tweaks/view/widget/DialogView;->GlobaInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->UpdateWeather()V

    return-void
.end method
