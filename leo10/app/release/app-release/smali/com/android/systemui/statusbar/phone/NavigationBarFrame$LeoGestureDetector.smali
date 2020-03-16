.class Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavigationBarFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeoGestureDetector"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFrame;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFrame;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-static {p2}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNavGesture:I

    sget-object v1, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoNavGesture:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1, v1, v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNavGestureVibratorEnable:I

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNavGestureVibratorLevel:I

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoHaptics(Landroid/content/Context;II)V

    const/4 p1, 0x1

    return p1
.end method
