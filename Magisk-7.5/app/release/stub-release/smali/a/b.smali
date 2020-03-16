.class public final synthetic La/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements La/i0;


# instance fields
.field private final synthetic a:La/n;


# direct methods
.method public synthetic constructor <init>(La/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b;->a:La/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La/b;->a:La/n;

    check-cast p1, Ljava/io/File;

    invoke-virtual {v0, p1}, La/n;->a(Ljava/io/File;)V

    return-void
.end method
