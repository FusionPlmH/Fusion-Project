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
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/MainActivity;->onCreate(Landroid/os/Bundle;)V

    iget p1, p0, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->GradientBgStyle:I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->mContext:Landroid/app/Activity;

    const-string v1, "com.leo.ACTION_POWER_SIMPLIFY"

    invoke-static {v0, v1}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->mContext:Landroid/app/Activity;

    const-string v0, "com.leo.ACTION_POWER_A"

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->mContext:Landroid/app/Activity;

    const-string v0, "com.leo.ACTION_POWER_B"

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->mContext:Landroid/app/Activity;

    const-string v0, "com.leo.ACTION_POWER_C"

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/GlobalActionsActivity;->mContext:Landroid/app/Activity;

    const-string v0, "com.leo.ACTION_POWER_D"

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->PowerMenuService(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
