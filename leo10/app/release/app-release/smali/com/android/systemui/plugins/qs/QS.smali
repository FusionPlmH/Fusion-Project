.class public interface abstract Lcom/android/systemui/plugins/qs/QS;
.super Ljava/lang/Object;
.source "QS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/qs/QS$HeightListener;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_QS"

.field public static final TAG:Ljava/lang/String; = "QS"

.field public static final VERSION:I = 0x6


# virtual methods
.method public abstract animateHeaderSlidingIn(J)V
.end method

.method public abstract animateHeaderSlidingOut()V
.end method

.method public abstract closeDetail()V
.end method

.method public abstract getDesiredHeight()I
.end method

.method public abstract getHeader()Landroid/view/View;
.end method

.method public abstract getQsMinExpansionHeight()I
.end method

.method public abstract hideImmediately()V
.end method

.method public abstract isCustomizing()Z
.end method

.method public abstract isShowingDetail()Z
.end method

.method public abstract notifyCustomizeChanged()V
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setContainer(Landroid/view/ViewGroup;)V
.end method

.method public abstract setExpandClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setExpanded(Z)V
.end method

.method public abstract setHasNotifications(Z)V
.end method

.method public abstract setHeaderClickable(Z)V
.end method

.method public abstract setHeaderListening(Z)V
.end method

.method public abstract setHeightOverride(I)V
.end method

.method public abstract setKeyguardShowing(Z)V
.end method

.method public abstract setListening(Z)V
.end method

.method public abstract setOverscrolling(Z)V
.end method

.method public abstract setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
.end method

.method public abstract setQsExpansion(FF)V
.end method
