.class Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$1;
.super Ljava/lang/Object;
.source "SaltSettingChooseSwitchPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->EditTextDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;

.field final synthetic val$STR:Ljava/lang/String;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$1;->this$0:Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$1;->val$STR:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$1;->this$0:Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;

    invoke-virtual {p2}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$1;->val$STR:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method