.class public La/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:[Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Enumeration<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public varargs constructor <init>([Ljava/util/Enumeration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Enumeration<",
            "TE;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/k0;->b:I

    iput-object p1, p0, La/k0;->a:[Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    :goto_0
    iget v0, p0, La/k0;->b:I

    iget-object v1, p0, La/k0;->a:[Ljava/util/Enumeration;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget v0, p0, La/k0;->b:I

    add-int/2addr v0, v3

    iput v0, p0, La/k0;->b:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, La/k0;->a()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, La/k0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/k0;->a:[Ljava/util/Enumeration;

    iget v1, p0, La/k0;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
