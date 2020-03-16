.class Lcom/leo/salt/tweaks/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/MainActivity;->applyBlur()V
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

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$2;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$2;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    iget-object v0, v0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$2;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    iget-object v0, v0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->buildDrawingCache()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$2;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    iget-object v0, v0, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity$2;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    iget-object v1, v1, Lcom/leo/salt/tweaks/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {v1, v0}, Lcom/leo/salt/tweaks/resource/Resource;->blur(Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    return v0
.end method
