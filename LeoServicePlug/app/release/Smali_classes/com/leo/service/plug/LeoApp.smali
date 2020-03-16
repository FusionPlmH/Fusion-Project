.class public Lcom/leo/service/plug/LeoApp;
.super Landroid/app/Application;
.source "LeoApp.java"


# static fields
.field public static mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 15
    sget-object v0, Lcom/leo/service/plug/LeoApp;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    sput-object p0, Lcom/leo/service/plug/LeoApp;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .line 28
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method
