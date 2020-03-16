.class public interface abstract Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;
.super Ljava/lang/Object;
.source "MQChatFileItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract notifyDataSetChanged()V
.end method

.method public abstract onFileMessageDownloadFailure(Lcom/meiqia/meiqiasdk/model/FileMessage;ILjava/lang/String;)V
.end method

.method public abstract onFileMessageExpired(Lcom/meiqia/meiqiasdk/model/FileMessage;)V
.end method
