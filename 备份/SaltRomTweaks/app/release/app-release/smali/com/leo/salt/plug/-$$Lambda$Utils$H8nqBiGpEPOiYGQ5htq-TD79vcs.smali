.class public final synthetic Lcom/leo/salt/plug/-$$Lambda$Utils$H8nqBiGpEPOiYGQ5htq-TD79vcs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/plug/-$$Lambda$Utils$H8nqBiGpEPOiYGQ5htq-TD79vcs;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/plug/-$$Lambda$Utils$H8nqBiGpEPOiYGQ5htq-TD79vcs;->f$0:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/leo/salt/plug/Utils;->lambda$showSystemUIrestartDialog$2(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
