.class public Lcom/leo/salt/preference/SaltSettingCardButtonPreference;
.super Landroid/preference/Preference;
.source "SaltSettingCardButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/SaltSettingCardButtonPreference$OnCardViewClickListener;
    }
.end annotation


# instance fields
.field UpdateSetting:Ljava/lang/String;

.field mCardView:Landroid/support/v7/widget/CardView;

.field mContext:Landroid/content/Context;

.field private final mPackageToKill:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/leo/salt/tweaks/R$styleable;->SaltSettingButtonPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference;->UpdateSetting:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference;->mPackageToKill:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0c00a9

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingCardButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/preference/SaltSettingCardButtonPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference;->mPackageToKill:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09024c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference;->UpdateSetting:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p2, 0x7f09024d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/CardView;

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference;->mCardView:Landroid/support/v7/widget/CardView;

    iget-object p2, p0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference;->mCardView:Landroid/support/v7/widget/CardView;

    new-instance v0, Lcom/leo/salt/preference/SaltSettingCardButtonPreference$OnCardViewClickListener;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/SaltSettingCardButtonPreference$OnCardViewClickListener;-><init>(Lcom/leo/salt/preference/SaltSettingCardButtonPreference;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
