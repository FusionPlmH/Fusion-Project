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
.field public leoset:Landroid/provider/Settings$System;

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
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "aHH:mm"

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherFormat:Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    invoke-direct {p1}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->isWeatherTrue(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->WeatherOn()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherState:Ljava/lang/String;

    const-string v0, "StateWeather"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherLocation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherCurrentTemp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->setVisibility(I)V

    :cond_0
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

    const v2, 0x7f100134

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

.method static synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public Weather()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->isWeatherTrue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherDetailedLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff5c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherCurrentTemp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/WeatherView;->mWeatherState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/WeatherView;->Weather()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$WeatherView$7RR1yhknByp33gHaSegma-7Sf6g;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/-$$Lambda$WeatherView$7RR1yhknByp33gHaSegma-7Sf6g;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
