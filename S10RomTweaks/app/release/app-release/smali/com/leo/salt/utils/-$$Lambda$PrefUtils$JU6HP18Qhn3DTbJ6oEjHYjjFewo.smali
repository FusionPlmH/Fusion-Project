.class public final synthetic Lcom/leo/salt/utils/-$$Lambda$PrefUtils$JU6HP18Qhn3DTbJ6oEjHYjjFewo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/leo/salt/utils/-$$Lambda$PrefUtils$JU6HP18Qhn3DTbJ6oEjHYjjFewo;->f$0:I

    iput-object p2, p0, Lcom/leo/salt/utils/-$$Lambda$PrefUtils$JU6HP18Qhn3DTbJ6oEjHYjjFewo;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/leo/salt/utils/-$$Lambda$PrefUtils$JU6HP18Qhn3DTbJ6oEjHYjjFewo;->f$0:I

    iget-object v1, p0, Lcom/leo/salt/utils/-$$Lambda$PrefUtils$JU6HP18Qhn3DTbJ6oEjHYjjFewo;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leo/salt/utils/PrefUtils;->lambda$uninstallAPPS$4(ILjava/lang/String;)V

    return-void
.end method