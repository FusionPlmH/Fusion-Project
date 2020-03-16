.class public final Lcom/leo/salt/tools/DialogDPI;
.super Ljava/lang/Object;
.source "DialogDPI.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0002\u001a\u00020\u0003H\u0003J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nH\u0002J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nH\u0002J\u0016\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0004\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/leo/salt/tools/DialogDPI;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "BACKUP_SCREEN_DPI",
        "",
        "BACKUP_SCREEN_RATIO",
        "BACKUP_SCREEN_WIDTH",
        "DEFAULT_DPI",
        "",
        "DEFAULT_RATIO",
        "",
        "DEFAULT_WIDTH",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "backupDisplay",
        "",
        "point",
        "Landroid/graphics/Point;",
        "dm",
        "Landroid/util/DisplayMetrics;",
        "getDpiScaleValue",
        "width",
        "getHeightScaleValue",
        "modifyDPI",
        "display",
        "Landroid/view/Display;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final BACKUP_SCREEN_DPI:Ljava/lang/String;

.field private final BACKUP_SCREEN_RATIO:Ljava/lang/String;

.field private final BACKUP_SCREEN_WIDTH:Ljava/lang/String;

.field private final DEFAULT_DPI:I

.field private final DEFAULT_RATIO:F

.field private final DEFAULT_WIDTH:I

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/DialogDPI;->context:Landroid/content/Context;

    const-string p1, "screen_dpi"

    iput-object p1, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_DPI:Ljava/lang/String;

    const-string p1, "screen_ratio"

    iput-object p1, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_RATIO:Ljava/lang/String;

    const-string p1, "screen_width"

    iput-object p1, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_WIDTH:Ljava/lang/String;

    const p1, 0x3fe38e39

    iput p1, p0, Lcom/leo/salt/tools/DialogDPI;->DEFAULT_RATIO:F

    const/16 p1, 0x140

    iput p1, p0, Lcom/leo/salt/tools/DialogDPI;->DEFAULT_DPI:I

    const/16 p1, 0x2d0

    iput p1, p0, Lcom/leo/salt/tools/DialogDPI;->DEFAULT_WIDTH:I

    return-void
.end method

.method public static final synthetic access$getDpiScaleValue(Lcom/leo/salt/tools/DialogDPI;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tools/DialogDPI;->getDpiScaleValue(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHeightScaleValue(Lcom/leo/salt/tools/DialogDPI;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tools/DialogDPI;->getHeightScaleValue(I)I

    move-result p0

    return p0
.end method

.method private final backupDisplay(Landroid/graphics/Point;Landroid/util/DisplayMetrics;Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/leo/salt/utils/PrefUtils;->GLOBAL_SPF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    iget-object v0, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_RATIO:Ljava/lang/String;

    invoke-interface {p3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_RATIO:Ljava/lang/String;

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_DPI:Ljava/lang/String;

    invoke-interface {p3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_WIDTH:Ljava/lang/String;

    invoke-interface {p3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_DPI:Ljava/lang/String;

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_WIDTH:Ljava/lang/String;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method private final getDpiScaleValue(I)I
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tools/DialogDPI;->context:Landroid/content/Context;

    sget-object v1, Lcom/leo/salt/utils/PrefUtils;->GLOBAL_SPF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_DPI:Ljava/lang/String;

    iget v2, p0, Lcom/leo/salt/tools/DialogDPI;->DEFAULT_DPI:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int v1, v1, p1

    iget-object p1, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_WIDTH:Ljava/lang/String;

    iget v2, p0, Lcom/leo/salt/tools/DialogDPI;->DEFAULT_WIDTH:I

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    div-int/2addr v1, p1

    return v1
.end method

.method private final getHeightScaleValue(I)I
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tools/DialogDPI;->context:Landroid/content/Context;

    sget-object v1, Lcom/leo/salt/utils/PrefUtils;->GLOBAL_SPF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    int-to-float p1, p1

    iget-object v1, p0, Lcom/leo/salt/tools/DialogDPI;->BACKUP_SCREEN_RATIO:Ljava/lang/String;

    iget v2, p0, Lcom/leo/salt/tools/DialogDPI;->DEFAULT_RATIO:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/DialogDPI;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final modifyDPI(Landroid/view/Display;Landroid/content/Context;)V
    .locals 13

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v1, :cond_4

    check-cast v1, Landroid/widget/EditText;

    const v3, 0x7f0900b9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v10, v3

    check-cast v10, Landroid/widget/EditText;

    const v3, 0x7f0900b7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v2, v3

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0900b8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v11, v3

    check-cast v11, Landroid/widget/CheckBox;

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-direct {p0, v9, v8, p2}, Lcom/leo/salt/tools/DialogDPI;->backupDisplay(Landroid/graphics/Point;Landroid/util/DisplayMetrics;Landroid/content/Context;)V

    iget p1, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget p1, v9, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v10, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget p1, v9, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt p1, v3, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v11, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget p1, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    const p1, 0x7f0900c7

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v12, Lcom/leo/salt/tools/DialogDPI$modifyDPI$1;

    move-object v3, v12

    move-object v4, p0

    move-object v5, v10

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v3 .. v9}, Lcom/leo/salt/tools/DialogDPI$modifyDPI$1;-><init>(Lcom/leo/salt/tools/DialogDPI;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/util/DisplayMetrics;Landroid/graphics/Point;)V

    check-cast v12, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900c5

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v3, Lcom/leo/salt/tools/DialogDPI$modifyDPI$2;

    invoke-direct {v3, p0, v10, v2, v1}, Lcom/leo/salt/tools/DialogDPI$modifyDPI$2;-><init>(Lcom/leo/salt/tools/DialogDPI;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900c6

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v3, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;

    invoke-direct {v3, p0, v10, v2, v1}, Lcom/leo/salt/tools/DialogDPI$modifyDPI$3;-><init>(Lcom/leo/salt/tools/DialogDPI;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "grid_dpi"

    invoke-static {p2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    sget-object v0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$dialogInstance$1;->INSTANCE:Lcom/leo/salt/tools/DialogDPI$modifyDPI$dialogInstance$1;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1040013

    new-instance v0, Lcom/leo/salt/tools/DialogDPI$modifyDPI$dialogInstance$2;

    invoke-direct {v0, v1, v10, v2, v11}, Lcom/leo/salt/tools/DialogDPI$modifyDPI$dialogInstance$2;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.CheckBox"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/DialogDPI;->context:Landroid/content/Context;

    return-void
.end method
