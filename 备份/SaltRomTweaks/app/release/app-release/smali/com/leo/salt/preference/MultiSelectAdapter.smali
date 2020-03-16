.class public Lcom/leo/salt/preference/MultiSelectAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MultiSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;,
        Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/preference/SelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemSelectedListener:Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/preference/SelectionItem;",
            ">;",
            "Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/preference/MultiSelectAdapter;->mItemsList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/leo/salt/preference/MultiSelectAdapter;->mOnItemSelectedListener:Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/preference/MultiSelectAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/MultiSelectAdapter;->mItemsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/preference/MultiSelectAdapter;)Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/MultiSelectAdapter;->mOnItemSelectedListener:Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/MultiSelectAdapter;->mItemsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSelectedItems()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/preference/MultiSelectAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/preference/SelectionItem;

    iget-boolean v3, v2, Lcom/leo/salt/preference/SelectionItem;->isSelected:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, v2, Lcom/leo/salt/preference/SelectionItem;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/preference/MultiSelectAdapter;->onBindViewHolder(Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/MultiSelectAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/preference/SelectionItem;

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;->bindViews(Lcom/leo/salt/preference/SelectionItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/preference/MultiSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;
    .locals 3

    new-instance p2, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/leo/salt/preference/MultiSelectAdapter$MultiSelectViewHolder;-><init>(Lcom/leo/salt/preference/MultiSelectAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public selectAll(Z)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/MultiSelectAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/preference/SelectionItem;

    iput-boolean p1, v1, Lcom/leo/salt/preference/SelectionItem;->isSelected:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/MultiSelectAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedItems(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/leo/salt/preference/MultiSelectAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/leo/salt/preference/SelectionItem;

    iget-object v5, v4, Lcom/leo/salt/preference/SelectionItem;->value:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/leo/salt/preference/SelectionItem;->isSelected:Z

    iget-object v4, p0, Lcom/leo/salt/preference/MultiSelectAdapter;->mOnItemSelectedListener:Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;

    invoke-interface {v4, v5}, Lcom/leo/salt/preference/MultiSelectAdapter$OnItemSelectedListener;->onItemSelected(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/leo/salt/preference/MultiSelectAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
