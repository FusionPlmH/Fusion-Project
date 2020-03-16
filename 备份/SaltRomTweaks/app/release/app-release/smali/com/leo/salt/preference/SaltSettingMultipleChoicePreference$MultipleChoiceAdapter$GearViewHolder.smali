.class Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SaltSettingMultipleChoicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GearViewHolder"
.end annotation


# instance fields
.field private mCompoundButton:Landroid/widget/CompoundButton;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->this$1:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09010c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f09010b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->mCompoundButton:Landroid/widget/CompoundButton;

    return-void
.end method

.method static synthetic access$400(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;)Landroid/widget/CompoundButton;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->mCompoundButton:Landroid/widget/CompoundButton;

    return-object p0
.end method


# virtual methods
.method bindViews(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->mCompoundButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->mCompoundButton:Landroid/widget/CompoundButton;

    iget-boolean v1, p1, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;->mIsSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->mCompoundButton:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;-><init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$2;-><init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
