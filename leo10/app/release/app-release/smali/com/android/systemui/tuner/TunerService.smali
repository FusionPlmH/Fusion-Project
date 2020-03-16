.class public abstract Lcom/android/systemui/tuner/TunerService;
.super Ljava/lang/Object;
.source "TunerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerService$ClearReceiver;,
        Lcom/android/systemui/tuner/TunerService$Tunable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isTunerEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static final setTunerEnabled(Landroid/content/Context;Z)V
    .locals 0

    return-void
.end method

.method public static final showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method private static userContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public varargs abstract addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract getValue(Ljava/lang/String;I)I
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
.end method

.method public abstract setValue(Ljava/lang/String;I)V
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/lang/String;)V
.end method
