.class public final synthetic Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$CuId7_NJKN4Cwca7WbR29xRjHRM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/salt/SaltClock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/salt/SaltClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$CuId7_NJKN4Cwca7WbR29xRjHRM;->f$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$CuId7_NJKN4Cwca7WbR29xRjHRM;->f$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->lambda$updateClockVisibility$0$SaltClock()V

    return-void
.end method
