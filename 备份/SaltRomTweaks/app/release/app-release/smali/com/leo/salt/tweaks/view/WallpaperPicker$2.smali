.class Lcom/leo/salt/tweaks/view/WallpaperPicker$2;
.super Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;
.source "WallpaperPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/WallpaperPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/WallpaperPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$2;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;)V
    .locals 1

    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->EXPANDED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$2;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->COLLAPSED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$2;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mCardView:Landroid/support/v7/widget/CardView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$2;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    :goto_0
    return-void
.end method
