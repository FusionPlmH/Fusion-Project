.class public final synthetic Lcom/leo/salt/fragment/-$$Lambda$BlacklistFragment$vZbyiQZF3UGYxC6TqudE90Q8gzg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/fragment/BlacklistFragment;

.field private final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/fragment/BlacklistFragment;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/fragment/-$$Lambda$BlacklistFragment$vZbyiQZF3UGYxC6TqudE90Q8gzg;->f$0:Lcom/leo/salt/fragment/BlacklistFragment;

    iput-object p2, p0, Lcom/leo/salt/fragment/-$$Lambda$BlacklistFragment$vZbyiQZF3UGYxC6TqudE90Q8gzg;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/leo/salt/fragment/-$$Lambda$BlacklistFragment$vZbyiQZF3UGYxC6TqudE90Q8gzg;->f$0:Lcom/leo/salt/fragment/BlacklistFragment;

    iget-object v1, p0, Lcom/leo/salt/fragment/-$$Lambda$BlacklistFragment$vZbyiQZF3UGYxC6TqudE90Q8gzg;->f$1:Landroid/app/Dialog;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/leo/salt/fragment/BlacklistFragment;->lambda$showDialog$0$BlacklistFragment(Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
