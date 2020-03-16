.class Lcom/leo/salt/preference/MultipleChoicePreference$2;
.super Ljava/lang/Object;
.source "MultipleChoicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$compoundButton:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/MultipleChoicePreference;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$2;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    iput-object p2, p0, Lcom/leo/salt/preference/MultipleChoicePreference$2;->val$compoundButton:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$2;->val$compoundButton:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
