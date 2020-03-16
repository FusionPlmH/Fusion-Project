.class public final synthetic Lcom/os/salt/globalactions/-$$Lambda$Utils$8rZA9CffgrOqnKq_PD7QvsKilVI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/os/salt/globalactions/-$$Lambda$Utils$8rZA9CffgrOqnKq_PD7QvsKilVI;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/os/salt/globalactions/-$$Lambda$Utils$8rZA9CffgrOqnKq_PD7QvsKilVI;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    iget-object v0, p0, Lcom/os/salt/globalactions/-$$Lambda$Utils$8rZA9CffgrOqnKq_PD7QvsKilVI;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/os/salt/globalactions/-$$Lambda$Utils$8rZA9CffgrOqnKq_PD7QvsKilVI;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/os/salt/globalactions/Utils;->lambda$ConfirmationDialog$1(Landroid/content/Context;ILcom/leo/SweetAlert/SweetAlertDialog;)V

    return-void
.end method
