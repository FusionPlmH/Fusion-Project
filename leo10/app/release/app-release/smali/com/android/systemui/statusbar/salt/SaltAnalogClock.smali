.class public Lcom/android/systemui/statusbar/salt/SaltAnalogClock;
.super Landroid/view/View;
.source "SaltAnalogClock.java"


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mContext:Landroid/content/Context;

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mTypedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$2;-><init>(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/salt/config/R$styleable;->LeoAnalogClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->updateAnalogClock()V

    new-instance p1, Landroid/text/format/Time;

    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDialWidth:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDialHeight:I

    new-instance p1, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$1;-><init>(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;Landroid/os/Handler;)V

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltAnalogClock$j1whL71OWgUq-WUSwGKA6LWXIeE;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltAnalogClock$j1whL71OWgUq-WUSwGKA6LWXIeE;-><init>(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;Landroid/database/ContentObserver;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method private onTimeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->second:I

    int-to-float v1, v1

    int-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mMinutes:F

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mMinutes:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mHour:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mChanged:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    const/16 p1, 0x81

    invoke-static {v0, v1, v2, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$new$0$SaltAnalogClock(Landroid/database/ContentObserver;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/salt/utils/LeoManages;->NotificationPanel:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->onTimeChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mChanged:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-lt v2, v7, :cond_1

    if-ge v3, v8, :cond_2

    :cond_1
    const/4 v1, 0x1

    int-to-float v2, v2

    int-to-float v9, v7

    div-float/2addr v2, v9

    int-to-float v3, v3

    int-to-float v9, v8

    div-float/2addr v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v4

    int-to-float v9, v5

    invoke-virtual {p1, v2, v2, v3, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    if-eqz v0, :cond_3

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v4, v7

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v5, v8

    add-int/2addr v7, v4

    add-int/2addr v8, v5

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mHour:F

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v2, v2, v3

    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {p1, v2, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v8, v8, 0x2

    sub-int v10, v4, v8

    div-int/lit8 v9, v9, 0x2

    sub-int v11, v5, v9

    add-int/2addr v8, v4

    add-int/2addr v9, v5

    invoke-virtual {v2, v10, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mMinutes:F

    const/high16 v8, 0x42700000    # 60.0f

    div-float/2addr v2, v8

    mul-float v2, v2, v3

    invoke-virtual {p1, v2, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v0, v0, 0x2

    sub-int v6, v4, v0

    div-int/lit8 v3, v3, 0x2

    sub-int v7, v5, v3

    add-int/2addr v4, v0

    add-int/2addr v5, v3

    invoke-virtual {v2, v6, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDialWidth:I

    if-ge v1, v0, :cond_0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDialHeight:I

    if-ge v3, v1, :cond_1

    int-to-float v2, v3

    int-to-float v1, v1

    div-float v4, v2, v1

    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDialWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->resolveSizeAndState(III)I

    move-result p1

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDialHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-static {v0, p2, v2}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mChanged:Z

    return-void
.end method

.method public updateAnalogClock()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelAnalogClockDial:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x7

    if-nez v1, :cond_a

    if-ne v0, v2, :cond_0

    const-string v1, "analogclock_custom_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    const-string v1, "analogclock_dot_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v1, "analogclock_baii_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string v1, "analogclock_spectrum_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const-string v1, "analogclock_spidey_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    const-string v1, "analogclock_hit_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_6

    const-string v1, "analogclock_num_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    const-string v1, "analogclock_kaleidoscope_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const-string v1, "analogclock_dian_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    const-string v1, "analogclock_yuan_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_9
    if-nez v0, :cond_a

    const-string v1, "analogclock_sneeky_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_a
    :goto_0
    if-ge v0, v4, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelAnalogClockDialColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    const-string v0, "analogclock_hour"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelAnalogClockHourColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    const-string v0, "analogclock_min"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelAnalogClockMinuteColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
