.class Lcom/leo/salt/widget/WebDialog$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/WebDialog;->initWebDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/widget/WebDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$yes:Z


# direct methods
.method constructor <init>(Lcom/leo/salt/widget/WebDialog;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/WebDialog$1;->this$0:Lcom/leo/salt/widget/WebDialog;

    iput-object p2, p0, Lcom/leo/salt/widget/WebDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/leo/salt/widget/WebDialog$1;->val$key:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/leo/salt/widget/WebDialog$1;->val$yes:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "NOT checked"

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog$1;->this$0:Lcom/leo/salt/widget/WebDialog;

    invoke-static {p2}, Lcom/leo/salt/widget/WebDialog;->access$000(Lcom/leo/salt/widget/WebDialog;)Landroid/support/v7/widget/AppCompatCheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "checked"

    :cond_0
    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/widget/WebDialog$1;->val$key:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "skipMessage"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean p1, p0, Lcom/leo/salt/widget/WebDialog$1;->val$yes:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/widget/WebDialog$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/leo/salt/widget/DialogUtil;->followUS(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
