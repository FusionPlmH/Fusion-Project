.class public final synthetic Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$gM0c0kIfpiBms7TwtDJ9SrHQTJs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/leo/service/plug/tileservice/LeoBoot;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/leo/service/plug/tileservice/LeoBoot;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$gM0c0kIfpiBms7TwtDJ9SrHQTJs;->f$0:Lcom/leo/service/plug/tileservice/LeoBoot;

    iput p2, p0, Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$gM0c0kIfpiBms7TwtDJ9SrHQTJs;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$gM0c0kIfpiBms7TwtDJ9SrHQTJs;->f$0:Lcom/leo/service/plug/tileservice/LeoBoot;

    iget v1, p0, Lcom/leo/service/plug/tileservice/-$$Lambda$LeoBoot$gM0c0kIfpiBms7TwtDJ9SrHQTJs;->f$1:I

    invoke-static {v0, v1}, Lcom/leo/service/plug/tileservice/LeoBoot;->lambda$null$0(Lcom/leo/service/plug/tileservice/LeoBoot;I)V

    return-void
.end method
