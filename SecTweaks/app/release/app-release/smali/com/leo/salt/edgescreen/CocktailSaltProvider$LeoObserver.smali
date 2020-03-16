.class Lcom/leo/salt/edgescreen/CocktailSaltProvider$LeoObserver;
.super Landroid/database/ContentObserver;
.source "CocktailSaltProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/edgescreen/CocktailSaltProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeoObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/edgescreen/CocktailSaltProvider;


# direct methods
.method constructor <init>(Lcom/leo/salt/edgescreen/CocktailSaltProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/edgescreen/CocktailSaltProvider$LeoObserver;->this$0:Lcom/leo/salt/edgescreen/CocktailSaltProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 1

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    return-void
.end method
