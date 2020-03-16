.class public Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SaltSettingChooseSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$OnClick;
    }
.end annotation


# instance fields
.field public Multi:Landroid/widget/EditText;

.field public input:Landroid/widget/EditText;

.field private mKey:Ljava/lang/String;

.field public mLayout:Landroid/widget/LinearLayout;

.field private mReverseDependencyKey:Ljava/lang/String;

.field protected mSummary:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field protected mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mView2:Landroid/view/View;

.field public onClickStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "leo_salt_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    const p1, 0x7f0c0076

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leo_salt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->setLayoutResource(I)V

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->intPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "leo_salt_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    const p3, 0x7f0c0076

    invoke-virtual {p0, p3}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->setLayoutResource(I)V

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->intPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private EditTextDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p2, "android"

    const-string v1, "menu_ic_magnifier_window"

    invoke-static {p2, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "input_message"

    invoke-static {p2, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_hint"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$1;-><init>(Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    new-instance p2, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$2;

    invoke-direct {p2, p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$2;-><init>(Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private MultiEditTextDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p4, "android"

    const-string v1, "menu_ic_magnifier_window"

    invoke-static {p4, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    new-instance p4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "custom_Carrier"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "custom_Carrier2"

    invoke-static {v5, v6}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->input:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->Multi:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "input_message"

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->input:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->input:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->Multi:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->Multi:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x1e

    const/16 v5, 0x3c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p4, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->input:Landroid/widget/EditText;

    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p4, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p4, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->Multi:Landroid/widget/EditText;

    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_single_enabled"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v2, :cond_2

    iget-object p3, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->Multi:Landroid/widget/EditText;

    invoke-virtual {p3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->Multi:Landroid/widget/EditText;

    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p3, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p3, 0x104000a

    new-instance p4, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$3;

    invoke-direct {p4, p0, p1, p2}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$3;-><init>(Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    sget-object p2, Lcom/leo/salt/preference/-$$Lambda$SaltSettingChooseSwitchPreference$yGWrQ2Wrx9K_aa_shSG9fZH_EF8;->INSTANCE:Lcom/leo/salt/preference/-$$Lambda$SaltSettingChooseSwitchPreference$yGWrQ2Wrx9K_aa_shSG9fZH_EF8;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic lambda$MultiEditTextDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private updateView()V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mView2:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mView2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mView2:Landroid/view/View;

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v4, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected UpdateS()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public intPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget-object v0, Lcom/leo/salt/tweaks/R$styleable;->SaltSettingPickerPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->onClickStyle:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/leo/salt/tweaks/R$styleable;->LeoPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/SwitchPreference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lcom/leo/salt/preference/ReverseDependencyMonitor;

    invoke-interface {v0, p0}, Lcom/leo/salt/preference/ReverseDependencyMonitor;->registerReverseDependencyPreference(Landroid/preference/Preference;)V

    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0900d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mSwitch:Landroid/widget/Switch;

    const v0, 0x7f0900d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$OnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference$OnClick;-><init>(Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    const v0, 0x7f0900e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mView2:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mTextView:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mSummary:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040091

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->updateView()V

    return-void
.end method

.method protected onClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->onClickAction()V

    :cond_0
    return-void
.end method

.method protected onClickAction()V
    .locals 4

    iget v0, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->onClickStyle:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_single_string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_multi_string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->MultiEditTextDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/leo/salt/tweaks/FragUIActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/leo/salt/tweaks/FragUIActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->StatusbarCarrier:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    const-string v2, "batterykey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/leo/salt/tweaks/FragUIActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/leo/salt/tweaks/FragUIActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->Logo:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/leo/salt/tweaks/FragSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->NavBlacklist:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->EditTextDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.leo.salt.tweaks/LeoTweaks/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_BG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leo/salt/tweaks/resource/Resource;->Urlr:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->mKey:Ljava/lang/String;

    const-string v2, "WallpaperKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "WallpaperName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/leo/salt/tweaks/view/WallpaperPicker;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/leo/salt/preference/SaltSettingChooseSwitchPreference;->updateView()V

    return-void
.end method
