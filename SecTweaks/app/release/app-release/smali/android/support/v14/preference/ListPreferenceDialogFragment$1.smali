.class Landroid/support/v14/preference/ListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "ListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v14/preference/ListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v14/preference/ListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Landroid/support/v14/preference/ListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/ListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/ListPreferenceDialogFragment;

    iput p2, v0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
