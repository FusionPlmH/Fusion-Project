.class public final Lcom/meiqia/meiqiasdk/third/photoview/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static logger:Lcom/meiqia/meiqiasdk/third/photoview/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/meiqia/meiqiasdk/third/photoview/log/LoggerDefault;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/third/photoview/log/LoggerDefault;-><init>()V

    sput-object v0, Lcom/meiqia/meiqiasdk/third/photoview/log/LogManager;->logger:Lcom/meiqia/meiqiasdk/third/photoview/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Lcom/meiqia/meiqiasdk/third/photoview/log/Logger;
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/third/photoview/log/LogManager;->logger:Lcom/meiqia/meiqiasdk/third/photoview/log/Logger;

    return-object v0
.end method

.method public static setLogger(Lcom/meiqia/meiqiasdk/third/photoview/log/Logger;)V
    .locals 0

    sput-object p0, Lcom/meiqia/meiqiasdk/third/photoview/log/LogManager;->logger:Lcom/meiqia/meiqiasdk/third/photoview/log/Logger;

    return-void
.end method
