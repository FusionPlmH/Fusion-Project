.class Lcom/leo/salt/preference/AppMultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "AppMultiSelectListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/AppMultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/AppMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/AppMultiSelectListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/AppMultiSelectListPreference$1;->this$0:Lcom/leo/salt/preference/AppMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;

    iget-object p2, p1, Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-object p1, p1, Lcom/leo/salt/preference/AppMultiSelectListPreference$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/AppMultiSelectListPreference$1;->this$0:Lcom/leo/salt/preference/AppMultiSelectListPreference;

    invoke-static {p1}, Lcom/leo/salt/preference/AppMultiSelectListPreference;->access$000(Lcom/leo/salt/preference/AppMultiSelectListPreference;)Z

    move-result p2

    iget-object p4, p0, Lcom/leo/salt/preference/AppMultiSelectListPreference$1;->this$0:Lcom/leo/salt/preference/AppMultiSelectListPreference;

    invoke-static {p4}, Lcom/leo/salt/preference/AppMultiSelectListPreference;->access$200(Lcom/leo/salt/preference/AppMultiSelectListPreference;)Ljava/util/Set;

    move-result-object p4

    iget-object p5, p0, Lcom/leo/salt/preference/AppMultiSelectListPreference$1;->this$0:Lcom/leo/salt/preference/AppMultiSelectListPreference;

    invoke-static {p5}, Lcom/leo/salt/preference/AppMultiSelectListPreference;->access$100(Lcom/leo/salt/preference/AppMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object p5

    aget-object p3, p5, p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/leo/salt/preference/AppMultiSelectListPreference;->access$002(Lcom/leo/salt/preference/AppMultiSelectListPreference;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/AppMultiSelectListPreference$1;->this$0:Lcom/leo/salt/preference/AppMultiSelectListPreference;

    invoke-static {p1}, Lcom/leo/salt/preference/AppMultiSelectListPreference;->access$000(Lcom/leo/salt/preference/AppMultiSelectListPreference;)Z

    move-result p2

    iget-object p4, p0, Lcom/leo/salt/preference/AppMultiSelectListPreference$1;->this$0:Lcom/leo/salt/preference/AppMultiSelectListPreference;

    invoke-static {p4}, Lcom/leo/salt/preference/AppMultiSelectListPreference;->access$200(Lcom/leo/salt/preference/AppMultiSelectListPreference;)Ljava/util/Set;

    move-result-object p4

    iget-object p5, p0, Lcom/leo/salt/preference/AppMultiSelectListPreference$1;->this$0:Lcom/leo/salt/preference/AppMultiSelectListPreference;

    invoke-static {p5}, Lcom/leo/salt/preference/AppMultiSelectListPreference;->access$100(Lcom/leo/salt/preference/AppMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object p5

    aget-object p3, p5, p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/leo/salt/preference/AppMultiSelectListPreference;->access$002(Lcom/leo/salt/preference/AppMultiSelectListPreference;Z)Z

    :goto_0
    return-void
.end method
