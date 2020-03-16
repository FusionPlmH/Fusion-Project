.class final Lcom/meiqia/meiqiasdk/util/MQUtils$1;
.super Ljava/lang/Object;
.source "MQUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/util/MQUtils;->showSafe(Landroid/content/Context;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/util/MQUtils$1;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQUtils$1;->val$text:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
