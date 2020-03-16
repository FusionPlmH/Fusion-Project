.class public Lcom/leo/salt/preference/SaltSettingCardPreference;
.super Landroid/preference/Preference;
.source "SaltSettingCardPreference.java"


# instance fields
.field private aB:Z

.field private eN:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/preference/SaltSettingCardPreference;->eN:Z

    iput-boolean p1, p0, Lcom/leo/salt/preference/SaltSettingCardPreference;->aB:Z

    const p1, 0x7f0c0079

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingCardPreference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingCardPreference;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingCardPreference;->setSelectable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/leo/salt/preference/SaltSettingCardPreference;->eN:Z

    iput-boolean p3, p0, Lcom/leo/salt/preference/SaltSettingCardPreference;->aB:Z

    const p1, 0x7f0c0079

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingCardPreference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingCardPreference;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingCardPreference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090052

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method
