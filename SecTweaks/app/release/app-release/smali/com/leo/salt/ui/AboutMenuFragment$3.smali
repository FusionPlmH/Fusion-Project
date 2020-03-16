.class Lcom/leo/salt/ui/AboutMenuFragment$3;
.super Ljava/lang/Object;
.source "AboutMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ui/AboutMenuFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/ui/AboutMenuFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/ui/AboutMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/AboutMenuFragment$3;->this$0:Lcom/leo/salt/ui/AboutMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/ui/AboutMenuFragment$3;->this$0:Lcom/leo/salt/ui/AboutMenuFragment;

    invoke-static {p1}, Lcom/leo/salt/ui/AboutMenuFragment;->access$100(Lcom/leo/salt/ui/AboutMenuFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/ui/AboutMenuFragment;->startWWW(Landroid/content/Context;)V

    return-void
.end method
