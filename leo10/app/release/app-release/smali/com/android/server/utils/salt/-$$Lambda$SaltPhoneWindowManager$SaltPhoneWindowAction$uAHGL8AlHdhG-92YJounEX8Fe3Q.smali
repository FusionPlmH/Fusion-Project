.class public final synthetic Lcom/android/server/utils/salt/-$$Lambda$SaltPhoneWindowManager$SaltPhoneWindowAction$uAHGL8AlHdhG-92YJounEX8Fe3Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/inputs/AInputManager;

.field private final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/inputs/AInputManager;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/salt/-$$Lambda$SaltPhoneWindowManager$SaltPhoneWindowAction$uAHGL8AlHdhG-92YJounEX8Fe3Q;->f$0:Landroid/hardware/inputs/AInputManager;

    iput-object p2, p0, Lcom/android/server/utils/salt/-$$Lambda$SaltPhoneWindowManager$SaltPhoneWindowAction$uAHGL8AlHdhG-92YJounEX8Fe3Q;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/utils/salt/-$$Lambda$SaltPhoneWindowManager$SaltPhoneWindowAction$uAHGL8AlHdhG-92YJounEX8Fe3Q;->f$0:Landroid/hardware/inputs/AInputManager;

    iget-object v1, p0, Lcom/android/server/utils/salt/-$$Lambda$SaltPhoneWindowManager$SaltPhoneWindowAction$uAHGL8AlHdhG-92YJounEX8Fe3Q;->f$1:Landroid/view/KeyEvent;

    invoke-static {v0, v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->lambda$triggerVirtualKeypress$0(Landroid/hardware/inputs/AInputManager;Landroid/view/KeyEvent;)V

    return-void
.end method
