.class public abstract Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;
.super Ljava/lang/Object;
.source "AppBarStateChangeListener.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;
    }
.end annotation


# instance fields
.field private mCurrentState:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->IDLE:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;->mCurrentState:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;->mCurrentState:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    sget-object v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->EXPANDED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_0

    sget-object p2, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->EXPANDED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;)V

    :cond_0
    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->EXPANDED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;->mCurrentState:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-lt p2, v0, :cond_3

    iget-object p2, p0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;->mCurrentState:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    sget-object v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->COLLAPSED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_2

    sget-object p2, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->COLLAPSED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;)V

    :cond_2
    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->COLLAPSED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;->mCurrentState:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;->mCurrentState:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    sget-object v0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->IDLE:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_4

    sget-object p2, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->IDLE:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;)V

    :cond_4
    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->IDLE:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;->mCurrentState:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    :goto_0
    return-void
.end method

.method public abstract onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;)V
.end method
