.class public final synthetic Lcom/leo/salt/utils/-$$Lambda$PrefUtils$j1iZNPgPMkDoGxHuPY1xE7HZtZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/utils/-$$Lambda$PrefUtils$j1iZNPgPMkDoGxHuPY1xE7HZtZI;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/salt/utils/-$$Lambda$PrefUtils$j1iZNPgPMkDoGxHuPY1xE7HZtZI;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/utils/-$$Lambda$PrefUtils$j1iZNPgPMkDoGxHuPY1xE7HZtZI;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/utils/-$$Lambda$PrefUtils$j1iZNPgPMkDoGxHuPY1xE7HZtZI;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/leo/salt/utils/PrefUtils;->lambda$showKillPackageDialog$0(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
