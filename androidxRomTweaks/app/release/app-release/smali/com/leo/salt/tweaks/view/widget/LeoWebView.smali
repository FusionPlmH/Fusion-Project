.class public Lcom/leo/salt/tweaks/view/widget/LeoWebView;
.super Landroid/webkit/WebView;
.source "LeoWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/widget/LeoWebView$IScrollListener;
    }
.end annotation


# instance fields
.field private mScrollListener:Lcom/leo/salt/tweaks/view/widget/LeoWebView$IScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->mScrollListener:Lcom/leo/salt/tweaks/view/widget/LeoWebView$IScrollListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/leo/salt/tweaks/view/widget/LeoWebView$IScrollListener;->onScrollChanged(I)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/leo/salt/tweaks/view/widget/LeoWebView$IScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->mScrollListener:Lcom/leo/salt/tweaks/view/widget/LeoWebView$IScrollListener;

    return-void
.end method
