.class public interface abstract annotation Lcom/facebook/drawee/backends/pipeline/info/ImageOrigin;
.super Ljava/lang/Object;
.source "ImageOrigin.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DISK:I = 0x1

.field public static final MEMORY_BITMAP:I = 0x3

.field public static final MEMORY_ENCODED:I = 0x2

.field public static final NETWORK:I = 0x0

.field public static final UNKNOWN:I = -0x1
