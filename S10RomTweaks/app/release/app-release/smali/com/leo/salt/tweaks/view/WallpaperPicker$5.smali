.class Lcom/leo/salt/tweaks/view/WallpaperPicker$5;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/WallpaperPicker;->onWallpaperDialog()V
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

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$5;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$5;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    iget-object v0, v0, Lcom/leo/salt/tweaks/view/WallpaperPicker;->mWallpaperName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "delete_wallpaper"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->ToastALL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$5;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->access$100(Lcom/leo/salt/tweaks/view/WallpaperPicker;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$5;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->finish()V

    return-void
.end method