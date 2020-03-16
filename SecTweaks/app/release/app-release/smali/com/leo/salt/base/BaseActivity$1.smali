.class Lcom/leo/salt/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/base/BaseActivity;->warning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/base/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/base/BaseActivity$1;->this$0:Lcom/leo/salt/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    iget-object p2, p0, Lcom/leo/salt/base/BaseActivity$1;->this$0:Lcom/leo/salt/base/BaseActivity;

    invoke-virtual {p2}, Lcom/leo/salt/base/BaseActivity;->finish()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
