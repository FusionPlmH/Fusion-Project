.class Lcom/leo/salt/preference/SaltSettingCardWarningPreference$OnCardViewClickListener;
.super Ljava/lang/Object;
.source "SaltSettingCardWarningPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/SaltSettingCardWarningPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnCardViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/SaltSettingCardWarningPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference$OnCardViewClickListener;->this$0:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference$OnCardViewClickListener;->this$0:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->getLeoAction()V

    return-void
.end method
