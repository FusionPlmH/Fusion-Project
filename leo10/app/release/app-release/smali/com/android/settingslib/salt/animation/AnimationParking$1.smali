.class final Lcom/android/settingslib/salt/animation/AnimationParking$1;
.super Ljava/lang/Object;
.source "AnimationParking.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/salt/animation/AnimationParking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settingslib/salt/animation/AnimationParking;->access$002(Z)Z

    invoke-static {v0}, Lcom/android/settingslib/salt/animation/AnimationParking;->access$102(Z)Z

    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    :cond_0
    return-void
.end method
