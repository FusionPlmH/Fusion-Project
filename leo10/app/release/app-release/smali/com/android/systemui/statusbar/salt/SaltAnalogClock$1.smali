.class Lcom/android/systemui/statusbar/salt/SaltAnalogClock$1;
.super Landroid/database/ContentObserver;
.source "SaltAnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/salt/SaltAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->updateAnalogClock()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->access$000(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->invalidate()V

    return-void
.end method
