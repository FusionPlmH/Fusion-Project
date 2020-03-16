.class Lcom/leo/salt/fragment/LogThatShitFragment$1;
.super Ljava/lang/Object;
.source "LogThatShitFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/fragment/LogThatShitFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/fragment/LogThatShitFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/fragment/LogThatShitFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$1;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    sget-object p2, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object v0, p0, Lcom/leo/salt/fragment/LogThatShitFragment$1;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-virtual {v0}, Lcom/leo/salt/fragment/LogThatShitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->WipeLOG(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
