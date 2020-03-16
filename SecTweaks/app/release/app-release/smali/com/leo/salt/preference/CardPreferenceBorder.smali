.class public Lcom/leo/salt/preference/CardPreferenceBorder;
.super Landroid/preference/Preference;
.source "CardPreferenceBorder.java"


# static fields
.field public static final CardPreferenceBorder:[I

.field public static final CardPreferenceBorder_bottomShadow:I = 0x1

.field public static final CardPreferenceBorder_topShadow:I


# instance fields
.field private aB:Z

.field private eN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/leo/salt/preference/CardPreferenceBorder;->CardPreferenceBorder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04029a
        0x7f040052
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/leo/salt/preference/CardPreferenceBorder;->CardPreferenceBorder:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/leo/salt/preference/CardPreferenceBorder;->eN:Z

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/CardPreferenceBorder;->aB:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0c006e

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/CardPreferenceBorder;->setLayoutResource(I)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/CardPreferenceBorder;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/CardPreferenceBorder;->setSelectable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/leo/salt/preference/CardPreferenceBorder;->eN:Z

    iput-boolean p3, p0, Lcom/leo/salt/preference/CardPreferenceBorder;->aB:Z

    const p1, 0x7f0c006e

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/CardPreferenceBorder;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/CardPreferenceBorder;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/CardPreferenceBorder;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean v0, p0, Lcom/leo/salt/preference/CardPreferenceBorder;->eN:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090047

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean v0, p0, Lcom/leo/salt/preference/CardPreferenceBorder;->aB:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method
