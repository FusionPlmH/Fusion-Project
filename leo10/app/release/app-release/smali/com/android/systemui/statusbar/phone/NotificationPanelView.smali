.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"


# instance fields
.field mContext:Landroid/content/Context;

.field public mKeyguardShowing:Z

.field private mLastOrientation:I

.field public mLeoPanelController:Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

.field private mLeoPanelView:Landroid/view/View;

.field protected mQsExpansionHeight:F

.field public mQsFullyExpanded:Z

.field protected mQsMinExpansionHeight:I

.field protected mStatusBarState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeoPanelController:Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeoPanelController:Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->LeoDetector()V

    return-void
.end method


# virtual methods
.method public getMaxPanelHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initLeoPanelController()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeoPanelController:Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->intLeoPanelView()V

    sget-object v0, Lcom/android/settingslib/salt/SaltValues;->Values13:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeoPanelView:Landroid/view/View;

    return-void
.end method

.method public loadDimens()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeoPanelController:Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->loadLeoDimens()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onAttachedToWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initLeoPanelController()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onleoTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onleoTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeoPanelController:Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->onTouchEvent(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public refreshetSaltNotificationPanel()Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeoPanelController:Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    return-object v0
.end method

.method public setLeoPanelUpdated(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeoPanelView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public updateLeoPanelVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeoPanelView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeoPanelView:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
