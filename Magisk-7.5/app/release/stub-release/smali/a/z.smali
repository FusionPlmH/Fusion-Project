.class public final synthetic La/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements La/g0;


# instance fields
.field private final synthetic a:La/h0;


# direct methods
.method public synthetic constructor <init>(La/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/z;->a:La/h0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/z;->a:La/h0;

    invoke-virtual {v0}, La/h0;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
