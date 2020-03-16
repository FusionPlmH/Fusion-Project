.class public Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;
.super Lcom/android/systemui/bar/QSBarItem;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final MESSAGE_CHANGE_NETWORK_MODE:I = 0x3e9

.field private static final MESSAGE_DELAY_DATASERVICE_SET:I = 0x3eb

.field private static final MESSAGE_DELAY_DATASERVICE_TIMEOUT:I = 0x3ec

.field private static final MESSAGE_SEND_NETWORK_MODE_CHANGED_INTENT:I = 0x3ef

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x3ea

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE_IN_THREAD:I = 0x3ee

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE_ONESLOT:I = 0x3ed

.field private static final MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON:I = 0x3e8

.field private static final NETOWRKMODECHANGE_MAX_TIMEOUT:I = 0x2710

.field private static final NORMAL_ALPHA:F = 1.0f

.field private static final SIMSELECT_LIST_ASKALLAWAY:I = 0x0

.field private static final SIMSELECT_LIST_OTHERS:I = 0x3

.field private static final SIMSELECT_LIST_SIM1:I = 0x1

.field private static final SIMSELECT_LIST_SIM2:I = 0x2

.field private static final SIMSLOT1:I = 0x0

.field private static final SIMSLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultiSIMPreferredSlotBar"


# instance fields
.field public Netchangefinished:Z

.field public SimImageIdx:[I

.field public SimName:[Ljava/lang/String;

.field private SimState_1:Ljava/lang/String;

.field private SimState_2:Ljava/lang/String;

.field public mAirplaneMode:Z

.field private mAlphaEnabled:Z

.field public mCTCforceoff:Z

.field public mChangedByDataButton:Z

.field public mContext:Landroid/content/Context;

.field public mDataBlockedForSim1:Z

.field public mDataBlockedForSim2:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    const-string v0, "SIM 1"

    const-string v1, "SIM 2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mAirplaneMode:Z

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim1:Z

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim2:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private getBarVisibility()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private updateBarVisibilities()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->getBarVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v0}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onQSHeightChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getBarHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsMultiSIMBarEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public refreshQsBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    return-void
.end method
