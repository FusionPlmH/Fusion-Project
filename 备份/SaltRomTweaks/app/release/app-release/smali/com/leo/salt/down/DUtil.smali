.class public Lcom/leo/salt/down/DUtil;
.super Ljava/lang/Object;
.source "DUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/leo/salt/down/download/DBuilder;
    .locals 1

    new-instance v0, Lcom/leo/salt/down/download/DBuilder;

    invoke-direct {v0, p0}, Lcom/leo/salt/down/download/DBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
