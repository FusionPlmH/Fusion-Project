.class Lcom/leo/salt/tweaks/view/WallpaperPicker$3;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/WallpaperPicker;->onActivityResult(IILandroid/content/Intent;)V
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

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$3;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$3;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->onWallpaperDialog()V

    return-void
.end method
