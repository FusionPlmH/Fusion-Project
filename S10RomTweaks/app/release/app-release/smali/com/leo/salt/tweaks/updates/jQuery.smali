.class public Lcom/leo/salt/tweaks/updates/jQuery;
.super Ljava/lang/Object;
.source "jQuery.java"


# instance fields
.field LinKing:Ljava/lang/String;

.field bannerLayout:Lcom/leo/salt/tweaks/view/BannerLayout;

.field img:Ljava/lang/String;

.field img1:Ljava/lang/String;

.field img2:Ljava/lang/String;

.field img3:Ljava/lang/String;

.field img4:Ljava/lang/String;

.field public mActivity:Lcom/leo/salt/tweaks/MainActivity;

.field public mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field public mTextView:Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;

.field public mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

.field proclamation:Ljava/lang/String;

.field proclamationen:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/leo/salt/tweaks/updates/jQuery$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/updates/jQuery$1;-><init>(Lcom/leo/salt/tweaks/updates/jQuery;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method private getLinKingView()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$qIndvV-IVB8j2NpviJ_Bfg4bq4M;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$qIndvV-IVB8j2NpviJ_Bfg4bq4M;-><init>(Lcom/leo/salt/tweaks/updates/jQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getVData()V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/updates/jQuery;->sendRequestWithHttpURLConnection()V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/updates/jQuery;->getLinKingView()V

    return-void
.end method

.method public jQuery(Ljava/lang/String;)V
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "img"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->img:Ljava/lang/String;

    const-string p1, "img1"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->img1:Ljava/lang/String;

    const-string p1, "img2"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->img2:Ljava/lang/String;

    const-string p1, "img3"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->img3:Ljava/lang/String;

    const-string p1, "img4"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->img4:Ljava/lang/String;

    const-string p1, "proclamation"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->proclamation:Ljava/lang/String;

    const-string p1, "proclamation_EN"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->proclamationen:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->bannerLayout:Lcom/leo/salt/tweaks/view/BannerLayout;

    new-instance v0, Lcom/leo/salt/tweaks/view/imageloader/GlideImageLoader;

    invoke-direct {v0}, Lcom/leo/salt/tweaks/view/imageloader/GlideImageLoader;-><init>()V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->setImageLoader(Lcom/leo/salt/tweaks/view/BannerLayout$ImageLoader;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->img:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->img1:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->img2:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->img3:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->img4:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->bannerLayout:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-virtual {v0, p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->setViewUrls(Ljava/util/List;)V

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->proclamation:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->proclamationen:Ljava/lang/String;

    :goto_0
    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->bannerLayout:Lcom/leo/salt/tweaks/view/BannerLayout;

    new-instance v1, Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$VZ6eM7bAHNZyXkdcCDC_uHeD3o8;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$VZ6eM7bAHNZyXkdcCDC_uHeD3o8;-><init>(Lcom/leo/salt/tweaks/updates/jQuery;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/BannerLayout;->setOnBannerItemClickListener(Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->ChineseCSC()Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, " "

    const-string v2, "StateWeather"

    const/4 v3, -0x1

    const/4 v4, 0x1

    const-string v5, "\uff5c"

    if-eqz p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v6, "leo_home_weather_info"

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v6, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->isWeatherTrue(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mTextView:Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;

    invoke-virtual {p1, v3}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mTextView:Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v4, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getChinaAQI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v6, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v2, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v5, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScale(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getCurrentTemperature(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v2, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScaleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->bannerLayout:Lcom/leo/salt/tweaks/view/BannerLayout;

    new-instance v0, Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$kQl3HMUjByxjdPrFN_anRTI9MUE;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$kQl3HMUjByxjdPrFN_anRTI9MUE;-><init>(Lcom/leo/salt/tweaks/updates/jQuery;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->setOnBannerItemClickListener(Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->LinKing:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v6, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->isWeatherTrue(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mTextView:Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;

    invoke-virtual {p1, v3}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mTextView:Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v4, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getChinaAQI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v6, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v2, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v5, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScale(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getCurrentTemperature(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object v2, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;->getTempScaleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mTextView:Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public synthetic lambda$getLinKingView$0$jQuery()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://api.guaqb.cn/v1/onesaid/"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->LinKing:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$jQuery$1$jQuery(I)V
    .locals 2

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/leo/salt/user/info/UserNotificationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$jQuery$2$jQuery(I)V
    .locals 2

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "leo_home_linking_info"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->LinKing:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->LinKing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u6765\u81ea "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f100056

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/updates/jQuery;->copyToClipboard(Landroid/content/Context;Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u590d\u5236\u5206\u4eab:\n["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->LinKing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/jQuery;->showSnacknAME(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$sendRequestWithHttpURLConnection$3$jQuery()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://os.leorom.cc/json/jQuery.json"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public rollingPicture(Lcom/leo/salt/tweaks/MainActivity;Landroid/content/Context;Landroid/support/design/widget/AppBarLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mActivity:Lcom/leo/salt/tweaks/MainActivity;

    iput-object p2, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mActivity:Lcom/leo/salt/tweaks/MainActivity;

    const p2, 0x7f09005a

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/BannerLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->bannerLayout:Lcom/leo/salt/tweaks/view/BannerLayout;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->bannerLayout:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "leo_timg"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/BannerLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    invoke-direct {p1}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mActivity:Lcom/leo/salt/tweaks/MainActivity;

    const p2, 0x7f090004

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mActivity:Lcom/leo/salt/tweaks/MainActivity;

    const v0, 0x7f090003

    invoke-virtual {p2, v0}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;

    iput-object p2, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mTextView:Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;

    new-instance p2, Lcom/leo/salt/tweaks/updates/jQuery$2;

    invoke-direct {p2, p0, p1}, Lcom/leo/salt/tweaks/updates/jQuery$2;-><init>(Lcom/leo/salt/tweaks/updates/jQuery;Landroid/widget/LinearLayout;)V

    invoke-virtual {p3, p2}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method public sendRequestWithHttpURLConnection()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$jY6JEBVImhr54eFFz8QFHyemtjI;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$jY6JEBVImhr54eFFz8QFHyemtjI;-><init>(Lcom/leo/salt/tweaks/updates/jQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public showSnacknAME(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mActivity:Lcom/leo/salt/tweaks/MainActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const-string v0, "Action"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/jQuery;->mContext:Landroid/content/Context;

    const v2, 0x7f0400a5

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method
