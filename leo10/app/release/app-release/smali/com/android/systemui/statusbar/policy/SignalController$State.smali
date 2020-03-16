.class Lcom/android/systemui/statusbar/policy/SignalController$State;
.super Ljava/lang/Object;
.source "SignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field activityIn:Z

.field activityOut:Z

.field connected:Z

.field enabled:Z

.field iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field inetCondition:I

.field level:I

.field rssi:I

.field time:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    iget-wide v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "connected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "enabled="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "level="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "inetCondition="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "iconGroup="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "activityIn="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "activityOut="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "rssi="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "lastModified="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    const-string v2, "MM-dd HH:mm:ss"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method
