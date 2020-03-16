.class Lcom/leo/salt/fragment/CustomDpiFragment$2;
.super Ljava/lang/Object;
.source "CustomDpiFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/fragment/CustomDpiFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/fragment/CustomDpiFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/fragment/CustomDpiFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/fragment/CustomDpiFragment$2;->this$0:Lcom/leo/salt/fragment/CustomDpiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
