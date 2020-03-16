.class final Lcom/leo/salt/widget/DialogUtil$15;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/DialogUtil;->showWipePrefs(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/leo/salt/widget/DialogUtil$15;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    const/4 p2, 0x3

    if-nez p1, :cond_0

    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object v0, p0, Lcom/leo/salt/widget/DialogUtil$15;->val$c:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/leo/salt/utils/root/Helpers$Companion;->WipeMeun(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$15;->val$c:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->WipeMeun(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$15;->val$c:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->WipeMeun(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$15;->val$c:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->WipeMeun(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method
