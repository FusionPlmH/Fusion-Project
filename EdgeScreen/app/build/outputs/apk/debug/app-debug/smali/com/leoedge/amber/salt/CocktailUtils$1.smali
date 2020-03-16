.class final Lcom/leoedge/amber/salt/CocktailUtils$1;
.super Ljava/lang/Object;
.source "CocktailUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leoedge/amber/salt/CocktailUtils;->EnglishDonate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/leoedge/amber/salt/CocktailUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "https://www.paypal.me/plmh"

    iget-object v1, p0, Lcom/leoedge/amber/salt/CocktailUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/leoedge/amber/salt/CocktailUtils;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
