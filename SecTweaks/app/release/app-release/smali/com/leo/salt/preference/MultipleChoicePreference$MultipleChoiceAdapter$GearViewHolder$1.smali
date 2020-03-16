.class Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;
.super Ljava/lang/Object;
.source "MultipleChoicePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->bindViews(Lcom/leo/salt/preference/MultipleChoicePreference$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

.field final synthetic val$item:Lcom/leo/salt/preference/MultipleChoicePreference$Item;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;Lcom/leo/salt/preference/MultipleChoicePreference$Item;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;->this$2:Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    iput-object p2, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;->val$item:Lcom/leo/salt/preference/MultipleChoicePreference$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;->this$2:Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;

    iget-object p1, p1, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder;->this$1:Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;

    iget-object p1, p1, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    iget-object v0, p0, Lcom/leo/salt/preference/MultipleChoicePreference$MultipleChoiceAdapter$GearViewHolder$1;->val$item:Lcom/leo/salt/preference/MultipleChoicePreference$Item;

    iget-object v0, v0, Lcom/leo/salt/preference/MultipleChoicePreference$Item;->mKey:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/leo/salt/preference/MultipleChoicePreference;->access$300(Lcom/leo/salt/preference/MultipleChoicePreference;Ljava/lang/String;Z)V

    return-void
.end method
