.class public final synthetic Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$F8zSeoSKlcy0ELtGKmJ8x8o7jZw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/salt/SaltClock$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/salt/SaltClock$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$F8zSeoSKlcy0ELtGKmJ8x8o7jZw;->f$0:Lcom/android/systemui/statusbar/salt/SaltClock$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$2$F8zSeoSKlcy0ELtGKmJ8x8o7jZw;->f$0:Lcom/android/systemui/statusbar/salt/SaltClock$2;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltClock$2;->lambda$onReceive$3$SaltClock$2()V

    return-void
.end method
