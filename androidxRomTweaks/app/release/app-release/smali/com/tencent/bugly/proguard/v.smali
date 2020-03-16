.class public final Lcom/tencent/bugly/proguard/v;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:[B

.field private final f:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final g:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private final h:Lcom/tencent/bugly/proguard/s;

.field private final i:Lcom/tencent/bugly/proguard/u;

.field private final j:I

.field private final k:Lcom/tencent/bugly/proguard/t;

.field private final l:Lcom/tencent/bugly/proguard/t;

.field private m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:J

.field private r:J

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZIIZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/t;",
            "ZIIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x2

    iput v3, v0, Lcom/tencent/bugly/proguard/v;->a:I

    const/16 v3, 0x7530

    iput v3, v0, Lcom/tencent/bugly/proguard/v;->b:I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    const/4 v4, 0x0

    iput v4, v0, Lcom/tencent/bugly/proguard/v;->p:I

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/tencent/bugly/proguard/v;->q:J

    iput-wide v5, v0, Lcom/tencent/bugly/proguard/v;->r:J

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/tencent/bugly/proguard/v;->s:Z

    iput-boolean v4, v0, Lcom/tencent/bugly/proguard/v;->t:Z

    move-object v4, p1

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    move-object v5, p4

    iput-object v5, v0, Lcom/tencent/bugly/proguard/v;->e:[B

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/s;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/s;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Lcom/tencent/bugly/proguard/u;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    move v4, p2

    iput v4, v0, Lcom/tencent/bugly/proguard/v;->j:I

    move-object v4, p5

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    move-object v4, p6

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    move-object v4, p7

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iput-object v3, v0, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    move v3, p8

    iput-boolean v3, v0, Lcom/tencent/bugly/proguard/v;->s:Z

    move v3, p3

    iput v3, v0, Lcom/tencent/bugly/proguard/v;->d:I

    if-lez v1, :cond_0

    iput v1, v0, Lcom/tencent/bugly/proguard/v;->a:I

    :cond_0
    if-lez v2, :cond_1

    iput v2, v0, Lcom/tencent/bugly/proguard/v;->b:I

    :cond_1
    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/v;->t:Z

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZZ)V
    .locals 13

    const/4 v9, 0x2

    const/16 v10, 0x7530

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lcom/tencent/bugly/proguard/v;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZIIZLjava/util/Map;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "%s?aid=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    return-object p0
.end method

.method private a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V
    .locals 3

    iget p1, p0, Lcom/tencent/bugly/proguard/v;->d:I

    const/16 v0, 0x276

    if-eq p1, v0, :cond_1

    const/16 v0, 0x280

    if-eq p1, v0, :cond_0

    const/16 v0, 0x33e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x348

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "userinfo"

    goto :goto_0

    :cond_1
    const-string p1, "crash"

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "[Upload] Success: %s"

    invoke-static {p1, p3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p4, v2, p1

    const-string p1, "[Upload] Failed to upload(%d) %s: %s"

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    const/4 p3, 0x0

    invoke-virtual {p1, p5, p3}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/aq;)V

    :cond_3
    :goto_1
    iget-wide p3, p0, Lcom/tencent/bugly/proguard/v;->q:J

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean p3, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {p1, p3}, Lcom/tencent/bugly/proguard/u;->a(Z)J

    move-result-wide p3

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    add-long/2addr p3, v0

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr p3, v0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean p5, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {p1, p3, p4, p5}, Lcom/tencent/bugly/proguard/u;->a(JZ)V

    :cond_4
    iget-object p1, p0, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    if-eqz p1, :cond_5

    iget p3, p0, Lcom/tencent/bugly/proguard/v;->d:I

    iget-wide p3, p0, Lcom/tencent/bugly/proguard/v;->q:J

    iget-wide p3, p0, Lcom/tencent/bugly/proguard/v;->r:J

    invoke-interface {p1, p2}, Lcom/tencent/bugly/proguard/t;->a(Z)V

    :cond_5
    iget-object p1, p0, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    if-eqz p1, :cond_6

    iget p3, p0, Lcom/tencent/bugly/proguard/v;->d:I

    iget-wide p3, p0, Lcom/tencent/bugly/proguard/v;->q:J

    iget-wide p3, p0, Lcom/tencent/bugly/proguard/v;->r:J

    invoke-interface {p1, p2}, Lcom/tencent/bugly/proguard/t;->a(Z)V

    :cond_6
    return-void
.end method

.method private static a(Lcom/tencent/bugly/proguard/aq;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "resp == null!"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_0
    iget-byte v1, p0, Lcom/tencent/bugly/proguard/aq;->a:B

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    iget-byte p0, p0, Lcom/tencent/bugly/proguard/aq;->a:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "resp result error %d"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "UTF-8"

    if-nez v1, :cond_2

    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v4

    sget v5, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v6, "gateway"

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aq;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v4

    sget v5, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v6, "device"

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    :cond_3
    :goto_0
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/aq;->e:J

    iput-wide v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->i:J

    iget p1, p0, Lcom/tencent/bugly/proguard/aq;->b:I

    const/16 v1, 0x1fe

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/tencent/bugly/proguard/aq;->c:[B

    if-nez p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/tencent/bugly/proguard/aq;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "[Upload] Strategy data is null. Response cmd: %d"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_4
    iget-object p1, p0, Lcom/tencent/bugly/proguard/aq;->c:[B

    const-class v1, Lcom/tencent/bugly/proguard/as;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/a;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/k;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/as;

    if-nez p1, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/tencent/bugly/proguard/aq;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "[Upload] Failed to decode strategy from server. Response cmd: %d"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_5
    invoke-virtual {p2, p1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/proguard/as;)V

    :cond_6
    return v2
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget v0, p0, Lcom/tencent/bugly/proguard/v;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/v;->p:I

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    return-void
.end method

.method public final b(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    return-void
.end method

.method public final run()V
    .locals 21

    move-object/from16 v7, p0

    const-string v0, "[Upload] Failed to upload for no status header."

    const-string v1, "Bugly-Version"

    const/4 v2, 0x0

    :try_start_0
    iput v2, v7, Lcom/tencent/bugly/proguard/v;->p:I

    const-wide/16 v3, 0x0

    iput-wide v3, v7, Lcom/tencent/bugly/proguard/v;->q:J

    iput-wide v3, v7, Lcom/tencent/bugly/proguard/v;->r:J

    iget-object v5, v7, Lcom/tencent/bugly/proguard/v;->e:[B

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/bugly/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "network is not available"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_0
    if-eqz v5, :cond_22

    array-length v6, v5

    if-nez v6, :cond_1

    goto/16 :goto_b

    :cond_1
    const-string v6, "[Upload] Run upload task with cmd: %d"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    iget v10, v7, Lcom/tencent/bugly/proguard/v;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6, v9}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->c:Landroid/content/Context;

    if-eqz v6, :cond_21

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    if-eqz v6, :cond_21

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    if-eqz v6, :cond_21

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    if-nez v6, :cond_2

    goto/16 :goto_a

    :cond_2
    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v6}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "illegal local strategy"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_3
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "prodId"

    iget-object v11, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "bundleId"

    iget-object v11, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v11, v11, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "appVer"

    iget-object v11, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v11, v11, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v7, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    if-eqz v10, :cond_4

    iget-object v10, v7, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    iget-boolean v10, v7, Lcom/tencent/bugly/proguard/v;->s:Z

    const/4 v11, 0x2

    if-eqz v10, :cond_7

    const-string v10, "cmd"

    iget v12, v7, Lcom/tencent/bugly/proguard/v;->d:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "platformId"

    invoke-static {v8}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "sdkVer"

    iget-object v12, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "3.1.0"

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "strategylastUpdateTime"

    iget-wide v12, v6, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v6, v9}, Lcom/tencent/bugly/proguard/u;->a(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "failed to add security info to HTTP headers"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_5
    invoke-static {v5, v11}, Lcom/tencent/bugly/proguard/z;->a([BI)[B

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "failed to zip request body"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_6
    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v6, v5}, Lcom/tencent/bugly/proguard/u;->a([B)[B

    move-result-object v5

    if-nez v5, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "failed to encrypt request body"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_7
    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget v10, v7, Lcom/tencent/bugly/proguard/v;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v10, v12, v13}, Lcom/tencent/bugly/proguard/u;->a(IJ)V

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    if-eqz v6, :cond_8

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    iget v6, v7, Lcom/tencent/bugly/proguard/v;->d:I

    :cond_8
    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    if-eqz v6, :cond_9

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    iget v6, v7, Lcom/tencent/bugly/proguard/v;->d:I

    :cond_9
    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    const/4 v10, -0x1

    move-object v12, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v13, -0x1

    :goto_0
    add-int/lit8 v14, v6, 0x1

    iget v15, v7, Lcom/tencent/bugly/proguard/v;->a:I

    if-ge v6, v15, :cond_20

    if-le v14, v8, :cond_a

    const-string v6, "[Upload] Failed to upload last time, wait and try(%d) again."

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v2

    invoke-static {v6, v10}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v6, v7, Lcom/tencent/bugly/proguard/v;->b:I

    int-to-long v3, v6

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/z;->b(J)V

    iget v3, v7, Lcom/tencent/bugly/proguard/v;->a:I

    if-ne v14, v3, :cond_a

    const-string v3, "[Upload] Use the back-up url at the last time: %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    aput-object v6, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v12, v7, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    :cond_a
    const-string v3, "[Upload] Send %d bytes"

    new-array v4, v8, [Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-boolean v3, v7, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v3, :cond_b

    invoke-static {v12}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    :cond_b
    const-string v3, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v12, v4, v2

    iget v6, v7, Lcom/tencent/bugly/proguard/v;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v11

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x3

    aput-object v6, v4, v10

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, v7, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    invoke-virtual {v3, v12, v5, v7, v9}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/v;Ljava/util/Map;)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v4, "[Upload] Failed to upload(%d): %s"

    if-nez v3, :cond_c

    :try_start_1
    const-string v3, "Failed to upload for no response!"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v2

    aput-object v3, v6, v8

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v6, v14

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    iget-boolean v15, v7, Lcom/tencent/bugly/proguard/v;->s:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v15, :cond_16

    const-string v15, "status"

    if-eqz v6, :cond_11

    :try_start_2
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v16

    if-nez v16, :cond_d

    goto :goto_2

    :cond_d
    invoke-interface {v6, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v10, "[Upload] Headers does not contain %s"

    if-nez v16, :cond_e

    :try_start_3
    new-array v11, v8, [Ljava/lang/Object;

    aput-object v15, v11, v2

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v20, v1

    goto :goto_3

    :cond_e
    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v1, v11, v2

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_f
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "bugly"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "[Upload] Bugly version is not valid: %s"

    move-object/from16 v20, v1

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v10, v1, v2

    invoke-static {v11, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    move-object/from16 v20, v1

    const-string v1, "[Upload] Bugly version from headers is: %s"

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v10, v11, v2

    invoke-static {v1, v11}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_4

    :cond_11
    :goto_2
    move-object/from16 v20, v1

    const-string v1, "[Upload] Headers is empty."

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v1, v10}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_13

    const-string v1, "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."

    const/4 v3, 0x2

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v8

    invoke-static {v1, v10}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    aput-object v0, v3, v8

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v6, :cond_12

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, "[key]: %s, [value]: %s"

    const/4 v6, 0x2

    new-array v10, v6, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v10, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v10, v8

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v6, v14

    move-object/from16 v1, v20

    const-wide/16 v3, 0x0

    goto/16 :goto_7

    :cond_13
    :try_start_4
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v1, "[Upload] Status from server is %d (pid=%d | tid=%d)."

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v11, v15

    invoke-static {v1, v11}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_17

    if-ne v10, v15, :cond_15

    :try_start_6
    iget-wide v0, v7, Lcom/tencent/bugly/proguard/v;->q:J

    iget-wide v3, v7, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, v3

    const-wide/16 v17, 0x0

    cmp-long v3, v0, v17

    if-lez v3, :cond_14

    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean v1, v7, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Z)J

    move-result-wide v0

    iget-wide v3, v7, Lcom/tencent/bugly/proguard/v;->q:J

    add-long/2addr v0, v3

    iget-wide v3, v7, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, v3

    iget-object v3, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean v4, v7, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {v3, v0, v1, v4}, Lcom/tencent/bugly/proguard/u;->a(JZ)V

    :cond_14
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/aq;)V

    const-string v0, "[Upload] Session ID is invalid, will try again immediately (pid=%d | tid=%d)."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v9, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget v10, v7, Lcom/tencent/bugly/proguard/v;->j:I

    iget v11, v7, Lcom/tencent/bugly/proguard/v;->d:I

    iget-object v12, v7, Lcom/tencent/bugly/proguard/v;->e:[B

    iget-object v13, v7, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    iget-object v14, v7, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    iget-object v15, v7, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    iget v0, v7, Lcom/tencent/bugly/proguard/v;->a:I

    iget v1, v7, Lcom/tencent/bugly/proguard/v;->b:I

    const/16 v18, 0x1

    iget-object v2, v7, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v19, v2

    invoke-virtual/range {v9 .. v19}, Lcom/tencent/bugly/proguard/u;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;IIZLjava/util/Map;)V

    return-void

    :cond_15
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status of server is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :catchall_0
    const-wide/16 v17, 0x0

    move v13, v10

    goto :goto_6

    :catchall_1
    const-wide/16 v17, 0x0

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[Upload] Failed to upload for format of status header is invalid: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    aput-object v1, v6, v8

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v6, v14

    move-wide/from16 v3, v17

    move-object/from16 v1, v20

    :goto_7
    const/4 v10, 0x1

    const/4 v11, 0x2

    goto/16 :goto_0

    :cond_16
    move v10, v13

    :cond_17
    const-string v0, "[Upload] Received %d bytes"

    new-array v1, v8, [Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-boolean v0, v7, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v0, :cond_1b

    array-length v0, v3

    if-nez v0, :cond_19

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v3, "[Upload] HTTP headers from server: key = %s, value = %s"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_8

    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "response data from server is empty"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_19
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/u;->b([B)[B

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "failed to decrypt response from server"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_1a
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->b([BI)[B

    move-result-object v3

    if-nez v3, :cond_1b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "failed unzip(Gzip) response from server"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_1b
    iget-boolean v0, v7, Lcom/tencent/bugly/proguard/v;->s:Z

    invoke-static {v3, v0}, Lcom/tencent/bugly/proguard/a;->a([BZ)Lcom/tencent/bugly/proguard/aq;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "failed to decode response package"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_1c
    iget-boolean v1, v7, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v1, :cond_1d

    iget-object v1, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v1, v10, v0}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/aq;)V

    :cond_1d
    const-string v1, "[Upload] Response cmd is: %d, length of sBuffer is: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/tencent/bugly/proguard/aq;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, v0, Lcom/tencent/bugly/proguard/aq;->c:[B

    if-nez v4, :cond_1e

    goto :goto_9

    :cond_1e
    iget-object v2, v0, Lcom/tencent/bugly/proguard/aq;->c:[B

    array-length v2, v2

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v8

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, v7, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "failed to process response package"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_1f
    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "successfully uploaded"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_20
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "failed after many attempts"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v4, v10

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_21
    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "illegal access error"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    return-void

    :cond_22
    :goto_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "request package is empty!"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23
    return-void
.end method
