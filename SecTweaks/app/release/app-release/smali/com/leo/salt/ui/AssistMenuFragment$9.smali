.class Lcom/leo/salt/ui/AssistMenuFragment$9;
.super Ljava/lang/Object;
.source "AssistMenuFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ui/AssistMenuFragment;->Spit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/ui/AssistMenuFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/ui/AssistMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/AssistMenuFragment$9;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p2, Lcom/leo/salt/fragment/SetDpiFragment;

    invoke-direct {p2}, Lcom/leo/salt/fragment/SetDpiFragment;-><init>()V

    iget-object v0, p0, Lcom/leo/salt/ui/AssistMenuFragment$9;->this$0:Lcom/leo/salt/ui/AssistMenuFragment;

    invoke-virtual {v0}, Lcom/leo/salt/ui/AssistMenuFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "lcd"

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
