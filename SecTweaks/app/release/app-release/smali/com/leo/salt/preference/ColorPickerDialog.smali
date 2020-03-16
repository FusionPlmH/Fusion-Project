.class public Lcom/leo/salt/preference/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mBlack:Lcom/leo/salt/preference/ColorPickerPanelView;

.field private mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

.field private mCyan:Lcom/leo/salt/preference/ColorPickerPanelView;

.field private mDefaultButton:Landroid/widget/Button;

.field mDefaultValue:I

.field private mGreen:Lcom/leo/salt/preference/ColorPickerPanelView;

.field private mHexDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mHexVal:Landroid/widget/EditText;

.field private mHexValueEnabled:Z

.field private mLayout:Landroid/view/View;

.field private mListener:Lcom/leo/salt/preference/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lcom/leo/salt/preference/ColorPickerPanelView;

.field private mOldColor:Lcom/leo/salt/preference/ColorPickerPanelView;

.field private mOrientation:I

.field private mRed:Lcom/leo/salt/preference/ColorPickerPanelView;

.field private mSetButton:Landroid/widget/Button;

.field private mWhite:Lcom/leo/salt/preference/ColorPickerPanelView;

.field private mYellow:Lcom/leo/salt/preference/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexValueEnabled:Z

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mDefaultValue:I

    invoke-direct {p0, p2, p3}, Lcom/leo/salt/preference/ColorPickerDialog;->init(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/preference/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/preference/ColorPickerDialog;)Lcom/leo/salt/preference/ColorPickerView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/preference/ColorPickerDialog;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private init(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/preference/ColorPickerDialog;->setUp(II)V

    return-void
.end method

.method private setUp(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mOrientation:I

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/ColorPickerDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/ColorPickerView;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/ColorPickerPanelView;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mOldColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/ColorPickerPanelView;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mNewColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f0901c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/ColorPickerPanelView;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mWhite:Lcom/leo/salt/preference/ColorPickerPanelView;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/ColorPickerPanelView;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mBlack:Lcom/leo/salt/preference/ColorPickerPanelView;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/ColorPickerPanelView;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mCyan:Lcom/leo/salt/preference/ColorPickerPanelView;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/ColorPickerPanelView;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mRed:Lcom/leo/salt/preference/ColorPickerPanelView;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/ColorPickerPanelView;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mGreen:Lcom/leo/salt/preference/ColorPickerPanelView;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/ColorPickerPanelView;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mYellow:Lcom/leo/salt/preference/ColorPickerPanelView;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mSetButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mDefaultButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-instance v1, Lcom/leo/salt/preference/ColorPickerDialog$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/preference/ColorPickerDialog$1;-><init>(Lcom/leo/salt/preference/ColorPickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mOldColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v0}, Lcom/leo/salt/preference/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    invoke-virtual {v1}, Lcom/leo/salt/preference/ColorPickerView;->getDrawingOffset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    invoke-virtual {v2}, Lcom/leo/salt/preference/ColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mOldColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mNewColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/ColorPickerView;->setOnColorChangedListener(Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mOldColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/ColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/leo/salt/preference/ColorPickerView;->setColor(IZ)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mWhite:Lcom/leo/salt/preference/ColorPickerPanelView;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/preference/ColorPickerDialog;->setColorAndClickAction(Lcom/leo/salt/preference/ColorPickerPanelView;I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mBlack:Lcom/leo/salt/preference/ColorPickerPanelView;

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/preference/ColorPickerDialog;->setColorAndClickAction(Lcom/leo/salt/preference/ColorPickerPanelView;I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mCyan:Lcom/leo/salt/preference/ColorPickerPanelView;

    const v1, -0xcc4a1b

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/preference/ColorPickerDialog;->setColorAndClickAction(Lcom/leo/salt/preference/ColorPickerPanelView;I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mRed:Lcom/leo/salt/preference/ColorPickerPanelView;

    const/high16 v1, -0x10000

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/preference/ColorPickerDialog;->setColorAndClickAction(Lcom/leo/salt/preference/ColorPickerPanelView;I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mGreen:Lcom/leo/salt/preference/ColorPickerPanelView;

    const v1, -0xff0100

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/preference/ColorPickerDialog;->setColorAndClickAction(Lcom/leo/salt/preference/ColorPickerPanelView;I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mYellow:Lcom/leo/salt/preference/ColorPickerPanelView;

    const/16 v1, -0x100

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/preference/ColorPickerDialog;->setColorAndClickAction(Lcom/leo/salt/preference/ColorPickerPanelView;I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/leo/salt/preference/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mSetButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/leo/salt/preference/ColorPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/ColorPickerDialog$2;-><init>(Lcom/leo/salt/preference/ColorPickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mDefaultButton:Landroid/widget/Button;

    new-instance v0, Lcom/leo/salt/preference/ColorPickerDialog$3;

    invoke-direct {v0, p0, p2}, Lcom/leo/salt/preference/ColorPickerDialog$3;-><init>(Lcom/leo/salt/preference/ColorPickerDialog;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateHexLengthFilter()V
    .locals 5

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void
.end method

.method private updateHexValue(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/leo/salt/preference/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/leo/salt/preference/ColorPickerPreference;->convertToRGB(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public getAlphaSliderVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    invoke-virtual {v0}, Lcom/leo/salt/preference/ColorPickerView;->getAlphaSliderVisible()Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    invoke-virtual {v0}, Lcom/leo/salt/preference/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getHexValueEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexValueEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090112

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mListener:Lcom/leo/salt/preference/ColorPickerDialog$OnColorChangedListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mNewColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v0}, Lcom/leo/salt/preference/ColorPickerPanelView;->getColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/leo/salt/preference/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mNewColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/ColorPickerPanelView;->setColor(I)V

    iget-boolean v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mOrientation:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mOldColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v0}, Lcom/leo/salt/preference/ColorPickerPanelView;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mNewColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/leo/salt/preference/ColorPickerPanelView;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mDefaultValue:I

    invoke-direct {p0, v0, v2}, Lcom/leo/salt/preference/ColorPickerDialog;->setUp(II)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mNewColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/ColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/ColorPickerView;->setColor(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mOldColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    const-string v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/ColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    const-string v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/leo/salt/preference/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "old_color"

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mOldColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/leo/salt/preference/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "new_color"

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mNewColor:Lcom/leo/salt/preference/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/leo/salt/preference/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mColorPicker:Lcom/leo/salt/preference/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/ColorPickerView;->setAlphaSliderVisible(Z)V

    iget-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->updateHexLengthFilter()V

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->getColor()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public setColorAndClickAction(Lcom/leo/salt/preference/ColorPickerPanelView;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/ColorPickerPanelView;->setColor(I)V

    new-instance v0, Lcom/leo/salt/preference/ColorPickerDialog$4;

    invoke-direct {v0, p0, p2}, Lcom/leo/salt/preference/ColorPickerDialog$4;-><init>(Lcom/leo/salt/preference/ColorPickerDialog;I)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->updateHexLengthFilter()V

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerDialog;->getColor()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerDialog;->updateHexValue(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnColorChangedListener(Lcom/leo/salt/preference/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerDialog;->mListener:Lcom/leo/salt/preference/ColorPickerDialog$OnColorChangedListener;

    return-void
.end method
