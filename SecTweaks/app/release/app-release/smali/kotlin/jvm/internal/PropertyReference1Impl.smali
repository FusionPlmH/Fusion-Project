.class public Lkotlin/jvm/internal/PropertyReference1Impl;
.super Lkotlin/jvm/internal/PropertyReference1;
.source "PropertyReference1Impl.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final owner:Lkotlin/reflect/KDeclarationContainer;

.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/jvm/internal/PropertyReference1;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->owner:Lkotlin/reflect/KDeclarationContainer;

    iput-object p2, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->name:Ljava/lang/String;

    iput-object p3, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->signature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference1Impl;->getGetter()Lkotlin/reflect/KProperty1$Getter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lkotlin/reflect/KProperty1$Getter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->owner:Lkotlin/reflect/KDeclarationContainer;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->signature:Ljava/lang/String;

    return-object v0
.end method