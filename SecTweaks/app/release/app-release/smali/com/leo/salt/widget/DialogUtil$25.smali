.class final Lcom/leo/salt/widget/DialogUtil$25;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/DialogUtil;->cautionMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dontShowAgain:Landroid/widget/CheckBox;

.field final synthetic val$kye:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/DialogUtil$25;->val$dontShowAgain:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/leo/salt/widget/DialogUtil$25;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/leo/salt/widget/DialogUtil$25;->val$kye:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "NOT checked"

    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$25;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "checked"

    :cond_0
    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$25;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/widget/DialogUtil$25;->val$kye:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "skipMessage"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
