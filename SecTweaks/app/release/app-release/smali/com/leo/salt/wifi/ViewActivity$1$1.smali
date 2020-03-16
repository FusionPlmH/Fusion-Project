.class Lcom/leo/salt/wifi/ViewActivity$1$1;
.super Ljava/lang/Object;
.source "ViewActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/wifi/ViewActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/wifi/ViewActivity$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/leo/salt/wifi/ViewActivity$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iput p2, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object v0, v0, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/leo/salt/wifi/ViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object v2, v2, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6e90\u4fe1\u606f\u6d4f\u89c8"

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object v3, v3, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    iget-object v3, v3, Lcom/leo/salt/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "pos"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object v3, v3, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    iget-object v3, v3, Lcom/leo/salt/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "view"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v2, "\u5173\u95ed"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "\u590d\u5236"

    new-instance v2, Lcom/leo/salt/wifi/ViewActivity$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/wifi/ViewActivity$1$1$1;-><init>(Lcom/leo/salt/wifi/ViewActivity$1$1;Landroid/content/ClipboardManager;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->val$position:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v3, "ssid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    const-string v0, "SSID\u5df2\u590d\u5236"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->val$position:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v3, "psk"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    const-string v0, "\u5bc6\u7801\u5df2\u590d\u5236"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->val$position:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ssid"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\u5bc6\u7801: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "psk"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1$1;->this$1:Lcom/leo/salt/wifi/ViewActivity$1;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    const-string v0, "SSID\u548c\u5bc6\u7801\u90fd\u5df2\u590d\u5236"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f0900f1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
