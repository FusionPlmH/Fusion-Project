.class public final synthetic Lcom/leo/salt/tweaks/updates/-$$Lambda$UpdatesMessage$7I0cXV0dQWcPv7MYpI8OfTdOg30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/updates/UpdatesMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/updates/UpdatesMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/-$$Lambda$UpdatesMessage$7I0cXV0dQWcPv7MYpI8OfTdOg30;->f$0:Lcom/leo/salt/tweaks/updates/UpdatesMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/-$$Lambda$UpdatesMessage$7I0cXV0dQWcPv7MYpI8OfTdOg30;->f$0:Lcom/leo/salt/tweaks/updates/UpdatesMessage;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/updates/UpdatesMessage;->lambda$sendRequestWithHttpURLConnection$0$UpdatesMessage()V

    return-void
.end method
