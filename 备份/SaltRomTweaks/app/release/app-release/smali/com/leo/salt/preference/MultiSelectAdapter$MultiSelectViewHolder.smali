.class Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MultiSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/MultiSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiSelectViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/support/v7/widget/SwitchCompat;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/leo/salt/preference/MultiSelectAdapter;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/MultiSelectAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->this$0:Lcom/leo/salt/preference/MultiSelectAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090108

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    iput-object p1, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->checkBox:Landroid/support/v7/widget/SwitchCompat;

    const p1, 0x7f090109

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method bindViews(Lcom/leo/salt/preference/SelectionItem;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/leo/salt/preference/SelectionItem;->entry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->checkBox:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean p1, p1, Lcom/leo/salt/preference/SelectionItem;->isSelected:Z

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder$1;-><init>(Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
