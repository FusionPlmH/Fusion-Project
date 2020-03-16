.class public final synthetic Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltAnalogClock$j1whL71OWgUq-WUSwGKA6LWXIeE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

.field private final synthetic f$1:Landroid/database/ContentObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/salt/SaltAnalogClock;Landroid/database/ContentObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltAnalogClock$j1whL71OWgUq-WUSwGKA6LWXIeE;->f$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltAnalogClock$j1whL71OWgUq-WUSwGKA6LWXIeE;->f$1:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltAnalogClock$j1whL71OWgUq-WUSwGKA6LWXIeE;->f$0:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltAnalogClock$j1whL71OWgUq-WUSwGKA6LWXIeE;->f$1:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->lambda$new$0$SaltAnalogClock(Landroid/database/ContentObserver;)V

    return-void
.end method
