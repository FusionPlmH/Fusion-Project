.class Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$2;
.super Ljava/lang/Object;
.source "SaltSettingMultipleChoicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->bindViews(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

.field final synthetic val$item:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$2;->this$2:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$2;->val$item:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$2;->this$2:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    invoke-static {p1}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->access$400(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;)Landroid/widget/CompoundButton;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$2;->this$2:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    invoke-static {v0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->access$400(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$2;->val$item:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$2;->this$2:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    invoke-static {v0}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->access$400(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;->mIsSelected:Z

    return-void
.end method
