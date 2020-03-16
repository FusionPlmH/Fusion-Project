.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy$WindowState;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowState"
.end annotation


# virtual methods
.method public abstract canAcquireSleepToken()Z
.end method

.method public abstract canAddInternalSystemWindow()Z
.end method

.method public abstract canAffectSystemUiFlags()Z
.end method

.method public abstract computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
.end method

.method public abstract getAppToken()Landroid/view/IApplicationToken;
.end method

.method public abstract getAttrs()Landroid/view/WindowManager$LayoutParams;
.end method

.method public abstract getBaseType()I
.end method

.method public abstract getContentFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getDisplayFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getGivenContentInsetsLw()Landroid/graphics/Rect;
.end method

.method public abstract getGivenInsetsPendingLw()Z
.end method

.method public abstract getGivenVisibleInsetsLw()Landroid/graphics/Rect;
.end method

.method public abstract getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract getOverscanFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getOwningPackage()Ljava/lang/String;
.end method

.method public abstract getOwningUid()I
.end method

.method public abstract getRotationAnimationHint()I
.end method

.method public abstract getSurfaceLayer()I
.end method

.method public abstract getSystemUiVisibility()I
.end method

.method public abstract getVisibleFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getWindowingMode()I
.end method

.method public abstract hasAppShownWindows()Z
.end method

.method public abstract hasDrawnLw()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hideLw(Z)Z
.end method

.method public abstract isAlive()Z
.end method

.method public abstract isAnimatingLw()Z
.end method

.method public abstract isDefaultDisplay()Z
.end method

.method public abstract isDimming()Z
.end method

.method public abstract isDisplayedLw()Z
.end method

.method public abstract isDrawnLw()Z
.end method

.method public abstract isGoneForLayoutLw()Z
.end method

.method public abstract isInMultiWindowMode()Z
.end method

.method public abstract isInputMethodTarget()Z
.end method

.method public abstract isInputMethodWindow()Z
.end method

.method public abstract isLetterboxedForDisplayCutoutLw()Z
.end method

.method public abstract isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z
.end method

.method public abstract isVisibleLw()Z
.end method

.method public abstract isVoiceInteraction()Z
.end method

.method public abstract showLw(Z)Z
.end method
