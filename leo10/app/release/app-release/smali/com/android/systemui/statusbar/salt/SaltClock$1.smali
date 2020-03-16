.class Lcom/android/systemui/statusbar/salt/SaltClock$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "SaltClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/salt/SaltClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltClock;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$102(Lcom/android/systemui/statusbar/salt/SaltClock;I)I

    return-void
.end method
