.class public final synthetic Lcom/leo/salt/fragment/-$$Lambda$PulldownDateFragment$S1BWDWyA8jjF7xU7Xw9uTaEwVpo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/fragment/PulldownDateFragment;

.field private final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/fragment/PulldownDateFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/fragment/-$$Lambda$PulldownDateFragment$S1BWDWyA8jjF7xU7Xw9uTaEwVpo;->f$0:Lcom/leo/salt/fragment/PulldownDateFragment;

    iput-object p2, p0, Lcom/leo/salt/fragment/-$$Lambda$PulldownDateFragment$S1BWDWyA8jjF7xU7Xw9uTaEwVpo;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/-$$Lambda$PulldownDateFragment$S1BWDWyA8jjF7xU7Xw9uTaEwVpo;->f$0:Lcom/leo/salt/fragment/PulldownDateFragment;

    iget-object v1, p0, Lcom/leo/salt/fragment/-$$Lambda$PulldownDateFragment$S1BWDWyA8jjF7xU7Xw9uTaEwVpo;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/leo/salt/fragment/PulldownDateFragment;->lambda$onPreferenceChange$0$PulldownDateFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
