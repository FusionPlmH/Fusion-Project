.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignalCallback"
.end annotation


# virtual methods
.method public abstract setBtTetherIndicators(ZI)V
.end method

.method public abstract setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
.end method

.method public abstract setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
.end method

.method public abstract setImsIcon(Landroid/graphics/drawable/Drawable;IZLjava/lang/CharSequence;)V
.end method

.method public abstract setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
.end method

.method public abstract setMPTCPIndicators(ZIII)V
.end method

.method public abstract setMobileDataEnabled(Z)V
.end method

.method public abstract setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIILjava/lang/String;Ljava/lang/String;ZIZ)V
.end method

.method public abstract setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZ)V
.end method

.method public abstract setNWBoosterIndicators(ZZIII)V
.end method

.method public abstract setNoSims(ZZ)V
.end method

.method public abstract setSubs(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
.end method
