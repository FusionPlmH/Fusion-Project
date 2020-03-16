.class public Lcom/android/systemui/qs/DataUsageView;
.super Landroid/widget/TextView;
.source "DataUsageView.java"

# interfaces
.implements Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0f06b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : 0 B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/DataUsageView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->onSaltChanged()V

    return-void
.end method


# virtual methods
.method public onLeoChange(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->setDataUsageView()V

    :cond_0
    return-void
.end method

.method public onSaltChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->setDataUsageView()V

    new-instance v0, Lcom/android/settingslib/salt/utils/LeoReceiver;

    invoke-direct {v0, p0}, Lcom/android/settingslib/salt/utils/LeoReceiver;-><init>(Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setDataUsageView()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSDataUsageOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const v0, 0x800005

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    goto :goto_0

    :cond_1
    const v0, 0x800003

    :goto_0
    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSDataUsageSize:I

    sget v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSDataUsageFont:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/DataUsageView;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "sec-roboto-condensed"

    invoke-static {v2, v3, v5, v4}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/DataUsageView;->setTypeface(Landroid/graphics/Typeface;)V

    or-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/DataUsageView;->setGravity(I)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsDataUsageBarEnabled:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/DataUsageView;->setVisibility(I)V

    return-void
.end method

.method public updateCurrentDataSubId()V
    .locals 0

    return-void
.end method

.method public updateUsageInfo()V
    .locals 0

    return-void
.end method
