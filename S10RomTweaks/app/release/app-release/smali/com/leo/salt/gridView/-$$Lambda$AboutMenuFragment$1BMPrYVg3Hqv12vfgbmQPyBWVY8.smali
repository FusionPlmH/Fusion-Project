.class public final synthetic Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$1BMPrYVg3Hqv12vfgbmQPyBWVY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/gridView/AboutMenuFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$1BMPrYVg3Hqv12vfgbmQPyBWVY8;->f$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/gridView/-$$Lambda$AboutMenuFragment$1BMPrYVg3Hqv12vfgbmQPyBWVY8;->f$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-virtual {v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->lambda$sendRequestWithHttpURLConnection$3$AboutMenuFragment()V

    return-void
.end method
