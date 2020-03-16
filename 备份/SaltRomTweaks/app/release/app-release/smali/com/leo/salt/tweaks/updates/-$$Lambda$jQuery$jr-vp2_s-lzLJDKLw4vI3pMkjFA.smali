.class public final synthetic Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$jr-vp2_s-lzLJDKLw4vI3pMkjFA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/updates/jQuery;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/updates/jQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$jr-vp2_s-lzLJDKLw4vI3pMkjFA;->f$0:Lcom/leo/salt/tweaks/updates/jQuery;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/-$$Lambda$jQuery$jr-vp2_s-lzLJDKLw4vI3pMkjFA;->f$0:Lcom/leo/salt/tweaks/updates/jQuery;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/updates/jQuery;->lambda$sendRequestWithHttpURLConnection$1$jQuery()V

    return-void
.end method
