.class Lcom/leo/salt/tweaks/view/WallpaperPicker$1;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$1;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/WallpaperPicker$1;->this$0:Lcom/leo/salt/tweaks/view/WallpaperPicker;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/leo/salt/tweaks/view/WallpaperPicker;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
