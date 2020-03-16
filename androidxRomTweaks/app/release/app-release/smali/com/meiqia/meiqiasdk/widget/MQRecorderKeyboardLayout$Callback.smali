.class public interface abstract Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout$Callback;
.super Ljava/lang/Object;
.source "MQRecorderKeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/widget/MQRecorderKeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAudioRecorderFinish(ILjava/lang/String;)V
.end method

.method public abstract onAudioRecorderNoPermission()V
.end method

.method public abstract onAudioRecorderTooShort()V
.end method
