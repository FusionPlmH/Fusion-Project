.class Lcom/leo/salt/tweaks/MainActivity$intSettings$1;
.super Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/MainActivity$intSettings;-><init>(Lcom/leo/salt/tweaks/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

.field final synthetic val$mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field final synthetic val$this$0:Lcom/leo/salt/tweaks/MainActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/MainActivity$intSettings;Lcom/leo/salt/tweaks/MainActivity;Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iput-object p2, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->val$this$0:Lcom/leo/salt/tweaks/MainActivity;

    iput-object p3, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->val$mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;)V
    .locals 2

    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->EXPANDED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->val$mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleColor(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->val$mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string p2, "ro.build.rom.name"

    invoke-static {p2}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/MainActivity$intSettings;->setAndroidNativeLightStatusBar(Z)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->val$mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitleEnabled(Z)V

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->COLLAPSED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iget-object p1, p1, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/PrefUtils;->DayNight(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/MainActivity$intSettings;->setAndroidNativeLightStatusBar(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/MainActivity$intSettings;->setAndroidNativeLightStatusBar(Z)V

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->val$mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitleEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iget-object p1, p1, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$000(Lcom/leo/salt/tweaks/MainActivity;)Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->hide()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iget-object p1, p1, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$100(Lcom/leo/salt/tweaks/MainActivity;)Landroid/support/design/widget/BottomNavigationView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/design/widget/BottomNavigationView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iget-object p1, p1, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/PrefUtils;->DayNight(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/MainActivity$intSettings;->setAndroidNativeLightStatusBar(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/MainActivity$intSettings;->setAndroidNativeLightStatusBar(Z)V

    :goto_1
    return-void
.end method
