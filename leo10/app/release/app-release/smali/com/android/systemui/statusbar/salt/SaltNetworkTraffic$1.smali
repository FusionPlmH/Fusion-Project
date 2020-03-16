.class Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;
.super Landroid/os/Handler;
.source "SaltNetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private formatOutput(JJLjava/lang/String;)Ljava/lang/String;
    .locals 1

    long-to-float p3, p3

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    div-float/2addr p3, p1

    float-to-long p1, p3

    const-wide/16 p3, 0x400

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1100()Ljava/text/DecimalFormat;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1200(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/32 p3, 0x100000

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1100()Ljava/text/DecimalFormat;

    move-result-object p4

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {p4, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1200(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x4b

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/32 p3, 0x40000000

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1100()Ljava/text/DecimalFormat;

    move-result-object p4

    long-to-float p1, p1

    const/high16 p2, 0x49800000    # 1048576.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {p4, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1200(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x4d

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1100()Ljava/text/DecimalFormat;

    move-result-object p4

    long-to-float p1, p1

    const/high16 p2, 0x4e800000

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {p4, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1200(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x47

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private shouldHide(JJJ)Z
    .locals 3

    long-to-float p3, p3

    long-to-float p4, p5

    const/high16 p5, 0x447a0000    # 1000.0f

    div-float/2addr p4, p5

    div-float/2addr p3, p4

    float-to-long p5, p3

    const-wide/16 v0, 0x400

    div-long/2addr p5, v0

    long-to-float p1, p1

    div-float/2addr p1, p4

    float-to-long p1, p1

    div-long/2addr p1, v0

    iget-object p3, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p3}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$500(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1300(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1400(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I

    move-result p1

    int-to-long p1, p1

    cmp-long p3, p5, p1

    if-gez p3, :cond_1

    :cond_0
    const/4 p4, 0x1

    :cond_1
    return p4

    :cond_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p3}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$500(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_5

    iget-object p3, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p3}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1300(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p3}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1400(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I

    move-result p3

    int-to-long p5, p3

    cmp-long p3, p1, p5

    if-gez p3, :cond_4

    :cond_3
    const/4 p4, 0x1

    :cond_4
    return p4

    :cond_5
    iget-object p3, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p3}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1300(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p3}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1400(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I

    move-result p3

    int-to-long v1, p3

    cmp-long p3, p1, v1

    if-gez p3, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {p1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1400(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I

    move-result p1

    int-to-long p1, p1

    cmp-long p3, p5, p1

    if-gez p3, :cond_7

    :cond_6
    const/4 p4, 0x1

    :cond_7
    return p4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v7, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$000(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v2, v0

    iget-object v3, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v3}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$100(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    const v4, 0x3f733333    # 0.95f

    mul-float v3, v3, v4

    const/4 v8, 0x1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move-object/from16 v2, p1

    iget v2, v2, Landroid/os/Message;->what:I

    if-eq v2, v8, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    :cond_1
    move-wide v9, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$002(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;J)J

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v11

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v13

    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$200(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)J

    move-result-wide v0

    sub-long v15, v11, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$300(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)J

    move-result-wide v0

    sub-long v17, v13, v0

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v3, v17

    move-wide v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->shouldHide(JJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$400(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficVisible:Z

    goto/16 :goto_1

    :cond_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$500(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I

    move-result v0

    if-ne v0, v8, :cond_3

    const-string v5, "B/s"

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide/from16 v3, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$500(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v5, "B/s"

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide v3, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v5, "B/s"

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide/from16 v3, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "B/s"

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide v3, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setGravity(I)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->mTrafficVisible:Z

    :goto_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$600(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$700(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0, v11, v12}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$202(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;J)J

    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0, v13, v14}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$302(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;J)J

    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$800(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$1000(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$900(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, v7, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->access$100(Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
