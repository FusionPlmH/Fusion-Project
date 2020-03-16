.class final Lcom/os/salt/globalactions/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/os/salt/globalactions/Utils;->screenshot(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/os/salt/globalactions/Utils$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0xd0

    invoke-static {p0, v0}, Lcom/os/salt/globalactions/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic lambda$onClick$1(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0xd1

    invoke-static {p0, v0}, Lcom/os/salt/globalactions/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-wide/16 v0, 0x258

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/os/salt/globalactions/Utils$1;->val$context:Landroid/app/Activity;

    new-instance v3, Lcom/os/salt/globalactions/-$$Lambda$Utils$1$Php3mUM_0e5Kl56sdmrwrji4Hio;

    invoke-direct {v3, v2}, Lcom/os/salt/globalactions/-$$Lambda$Utils$1$Php3mUM_0e5Kl56sdmrwrji4Hio;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/os/salt/globalactions/Utils$1;->val$context:Landroid/app/Activity;

    new-instance v3, Lcom/os/salt/globalactions/-$$Lambda$Utils$1$-RSlgzBs8q_c8KeXE3vVAKksaqg;

    invoke-direct {v3, v2}, Lcom/os/salt/globalactions/-$$Lambda$Utils$1$-RSlgzBs8q_c8KeXE3vVAKksaqg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object p2, p0, Lcom/os/salt/globalactions/Utils$1;->val$context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
