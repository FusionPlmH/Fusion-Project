.class Lcom/leo/salt/wallpaper/WallpaperPicker$3;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/wallpaper/WallpaperPicker;->onWallpaperDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/wallpaper/WallpaperPicker;


# direct methods
.method constructor <init>(Lcom/leo/salt/wallpaper/WallpaperPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/wallpaper/WallpaperPicker$3;->this$0:Lcom/leo/salt/wallpaper/WallpaperPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker$3;->this$0:Lcom/leo/salt/wallpaper/WallpaperPicker;

    invoke-virtual {p2}, Lcom/leo/salt/wallpaper/WallpaperPicker;->WallpaperUse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lcom/leo/salt/wallpaper/WallpaperPicker$3;->this$0:Lcom/leo/salt/wallpaper/WallpaperPicker;

    invoke-virtual {p2}, Lcom/leo/salt/wallpaper/WallpaperPicker;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/leo/salt/widget/DialogUtil;->WallpaperSuccess(Landroid/app/Activity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
