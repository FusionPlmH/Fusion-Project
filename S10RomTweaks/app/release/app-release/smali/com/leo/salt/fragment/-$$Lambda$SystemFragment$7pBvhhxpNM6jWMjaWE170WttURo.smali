.class public final synthetic Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$7pBvhhxpNM6jWMjaWE170WttURo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/fragment/SystemFragment;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/fragment/SystemFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$7pBvhhxpNM6jWMjaWE170WttURo;->f$0:Lcom/leo/salt/fragment/SystemFragment;

    iput-object p2, p0, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$7pBvhhxpNM6jWMjaWE170WttURo;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$7pBvhhxpNM6jWMjaWE170WttURo;->f$0:Lcom/leo/salt/fragment/SystemFragment;

    iget-object v1, p0, Lcom/leo/salt/fragment/-$$Lambda$SystemFragment$7pBvhhxpNM6jWMjaWE170WttURo;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/leo/salt/fragment/SystemFragment;->lambda$onActivityResult$4$SystemFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
