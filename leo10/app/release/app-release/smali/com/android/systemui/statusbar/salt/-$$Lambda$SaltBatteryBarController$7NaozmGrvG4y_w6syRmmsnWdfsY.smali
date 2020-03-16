.class public final synthetic Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltBatteryBarController$7NaozmGrvG4y_w6syRmmsnWdfsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltBatteryBarController$7NaozmGrvG4y_w6syRmmsnWdfsY;->f$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltBatteryBarController$7NaozmGrvG4y_w6syRmmsnWdfsY;->f$0:Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->lambda$onConfigurationChanged$0$SaltBatteryBarController()V

    return-void
.end method
