.class Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController$LeoGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SaltNotificationPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeoGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController$LeoGestureDetector;->this$0:Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-static {p2}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    sget p1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardDoubleTap:I

    if-gtz p1, :cond_0

    const/16 p1, 0xca

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController$LeoGestureDetector;->this$0:Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->access$000(Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method
