.class Lcom/leo/salt/preference/SaltSettingMultiSelectPreference$1;
.super Ljava/lang/Object;
.source "SaltSettingMultiSelectPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;

    invoke-static {p1}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->access$000(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;

    invoke-static {v0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->access$000(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;

    invoke-static {p1}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->access$100(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)Lcom/leo/salt/preference/MultiSelectAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;

    invoke-static {v0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->access$000(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/MultiSelectAdapter;->selectAll(Z)V

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;

    invoke-static {p1}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->access$000(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;

    invoke-static {v0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->access$300(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;->access$202(Lcom/leo/salt/preference/SaltSettingMultiSelectPreference;I)I

    return-void
.end method
