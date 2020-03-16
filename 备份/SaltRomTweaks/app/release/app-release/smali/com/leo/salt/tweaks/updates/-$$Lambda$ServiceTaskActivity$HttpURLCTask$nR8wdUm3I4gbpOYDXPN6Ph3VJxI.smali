.class public final synthetic Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$HttpURLCTask$nR8wdUm3I4gbpOYDXPN6Ph3VJxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$HttpURLCTask$nR8wdUm3I4gbpOYDXPN6Ph3VJxI;->f$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/-$$Lambda$ServiceTaskActivity$HttpURLCTask$nR8wdUm3I4gbpOYDXPN6Ph3VJxI;->f$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$HttpURLCTask;->lambda$doInBackground$0$ServiceTaskActivity$HttpURLCTask()V

    return-void
.end method
