.class Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$OnClick;
.super Ljava/lang/Object;
.source "SaltSettingChooseSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$OnClick;->this$0:Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$OnClick;->this$0:Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$OnClick;->this$0:Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->UpdateS()V

    return-void
.end method
