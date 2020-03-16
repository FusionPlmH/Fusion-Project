.class public final Landroid/hardware/inputs/AInputManager;
.super Ljava/lang/Object;
.source "AInputManager.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field private static final MSG_DEVICE_ADDED:I = 0x1

.field private static final MSG_DEVICE_CHANGED:I = 0x3

.field private static final MSG_DEVICE_REMOVED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "InputManager"

.field private static sInstance:Landroid/hardware/inputs/AInputManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/inputs/AInputManager;
    .locals 2

    const-class v0, Landroid/hardware/inputs/AInputManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/hardware/inputs/AInputManager;->sInstance:Landroid/hardware/inputs/AInputManager;

    sget-object v1, Landroid/hardware/inputs/AInputManager;->sInstance:Landroid/hardware/inputs/AInputManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
