.class final Lcom/leo/salt/widget/DialogUtil$21;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/DialogUtil;->reminder(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/DialogUtil$21;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-object p2, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object v0, p0, Lcom/leo/salt/widget/DialogUtil$21;->val$c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/leo/salt/utils/root/Helpers$Companion;->LeoRestartMeun(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
