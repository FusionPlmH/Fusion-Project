.class Lcom/leo/salt/fragment/IllegalValueFragment$1;
.super Ljava/lang/Object;
.source "IllegalValueFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/fragment/IllegalValueFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/fragment/IllegalValueFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/fragment/IllegalValueFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/fragment/IllegalValueFragment$1;->this$0:Lcom/leo/salt/fragment/IllegalValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Lcom/leo/salt/fragment/CustomDpiFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/CustomDpiFragment;-><init>()V

    iget-object p2, p0, Lcom/leo/salt/fragment/IllegalValueFragment$1;->this$0:Lcom/leo/salt/fragment/IllegalValueFragment;

    invoke-virtual {p2}, Lcom/leo/salt/fragment/IllegalValueFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const-string v0, "custom popup"

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
