.class public Lcom/leo/salt/theme/ColorChooseDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ColorChooseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/theme/ColorChooseDialog$IClickColorSelectCallback;
    }
.end annotation


# instance fields
.field mCallback:Lcom/leo/salt/theme/ColorChooseDialog$IClickColorSelectCallback;

.field mColors:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private createSelector(I)Landroid/graphics/drawable/Drawable;
    .locals 6

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/leo/salt/theme/ColorChooseDialog;->shiftColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, -0x10100a7

    aput v5, v3, v4

    invoke-virtual {p1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v2, [I

    const v2, 0x10100a7

    aput v2, v0, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private getColorItemView(Landroid/content/Context;IZ)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/leo/salt/theme/ColorChooseDialog;->mColors:[I

    aget v0, v0, p2

    const/16 v1, 0x18

    invoke-static {p1, v1}, Lcom/leo/salt/theme/Utils;->convertDensityPix(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x41

    invoke-static {p1, v2}, Lcom/leo/salt/theme/Utils;->convertDensityPix(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lcom/leo/salt/theme/Utils;->convertDensityPix(Landroid/content/Context;I)I

    move-result v3

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p1, v5}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p3, v0}, Lcom/leo/salt/theme/ColorChooseDialog;->setBackgroundSelector(Landroid/view/View;I)V

    invoke-virtual {p3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-object p3
.end method

.method private initColors()[I
    .locals 5

    invoke-virtual {p0}, Lcom/leo/salt/theme/ColorChooseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setBackgroundSelector(Landroid/view/View;I)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/leo/salt/theme/ColorChooseDialog;->createSelector(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, -0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    aput-object v4, v2, v3

    new-array v1, v1, [I

    invoke-direct {p0, p2}, Lcom/leo/salt/theme/ColorChooseDialog;->shiftColor(I)I

    move-result v4

    aput v4, v1, v6

    aput p2, v1, v3

    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1, v1}, Lcom/leo/salt/theme/ColorChooseDialog;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/leo/salt/theme/ColorChooseDialog;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private shiftColor(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    aget v1, v0, p1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    aput v1, v0, p1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/theme/ColorChooseDialog;->mCallback:Lcom/leo/salt/theme/ColorChooseDialog$IClickColorSelectCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/leo/salt/theme/ColorChooseDialog;->mColors:[I

    aget v1, v1, p1

    invoke-interface {v0, p1, v1}, Lcom/leo/salt/theme/ColorChooseDialog$IClickColorSelectCallback;->onClickSelectCallback(II)V

    invoke-virtual {p0}, Lcom/leo/salt/theme/ColorChooseDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/leo/salt/theme/ColorChooseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "preselect"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/theme/ColorChooseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0043

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/leo/salt/theme/ColorChooseDialog;->initColors()[I

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/theme/ColorChooseDialog;->mColors:[I

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/leo/salt/theme/ColorChooseDialog;->mColors:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/theme/ColorChooseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-ne v3, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-direct {p0, v4, v3, v5}, Lcom/leo/salt/theme/ColorChooseDialog;->getColorItemView(Landroid/content/Context;IZ)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/theme/ColorChooseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100115

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-object p1
.end method

.method public setColorSelectCallback(Lcom/leo/salt/theme/ColorChooseDialog$IClickColorSelectCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/theme/ColorChooseDialog;->mCallback:Lcom/leo/salt/theme/ColorChooseDialog$IClickColorSelectCallback;

    return-void
.end method

.method public show(Landroid/support/v7/app/AppCompatActivity;I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "preselect"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/theme/ColorChooseDialog;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "COLOR_SELECTOR"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/theme/ColorChooseDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
