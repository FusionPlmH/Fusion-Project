.class public final synthetic La/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:La/i0;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(La/i0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/y;->a:La/i0;

    iput-object p2, p0, La/y;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La/y;->a:La/i0;

    iget-object v1, p0, La/y;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, La/h0;->a(La/i0;Ljava/lang/Object;)V

    return-void
.end method
