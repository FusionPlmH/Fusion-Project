.class public Lcom/leo/salt/preference/SaltSettingCardWarningPreference;
.super Landroid/preference/Preference;
.source "SaltSettingCardWarningPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/SaltSettingCardWarningPreference$OnCardViewClickListener;
    }
.end annotation


# instance fields
.field public UpdateSetting:Ljava/lang/String;

.field public mCardView:Landroid/support/v7/widget/CardView;

.field public mContext:Landroid/content/Context;

.field str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/leo/salt/tweaks/R$styleable;->SaltSettingWarningPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->UpdateSetting:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->str:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0c00a9

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getLeoAction()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->str:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->mCardView:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->setSelectable(Z)V

    return-void

    :cond_0
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.launcher"

    const-string v3, "com.android.launcher3.infra.activity.SettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->str:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090262

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "warm_prompt"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09024c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->UpdateSetting:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p2, 0x7f09024d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/CardView;

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->mCardView:Landroid/support/v7/widget/CardView;

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->mCardView:Landroid/support/v7/widget/CardView;

    new-instance v1, Lcom/leo/salt/preference/SaltSettingCardWarningPreference$OnCardViewClickListener;

    invoke-direct {v1, p0}, Lcom/leo/salt/preference/SaltSettingCardWarningPreference$OnCardViewClickListener;-><init>(Lcom/leo/salt/preference/SaltSettingCardWarningPreference;)V

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->mCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/CardView;->setPreventCornerOverlap(Z)V

    return-object p1
.end method

.method public setWarningSetting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->UpdateSetting:Ljava/lang/String;

    return-void
.end method
