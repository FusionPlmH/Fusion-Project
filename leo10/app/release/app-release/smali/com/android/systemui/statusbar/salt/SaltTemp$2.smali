.class Lcom/android/systemui/statusbar/salt/SaltTemp$2;
.super Ljava/lang/Object;
.source "SaltTemp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/salt/SaltTemp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltTemp;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltTemp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltTemp$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltTemp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltTemp;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->getLeoTempVoltage()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp$2;->this$0:Lcom/android/systemui/statusbar/salt/SaltTemp;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->access$000(Lcom/android/systemui/statusbar/salt/SaltTemp;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    mul-long v1, v1, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
