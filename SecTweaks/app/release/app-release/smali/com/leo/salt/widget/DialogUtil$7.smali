.class final Lcom/leo/salt/widget/DialogUtil$7;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/DialogUtil$7;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSettingdonate()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$7;->val$context:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/leo/salt/donate/DonateActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$7;->val$context:Landroid/app/Activity;

    invoke-static {p2}, Lcom/leo/salt/widget/DialogUtil;->EnglishDonate(Landroid/content/Context;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
