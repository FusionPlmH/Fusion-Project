.class public final synthetic Lcom/leo/salt/plug/-$$Lambda$Utils$1$Dn4v5NskWlttkerBIklOaNIpDt0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/plug/-$$Lambda$Utils$1$Dn4v5NskWlttkerBIklOaNIpDt0;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/plug/-$$Lambda$Utils$1$Dn4v5NskWlttkerBIklOaNIpDt0;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lcom/leo/salt/plug/Utils$1;->lambda$onClick$1(Landroid/app/Activity;)V

    return-void
.end method
