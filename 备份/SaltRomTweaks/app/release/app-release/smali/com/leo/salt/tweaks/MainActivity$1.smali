.class Lcom/leo/salt/tweaks/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/MainActivity;->DrawerLayoutView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/MainActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$1;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$1;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$000(Lcom/leo/salt/tweaks/MainActivity;)Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->hide()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$1;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$100(Lcom/leo/salt/tweaks/MainActivity;)Landroid/support/design/widget/BottomNavigationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomNavigationView;->setVisibility(I)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$1;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$000(Lcom/leo/salt/tweaks/MainActivity;)Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->hide()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$1;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$100(Lcom/leo/salt/tweaks/MainActivity;)Landroid/support/design/widget/BottomNavigationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomNavigationView;->setVisibility(I)V

    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 6

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$1;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    iget-object v0, v0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    float-to-double v1, v1

    const-wide v3, 0x3fd3333333333333L    # 0.3

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    double-to-float v3, v3

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    add-double/2addr v1, v4

    double-to-float v1, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
