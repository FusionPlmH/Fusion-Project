.class Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;
.super Landroid/database/ContentObserver;
.source "LeoNavigationDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeoObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;->this$0:Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;->this$0:Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;

    iget-object v0, v0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_drawer_carrier"

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "leo_salt_drawer_carrier_string"

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "leo_salt_drawer_card_wallpaper_url"

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "leo_salt_drawer_card"

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "leo_salt_hide_nav"

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "leo_salt_hide_nav_whitelist"

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;->this$0:Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->initView()V

    return-void
.end method
