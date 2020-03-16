.class public final Lcom/tencent/bugly/proguard/an;
.super Lcom/tencent/bugly/proguard/k;
.source "BUGLY"


# static fields
.field private static A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/am;",
            ">;"
        }
    .end annotation
.end field

.field private static B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static w:Lcom/tencent/bugly/proguard/al;

.field private static x:Lcom/tencent/bugly/proguard/ak;

.field private static y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;"
        }
    .end annotation
.end field

.field private static z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Lcom/tencent/bugly/proguard/al;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/tencent/bugly/proguard/ak;

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/am;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/String;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->v:Ljava/util/Map;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->v:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/al;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->w:Lcom/tencent/bugly/proguard/al;

    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ak;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->x:Lcom/tencent/bugly/proguard/ak;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->y:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ak;-><init>()V

    sget-object v2, Lcom/tencent/bugly/proguard/an;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->z:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ak;-><init>()V

    sget-object v2, Lcom/tencent/bugly/proguard/an;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->A:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/am;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/am;-><init>()V

    sget-object v2, Lcom/tencent/bugly/proguard/an;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->B:Ljava/util/Map;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->B:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->C:Ljava/util/Map;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->C:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/k;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->a:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/an;->b:J

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->g:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->h:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->j:Lcom/tencent/bugly/proguard/al;

    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/bugly/proguard/an;->k:I

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->n:Lcom/tencent/bugly/proguard/ak;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->o:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->p:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->q:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->r:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->s:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->t:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/an;->u:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/proguard/an;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/an;->b:J

    invoke-virtual {p1, v2, v3, v0, v0}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/an;->b:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->g:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->v:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->h:Ljava/util/Map;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->i:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->w:Lcom/tencent/bugly/proguard/al;

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/al;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->j:Lcom/tencent/bugly/proguard/al;

    iget v0, p0, Lcom/tencent/bugly/proguard/an;->k:I

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/an;->k:I

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->l:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->m:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->x:Lcom/tencent/bugly/proguard/ak;

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/ak;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->n:Lcom/tencent/bugly/proguard/ak;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->y:Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->o:Ljava/util/ArrayList;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->z:Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->p:Ljava/util/ArrayList;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->A:Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->q:Ljava/util/ArrayList;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->B:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->r:Ljava/util/Map;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->C:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->s:Ljava/util/Map;

    const/16 v0, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->t:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/an;->u:Z

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/an;->u:Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/an;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/j;->a(JI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->h:Ljava/util/Map;

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->j:Lcom/tencent/bugly/proguard/al;

    if-eqz v0, :cond_6

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Lcom/tencent/bugly/proguard/k;I)V

    :cond_6
    iget v0, p0, Lcom/tencent/bugly/proguard/an;->k:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->m:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->n:Lcom/tencent/bugly/proguard/ak;

    if-eqz v0, :cond_9

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Lcom/tencent/bugly/proguard/k;I)V

    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->r:Ljava/util/Map;

    if-eqz v0, :cond_d

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->s:Ljava/util/Map;

    if-eqz v0, :cond_e

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    :cond_e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->t:Ljava/lang/String;

    if-eqz v0, :cond_f

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/an;->u:Z

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(ZI)V

    return-void
.end method
