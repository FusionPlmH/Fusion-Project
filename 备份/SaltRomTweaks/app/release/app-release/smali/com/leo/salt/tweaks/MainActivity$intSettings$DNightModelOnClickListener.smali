.class Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/MainActivity$intSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DNightModelOnClickListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/MainActivity$intSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reStartApp(I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$intSettings$DNightModelOnClickListener$neONGIF4M_GvPTqvDgtHMrEv2pk;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$intSettings$DNightModelOnClickListener$neONGIF4M_GvPTqvDgtHMrEv2pk;-><init>(Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public grtDayNightModel(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_night_theme"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->reStartApp(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    invoke-direct {p0, v3}, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->reStartApp(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$reStartApp$0$MainActivity$intSettings$DNightModelOnClickListener(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->reload()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "DayModel"

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/resource/Resource;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "NightModel"

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/resource/Resource;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iget-object p1, p1, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$2100(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->grtDayNightModel(Landroid/content/Context;)V

    return-void
.end method

.method public reload()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iget-object v0, v0, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$2300(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iget-object v1, v1, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/MainActivity;->access$2200(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iget-object v1, v1, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    const/4 v2, 0x0

    const v3, 0x10a0002

    invoke-virtual {v1, v2, v3}, Lcom/leo/salt/tweaks/MainActivity;->overridePendingTransition(II)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iget-object v1, v1, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-virtual {v1, v0}, Lcom/leo/salt/tweaks/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;->this$1:Lcom/leo/salt/tweaks/MainActivity$intSettings;

    iget-object v0, v0, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    const v1, 0x10a0003

    invoke-virtual {v0, v2, v1}, Lcom/leo/salt/tweaks/MainActivity;->overridePendingTransition(II)V

    return-void
.end method
