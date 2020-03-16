.class Lcom/leo/salt/preference/MultipleChoicePreference$1;
.super Ljava/lang/Object;
.source "MultipleChoicePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/MultipleChoicePreference;->setUpSelectAll(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

.field final synthetic val$selectAllText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/MultipleChoicePreference;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$1;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    iput-object p2, p0, Lcom/leo/salt/preference/MultipleChoicePreference$1;->val$selectAllText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$1;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    invoke-static {p1}, Lcom/leo/salt/preference/MultipleChoicePreference;->access$000(Lcom/leo/salt/preference/MultipleChoicePreference;)Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$1;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    invoke-static {p1}, Lcom/leo/salt/preference/MultipleChoicePreference;->access$000(Lcom/leo/salt/preference/MultipleChoicePreference;)Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->selectAll(Z)V

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$1;->val$selectAllText:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/leo/salt/preference/MultipleChoicePreference$1;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    invoke-virtual {p2}, Lcom/leo/salt/preference/MultipleChoicePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f100146

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/leo/salt/preference/MultipleChoicePreference$1;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    invoke-virtual {p2}, Lcom/leo/salt/preference/MultipleChoicePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f10037a

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
