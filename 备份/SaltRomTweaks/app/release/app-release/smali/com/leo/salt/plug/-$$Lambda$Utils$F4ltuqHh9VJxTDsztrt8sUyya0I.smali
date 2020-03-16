.class public final synthetic Lcom/leo/salt/plug/-$$Lambda$Utils$F4ltuqHh9VJxTDsztrt8sUyya0I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/plug/-$$Lambda$Utils$F4ltuqHh9VJxTDsztrt8sUyya0I;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/leo/salt/plug/-$$Lambda$Utils$F4ltuqHh9VJxTDsztrt8sUyya0I;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/plug/-$$Lambda$Utils$F4ltuqHh9VJxTDsztrt8sUyya0I;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/leo/salt/plug/-$$Lambda$Utils$F4ltuqHh9VJxTDsztrt8sUyya0I;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/leo/salt/plug/Utils;->lambda$ConfirmationDialog$1(Landroid/content/Context;ILandroid/content/DialogInterface;I)V

    return-void
.end method
