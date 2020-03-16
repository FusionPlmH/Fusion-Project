.class public final synthetic La/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements La/b0;


# instance fields
.field private final synthetic a:La/n;


# direct methods
.method public synthetic constructor <init>(La/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/j;->a:La/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, La/j;->a:La/n;

    invoke-virtual {v0, p1, p2}, La/n;->a(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    return-void
.end method
