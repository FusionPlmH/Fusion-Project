.class public final synthetic Lcom/leo/salt/fragment/-$$Lambda$StatusBarClockFragment$7ITyL2_NhUT8NigeCw1bgGZk8uI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/fragment/StatusBarClockFragment;

.field private final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/fragment/StatusBarClockFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/fragment/-$$Lambda$StatusBarClockFragment$7ITyL2_NhUT8NigeCw1bgGZk8uI;->f$0:Lcom/leo/salt/fragment/StatusBarClockFragment;

    iput-object p2, p0, Lcom/leo/salt/fragment/-$$Lambda$StatusBarClockFragment$7ITyL2_NhUT8NigeCw1bgGZk8uI;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/-$$Lambda$StatusBarClockFragment$7ITyL2_NhUT8NigeCw1bgGZk8uI;->f$0:Lcom/leo/salt/fragment/StatusBarClockFragment;

    iget-object v1, p0, Lcom/leo/salt/fragment/-$$Lambda$StatusBarClockFragment$7ITyL2_NhUT8NigeCw1bgGZk8uI;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/leo/salt/fragment/StatusBarClockFragment;->lambda$onPreferenceChange$0$StatusBarClockFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
