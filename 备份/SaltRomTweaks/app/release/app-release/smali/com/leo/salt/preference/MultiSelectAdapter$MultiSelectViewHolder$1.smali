.class Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;
.super Ljava/lang/Object;
.source "MultiSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->bindViews(Lcom/leo/salt/preference/SelectionItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;->this$1:Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;->this$1:Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    iget-object p1, p1, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->checkBox:Landroid/support/v7/widget/SwitchCompat;

    iget-object v0, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;->this$1:Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    iget-object v0, v0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->checkBox:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;->this$1:Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    iget-object p1, p1, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->this$0:Lcom/leo/salt/preference/MultiSelectAdapter;

    invoke-static {p1}, Lcom/leo/salt/preference/MultiSelectAdapter;->access$000(Lcom/leo/salt/preference/MultiSelectAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;->this$1:Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    invoke-virtual {v0}, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SelectionItem;

    iget-object v0, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;->this$1:Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    iget-object v0, v0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->checkBox:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Lcom/leo/salt/preference/SelectionItem;->isSelected:Z

    iget-object p1, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;->this$1:Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    iget-object p1, p1, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->this$0:Lcom/leo/salt/preference/MultiSelectAdapter;

    invoke-static {p1}, Lcom/leo/salt/preference/MultiSelectAdapter;->access$100(Lcom/leo/salt/preference/MultiSelectAdapter;)Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;->this$1:Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    iget-object v0, v0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->checkBox:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;->onItemSelected(Z)V

    return-void
.end method
