.class Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;
.super Ljava/lang/Object;
.source "SaltSettingMultipleChoicePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;->this$2:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;->val$item:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;->this$2:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    iget-object p1, p1, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->this$1:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;

    iget-object p1, p1, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter;->this$0:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;->val$item:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;

    iget-object v0, v0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;->mKey:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;->access$300(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;Ljava/lang/String;Z)V

    return-void
.end method
