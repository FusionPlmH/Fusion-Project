.class final Lcom/leo/salt/widget/DialogUtil$10;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/DialogUtil;->SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$S2:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/DialogUtil$10;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/leo/salt/widget/DialogUtil$10;->val$S2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$10;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/widget/DialogUtil$10;->val$S2:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/leo/salt/widget/DialogUtil;->SamsunggoToMainAppsMarket(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
