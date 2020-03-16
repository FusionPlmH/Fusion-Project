.class public final synthetic Lcom/leo/salt/utils/safety/-$$Lambda$FirmwareSecurity$ua2stXJIfhJGdYmpSe9KAP7BILA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/utils/safety/FirmwareSecurity;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/utils/safety/FirmwareSecurity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/utils/safety/-$$Lambda$FirmwareSecurity$ua2stXJIfhJGdYmpSe9KAP7BILA;->f$0:Lcom/leo/salt/utils/safety/FirmwareSecurity;

    iput-object p2, p0, Lcom/leo/salt/utils/safety/-$$Lambda$FirmwareSecurity$ua2stXJIfhJGdYmpSe9KAP7BILA;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/utils/safety/-$$Lambda$FirmwareSecurity$ua2stXJIfhJGdYmpSe9KAP7BILA;->f$0:Lcom/leo/salt/utils/safety/FirmwareSecurity;

    iget-object v1, p0, Lcom/leo/salt/utils/safety/-$$Lambda$FirmwareSecurity$ua2stXJIfhJGdYmpSe9KAP7BILA;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->lambda$getCheckData$0$FirmwareSecurity(Landroid/content/Context;)V

    return-void
.end method
