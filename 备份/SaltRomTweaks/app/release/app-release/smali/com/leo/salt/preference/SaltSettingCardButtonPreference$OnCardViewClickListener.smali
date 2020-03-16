.class Lcom/leo/salt/preference/SaltSettingCardButtonPreference$OnCardViewClickListener;
.super Ljava/lang/Object;
.source "SaltSettingCardButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/SaltSettingCardButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnCardViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/SaltSettingCardButtonPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/SaltSettingCardButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference$OnCardViewClickListener;->this$0:Lcom/leo/salt/preference/SaltSettingCardButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference$OnCardViewClickListener;->this$0:Lcom/leo/salt/preference/SaltSettingCardButtonPreference;

    invoke-static {p1}, Lcom/leo/salt/preference/SaltSettingCardButtonPreference;->access$000(Lcom/leo/salt/preference/SaltSettingCardButtonPreference;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference$OnCardViewClickListener;->this$0:Lcom/leo/salt/preference/SaltSettingCardButtonPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingCardButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->killPackage(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
