.class public final synthetic La/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:La/h0;

.field private final synthetic b:La/g0;

.field private final synthetic c:La/i0;


# direct methods
.method public synthetic constructor <init>(La/h0;La/g0;La/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/w;->a:La/h0;

    iput-object p2, p0, La/w;->b:La/g0;

    iput-object p3, p0, La/w;->c:La/i0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, La/w;->a:La/h0;

    iget-object v1, p0, La/w;->b:La/g0;

    iget-object v2, p0, La/w;->c:La/i0;

    invoke-virtual {v0, v1, v2}, La/h0;->a(La/g0;La/i0;)V

    return-void
.end method
