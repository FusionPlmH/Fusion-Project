.class public Lcom/facebook/common/internal/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# static fields
.field public static final BOOLEAN_FALSE:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOOLEAN_TRUE:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/common/internal/Suppliers$2;

    invoke-direct {v0}, Lcom/facebook/common/internal/Suppliers$2;-><init>()V

    sput-object v0, Lcom/facebook/common/internal/Suppliers;->BOOLEAN_TRUE:Lcom/facebook/common/internal/Supplier;

    new-instance v0, Lcom/facebook/common/internal/Suppliers$3;

    invoke-direct {v0}, Lcom/facebook/common/internal/Suppliers$3;-><init>()V

    sput-object v0, Lcom/facebook/common/internal/Suppliers;->BOOLEAN_FALSE:Lcom/facebook/common/internal/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/common/internal/Supplier<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/common/internal/Suppliers$1;

    invoke-direct {v0, p0}, Lcom/facebook/common/internal/Suppliers$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
