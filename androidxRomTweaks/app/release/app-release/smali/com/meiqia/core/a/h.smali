.class public Lcom/meiqia/core/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meiqia/core/bean/MQMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/bean/MQMessage;)I
    .locals 3

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getCreated_on()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/meiqia/core/bean/MQMessage;->getCreated_on()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/meiqia/core/bean/MQMessage;

    check-cast p2, Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p0, p1, p2}, Lcom/meiqia/core/a/h;->a(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/bean/MQMessage;)I

    move-result p1

    return p1
.end method
