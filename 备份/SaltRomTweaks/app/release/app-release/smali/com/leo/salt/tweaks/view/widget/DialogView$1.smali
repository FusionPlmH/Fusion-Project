.class final Lcom/leo/salt/tweaks/view/widget/DialogView$1;
.super Ljava/lang/Object;
.source "DialogView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/widget/DialogView;->SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$1;->val$str:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->goToMainAppsMarketQQ(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
