.class Landroid/support/design/widget/TabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private autoRefresh:Z

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 0

    iget-object p2, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object p2, p2, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean p2, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->autoRefresh:Z

    invoke-virtual {p1, p3, p2}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    :cond_0
    return-void
.end method

.method setAutoRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->autoRefresh:Z

    return-void
.end method
