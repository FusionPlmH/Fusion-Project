.class Lcom/leo/salt/tweaks/MainActivity$LeoObserver;
.super Landroid/database/ContentObserver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeoObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/MainActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/MainActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$LeoObserver;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$LeoObserver;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$1500(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_blur_shadow"

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "leo_salt_power_menu_style"

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "leo_salt_global_power_globala_ctionsStyle_style"

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$LeoObserver;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/MainActivity;->AppSetting()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$LeoObserver;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/MainActivity;->AppSetting()V

    return-void
.end method
