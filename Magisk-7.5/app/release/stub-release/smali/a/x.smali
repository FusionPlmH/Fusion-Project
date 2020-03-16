.class public final synthetic La/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements La/g0;


# instance fields
.field private final synthetic a:La/h0;

.field private final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(La/h0;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/x;->a:La/h0;

    iput-object p2, p0, La/x;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La/x;->a:La/h0;

    iget-object v1, p0, La/x;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, La/h0;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
