.class Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MultipleChoicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/MultipleChoicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipleChoiceAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/preference/MultipleChoicePreference$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/leo/salt/preference/MultipleChoicePreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/MultipleChoicePreference;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/preference/MultipleChoicePreference$Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->mItemArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->mItemArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->onBindViewHolder(Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/preference/MultipleChoicePreference$Item;

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->bindViews(Lcom/leo/salt/preference/MultipleChoicePreference$Item;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0059

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    invoke-static {v0}, Lcom/leo/salt/preference/MultipleChoicePreference;->access$200(Lcom/leo/salt/preference/MultipleChoicePreference;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    :goto_0
    const p2, 0x7f090068

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    new-instance v0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;-><init>(Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method selectAll(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/preference/MultipleChoicePreference$Item;

    iput-boolean p1, v1, Lcom/leo/salt/preference/MultipleChoicePreference$Item;->mIsSelected:Z

    iget-object v1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    iget-object v2, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/preference/MultipleChoicePreference$Item;

    iget-object v2, v2, Lcom/leo/salt/preference/MultipleChoicePreference$Item;->mKey:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/leo/salt/preference/MultipleChoicePreference;->access$300(Lcom/leo/salt/preference/MultipleChoicePreference;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->notifyDataSetChanged()V

    return-void
.end method
