.class Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;
.super Landroid/database/ContentObserver;
.source "SaltClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/salt/SaltClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeoObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoStatusBarClock:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateSettings()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockColor()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockSize()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;->this$0:Lcom/android/systemui/statusbar/salt/SaltClock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->access$000(Lcom/android/systemui/statusbar/salt/SaltClock;)V

    return-void
.end method
