.class Lcom/leo/salt/preference/MyMultiSelectPreference$1;
.super Ljava/lang/Object;
.source "MyMultiSelectPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/MyMultiSelectPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/MyMultiSelectPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/MyMultiSelectPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/MyMultiSelectPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/MyMultiSelectPreference;

    invoke-static {p1}, Lcom/leo/salt/preference/MyMultiSelectPreference;->access$000(Lcom/leo/salt/preference/MyMultiSelectPreference;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/MyMultiSelectPreference;

    invoke-static {v0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->access$000(Lcom/leo/salt/preference/MyMultiSelectPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/MyMultiSelectPreference;

    invoke-static {p1}, Lcom/leo/salt/preference/MyMultiSelectPreference;->access$100(Lcom/leo/salt/preference/MyMultiSelectPreference;)Lcom/leo/salt/utils/MultiSelectAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/MyMultiSelectPreference;

    invoke-static {v0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->access$000(Lcom/leo/salt/preference/MyMultiSelectPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/utils/MultiSelectAdapter;->selectAll(Z)V

    iget-object p1, p0, Lcom/leo/salt/preference/MyMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/MyMultiSelectPreference;

    invoke-static {p1}, Lcom/leo/salt/preference/MyMultiSelectPreference;->access$000(Lcom/leo/salt/preference/MyMultiSelectPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/MyMultiSelectPreference$1;->this$0:Lcom/leo/salt/preference/MyMultiSelectPreference;

    invoke-static {v0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->access$300(Lcom/leo/salt/preference/MyMultiSelectPreference;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/leo/salt/preference/MyMultiSelectPreference;->access$202(Lcom/leo/salt/preference/MyMultiSelectPreference;I)I

    return-void
.end method
