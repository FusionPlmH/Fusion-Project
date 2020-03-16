.class public Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
.super Ljava/lang/Object;
.source "FrescoSystrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;,
        Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;,
        Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;
    }
.end annotation


# static fields
.field public static final NO_OP_ARGS_BUILDER:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

.field private static volatile sInstance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;-><init>(Lcom/facebook/imagepipeline/systrace/FrescoSystrace$1;)V

    sput-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->NO_OP_ARGS_BUILDER:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

    sput-object v1, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->sInstance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->getInstance()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static beginSectionWithArgs(Ljava/lang/String;)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;
    .locals 1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->getInstance()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;->beginSectionWithArgs(Ljava/lang/String;)Lcom/facebook/imagepipeline/systrace/FrescoSystrace$ArgsBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static endSection()V
    .locals 1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->getInstance()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;->endSection()V

    return-void
.end method

.method private static getInstance()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;
    .locals 2

    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->sInstance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    if-nez v0, :cond_1

    const-class v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->sInstance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    if-nez v1, :cond_0

    new-instance v1, Lcom/facebook/imagepipeline/systrace/DefaultFrescoSystrace;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/systrace/DefaultFrescoSystrace;-><init>()V

    sput-object v1, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->sInstance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->sInstance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    return-object v0
.end method

.method public static isTracing()Z
    .locals 1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->getInstance()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;->isTracing()Z

    move-result v0

    return v0
.end method

.method public static provide(Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;)V
    .locals 0

    sput-object p0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->sInstance:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    return-void
.end method
