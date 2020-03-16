.class public Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;
.super Lcom/leo/salt/tweaks/MainActivity;
.source "GlobalActionsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/MainActivity;->onCreate(Landroid/os/Bundle;)V

    iget p1, p0, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->GradientBgStyle:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.leo.ACTION_POWER_D"

    invoke-static {p0, p1}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "com.leo.ACTION_POWER_C"

    invoke-static {p0, p1}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->finish()V

    goto :goto_0

    :cond_2
    const-string p1, "com.leo.ACTION_POWER_B"

    invoke-static {p0, p1}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string p1, "com.leo.ACTION_POWER_A"

    invoke-static {p0, p1}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->finish()V

    :goto_0
    return-void
.end method
