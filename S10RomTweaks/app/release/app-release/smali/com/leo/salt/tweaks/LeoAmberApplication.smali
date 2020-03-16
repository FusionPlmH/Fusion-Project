.class public Lcom/leo/salt/tweaks/LeoAmberApplication;
.super Landroid/app/Application;
.source "LeoAmberApplication.java"


# static fields
.field public static App:Lcom/leo/salt/tweaks/LeoAmberApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/LeoAmberApplication;->App:Lcom/leo/salt/tweaks/LeoAmberApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/leo/salt/tweaks/LeoAmberApplication;->App:Lcom/leo/salt/tweaks/LeoAmberApplication;

    sget-object v0, Lcom/leo/salt/tools/service/InitService;->Companion:Lcom/leo/salt/tools/service/InitService$Companion;

    invoke-virtual {v0, p0}, Lcom/leo/salt/tools/service/InitService$Companion;->start(Landroid/content/Context;)V

    return-void
.end method
