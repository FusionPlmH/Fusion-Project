.class public interface abstract Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;
.super Ljava/lang/Object;
.source "MQBaseBubbleItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getCurrentDownloadingItemPosition()I
.end method

.method public abstract getCurrentPlayingItemPosition()I
.end method

.method public abstract isLastItemAndVisible(I)Z
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method public abstract onFileMessageDownloadFailure(Lcom/meiqia/meiqiasdk/model/FileMessage;ILjava/lang/String;)V
.end method

.method public abstract onFileMessageExpired(Lcom/meiqia/meiqiasdk/model/FileMessage;)V
.end method

.method public abstract photoPreview(Ljava/lang/String;)V
.end method

.method public abstract resendFailedMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
.end method

.method public abstract scrollContentToBottom()V
.end method

.method public abstract setCurrentDownloadingItemPosition(I)V
.end method

.method public abstract setVoiceMessageDuration(Lcom/meiqia/meiqiasdk/model/VoiceMessage;Ljava/lang/String;)V
.end method

.method public abstract startPlayVoiceAndRefreshList(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
.end method

.method public abstract stopPlayVoice()V
.end method
