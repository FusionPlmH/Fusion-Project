.class public final Lcom/leo/salt/MainActivity$initNavigationView$toggle$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/MainActivity;->initNavigationView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/leo/salt/MainActivity$initNavigationView$toggle$1",
        "Landroid/support/v7/app/ActionBarDrawerToggle;",
        "onDrawerSlide",
        "",
        "drawerView",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/MainActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$toggle$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$toggle$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getDrawerLayout$p(Lcom/leo/salt/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float p2, v1, p2

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    const v2, 0x3e99999a    # 0.3f

    mul-float v2, v2, p2

    sub-float v2, v1, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    const v2, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccd    # 0.4f

    sub-float/2addr v1, p2

    mul-float v4, v4, v1

    add-float/2addr v4, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    const-string p2, "mContent"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
