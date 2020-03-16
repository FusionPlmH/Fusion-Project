.class Lcom/leo/salt/preference/IntentDialogPreference$1;
.super Ljava/lang/Object;
.source "IntentDialogPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/IntentDialogPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/IntentDialogPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/IntentDialogPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference$1;->this$0:Lcom/leo/salt/preference/IntentDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/leo/salt/preference/IntentDialogPreference$1;->this$0:Lcom/leo/salt/preference/IntentDialogPreference;

    invoke-static {p2}, Lcom/leo/salt/preference/IntentDialogPreference;->access$000(Lcom/leo/salt/preference/IntentDialogPreference;)Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/preference/IntentDialogPreference$1;->this$0:Lcom/leo/salt/preference/IntentDialogPreference;

    invoke-static {p2}, Lcom/leo/salt/preference/IntentDialogPreference;->access$000(Lcom/leo/salt/preference/IntentDialogPreference;)Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
