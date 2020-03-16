.class Lcom/leo/salt/wifi/ViewActivity$1$1$1;
.super Ljava/lang/Object;
.source "ViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/wifi/ViewActivity$1$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leo/salt/wifi/ViewActivity$1$1;

.field final synthetic val$cm:Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>(Lcom/leo/salt/wifi/ViewActivity$1$1;Landroid/content/ClipboardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1$1$1;->this$2:Lcom/leo/salt/wifi/ViewActivity$1$1;

    iput-object p2, p0, Lcom/leo/salt/wifi/ViewActivity$1$1$1;->val$cm:Landroid/content/ClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1$1$1;->val$cm:Landroid/content/ClipboardManager;

    iget-object p2, p0, Lcom/leo/salt/wifi/ViewActivity$1$1$1;->this$2:Lcom/leo/salt/wifi/ViewActivity$1$1;

    iget-object p2, p2, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object p2, p2, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    iget-object p2, p2, Lcom/leo/salt/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/leo/salt/wifi/ViewActivity$1$1$1;->this$2:Lcom/leo/salt/wifi/ViewActivity$1$1;

    iget v0, v0, Lcom/leo/salt/wifi/ViewActivity$1$1;->val$position:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v0, "view"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
