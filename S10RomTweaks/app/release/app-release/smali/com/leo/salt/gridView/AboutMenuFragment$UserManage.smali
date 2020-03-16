.class public Lcom/leo/salt/gridView/AboutMenuFragment$UserManage;
.super Ljava/lang/Object;
.source "AboutMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/AboutMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserManage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/AboutMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/AboutMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$UserManage;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/leo/salt/gridView/AboutMenuFragment$UserManage;->this$0:Lcom/leo/salt/gridView/AboutMenuFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/leo/salt/gridView/AboutMenuFragment;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/leo/salt/user/UserManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/gridView/AboutMenuFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
