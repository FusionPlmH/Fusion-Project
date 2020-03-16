.class public Lcom/os/salt/globalactions/LeoGlobalBlur;
.super Ljava/lang/Object;
.source "LeoGlobalBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;
    }
.end annotation


# static fields
.field private static final SCALE:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "LeoBlur"

.field private static volatile singleton:Lcom/os/salt/globalactions/LeoGlobalBlur;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mPolicy:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

.field private mRadius:I

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mRadius:I

    const/high16 v0, 0x3e000000    # 0.125f

    iput v0, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mScale:F

    sget-object v0, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;->RS_BLUR:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    iput-object v0, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mPolicy:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 39

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ge v0, v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v14, v2, v13

    new-array v15, v14, [I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "pix"

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    move-object v6, v15

    move v8, v2

    move-object/from16 v16, v11

    move v11, v2

    move-object/from16 v17, v12

    move v12, v13

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v13, -0x1

    add-int v7, v0, v0

    add-int/2addr v7, v4

    new-array v8, v14, [I

    new-array v9, v14, [I

    new-array v10, v14, [I

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [I

    add-int/lit8 v12, v7, 0x1

    shr-int/2addr v12, v4

    mul-int v12, v12, v12

    mul-int/lit16 v14, v12, 0x100

    new-array v4, v14, [I

    :goto_0
    if-ge v3, v14, :cond_1

    div-int v18, v3, v12

    aput v18, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    filled-new-array {v7, v3}, [I

    move-result-object v3

    const-class v12, I

    invoke-static {v12, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    add-int/lit8 v12, v0, 0x1

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    const/16 v20, 0x2

    if-ge v14, v13, :cond_6

    move-object/from16 v21, v1

    neg-int v1, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_2
    const v31, 0xff00

    const/high16 v32, 0xff0000

    if-gt v1, v0, :cond_3

    move/from16 v34, v6

    move/from16 v33, v13

    const/4 v13, 0x0

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v6, v18, v6

    aget v6, v15, v6

    add-int v35, v1, v0

    aget-object v35, v3, v35

    and-int v32, v6, v32

    shr-int/lit8 v32, v32, 0x10

    aput v32, v35, v13

    and-int v31, v6, v31

    shr-int/lit8 v31, v31, 0x8

    const/16 v32, 0x1

    aput v31, v35, v32

    and-int/lit16 v6, v6, 0xff

    aput v6, v35, v20

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v6, v12, v6

    aget v31, v35, v13

    mul-int v31, v31, v6

    add-int v22, v22, v31

    aget v31, v35, v32

    mul-int v31, v31, v6

    add-int v23, v23, v31

    aget v31, v35, v20

    mul-int v31, v31, v6

    add-int v24, v24, v31

    if-lez v1, :cond_2

    aget v6, v35, v13

    add-int v28, v28, v6

    aget v6, v35, v32

    add-int v29, v29, v6

    aget v6, v35, v20

    add-int v30, v30, v6

    goto :goto_3

    :cond_2
    aget v6, v35, v13

    add-int v25, v25, v6

    aget v6, v35, v32

    add-int v26, v26, v6

    aget v6, v35, v20

    add-int v27, v27, v6

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move/from16 v13, v33

    move/from16 v6, v34

    goto :goto_2

    :cond_3
    move/from16 v34, v6

    move/from16 v33, v13

    move v6, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_5

    aget v13, v4, v22

    aput v13, v8, v18

    aget v13, v4, v23

    aput v13, v9, v18

    aget v13, v4, v24

    aput v13, v10, v18

    sub-int v22, v22, v25

    sub-int v23, v23, v26

    sub-int v24, v24, v27

    sub-int v13, v6, v0

    add-int/2addr v13, v7

    rem-int/2addr v13, v7

    aget-object v13, v3, v13

    const/16 v35, 0x0

    aget v36, v13, v35

    sub-int v25, v25, v36

    const/16 v35, 0x1

    aget v36, v13, v35

    sub-int v26, v26, v36

    aget v36, v13, v20

    sub-int v27, v27, v36

    if-nez v14, :cond_4

    add-int v36, v1, v0

    move-object/from16 v37, v4

    add-int/lit8 v4, v36, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v11, v1

    goto :goto_5

    :cond_4
    move-object/from16 v37, v4

    :goto_5
    aget v4, v11, v1

    add-int v4, v19, v4

    aget v4, v15, v4

    and-int v35, v4, v32

    shr-int/lit8 v35, v35, 0x10

    const/16 v36, 0x0

    aput v35, v13, v36

    and-int v35, v4, v31

    shr-int/lit8 v35, v35, 0x8

    const/16 v38, 0x1

    aput v35, v13, v38

    and-int/lit16 v4, v4, 0xff

    aput v4, v13, v20

    aget v4, v13, v36

    add-int v28, v28, v4

    aget v4, v13, v38

    add-int v29, v29, v4

    aget v4, v13, v20

    add-int v30, v30, v4

    add-int v22, v22, v28

    add-int v23, v23, v29

    add-int v24, v24, v30

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v7

    rem-int v4, v6, v7

    aget-object v4, v3, v4

    const/4 v13, 0x0

    aget v35, v4, v13

    add-int v25, v25, v35

    const/16 v35, 0x1

    aget v36, v4, v35

    add-int v26, v26, v36

    aget v36, v4, v20

    add-int v27, v27, v36

    aget v36, v4, v13

    sub-int v28, v28, v36

    aget v13, v4, v35

    sub-int v29, v29, v13

    aget v4, v4, v20

    sub-int v30, v30, v4

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v37

    goto/16 :goto_4

    :cond_5
    move-object/from16 v37, v4

    add-int v19, v19, v2

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v21

    move/from16 v13, v33

    move/from16 v6, v34

    goto/16 :goto_1

    :cond_6
    move-object/from16 v21, v1

    move-object/from16 v37, v4

    move/from16 v34, v6

    move/from16 v33, v13

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_c

    neg-int v4, v0

    mul-int v5, v4, v2

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_7
    if-gt v4, v0, :cond_9

    move-object/from16 v26, v11

    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v27

    add-int v27, v27, v1

    add-int v28, v4, v0

    aget-object v28, v3, v28

    aget v29, v8, v27

    aput v29, v28, v11

    aget v11, v9, v27

    const/16 v29, 0x1

    aput v11, v28, v29

    aget v11, v10, v27

    aput v11, v28, v20

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v11, v12, v11

    aget v29, v8, v27

    mul-int v29, v29, v11

    add-int v6, v6, v29

    aget v29, v9, v27

    mul-int v29, v29, v11

    add-int v13, v13, v29

    aget v27, v10, v27

    mul-int v27, v27, v11

    add-int v14, v14, v27

    if-lez v4, :cond_7

    const/4 v11, 0x0

    aget v27, v28, v11

    add-int v23, v23, v27

    const/16 v27, 0x1

    aget v29, v28, v27

    add-int v24, v24, v29

    aget v28, v28, v20

    add-int v25, v25, v28

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    const/16 v27, 0x1

    aget v29, v28, v11

    add-int v18, v18, v29

    aget v11, v28, v27

    add-int v19, v19, v11

    aget v11, v28, v20

    add-int v22, v22, v11

    :goto_8
    move/from16 v11, v34

    if-ge v4, v11, :cond_8

    add-int/2addr v5, v2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move/from16 v34, v11

    move-object/from16 v11, v26

    goto :goto_7

    :cond_9
    move-object/from16 v26, v11

    move/from16 v11, v34

    move/from16 v27, v24

    move/from16 v28, v25

    move/from16 v4, v33

    const/4 v5, 0x0

    move/from16 v24, v0

    move/from16 v25, v23

    move/from16 v23, v22

    move/from16 v22, v19

    move/from16 v19, v18

    move/from16 v18, v14

    move v14, v13

    move v13, v6

    move v6, v1

    :goto_9
    if-ge v5, v4, :cond_b

    const/high16 v29, -0x1000000

    aget v30, v15, v6

    and-int v29, v30, v29

    aget v30, v37, v13

    shl-int/lit8 v30, v30, 0x10

    or-int v29, v29, v30

    aget v30, v37, v14

    shl-int/lit8 v30, v30, 0x8

    or-int v29, v29, v30

    aget v30, v37, v18

    or-int v29, v29, v30

    aput v29, v15, v6

    sub-int v13, v13, v19

    sub-int v14, v14, v22

    sub-int v18, v18, v23

    sub-int v29, v24, v0

    add-int v29, v29, v7

    rem-int v29, v29, v7

    aget-object v29, v3, v29

    const/16 v30, 0x0

    aget v31, v29, v30

    sub-int v19, v19, v31

    const/16 v30, 0x1

    aget v31, v29, v30

    sub-int v22, v22, v31

    aget v30, v29, v20

    sub-int v23, v23, v30

    if-nez v1, :cond_a

    add-int v0, v5, v12

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v2

    aput v0, v26, v5

    :cond_a
    aget v0, v26, v5

    add-int/2addr v0, v1

    aget v30, v8, v0

    const/16 v31, 0x0

    aput v30, v29, v31

    aget v30, v9, v0

    const/16 v32, 0x1

    aput v30, v29, v32

    aget v0, v10, v0

    aput v0, v29, v20

    aget v0, v29, v31

    add-int v25, v25, v0

    aget v0, v29, v32

    add-int v27, v27, v0

    aget v0, v29, v20

    add-int v28, v28, v0

    add-int v13, v13, v25

    add-int v14, v14, v27

    add-int v18, v18, v28

    add-int/lit8 v24, v24, 0x1

    rem-int v24, v24, v7

    aget-object v0, v3, v24

    const/16 v29, 0x0

    aget v30, v0, v29

    add-int v19, v19, v30

    const/16 v30, 0x1

    aget v31, v0, v30

    add-int v22, v22, v31

    aget v31, v0, v20

    add-int v23, v23, v31

    aget v31, v0, v29

    sub-int v25, v25, v31

    aget v31, v0, v30

    sub-int v27, v27, v31

    aget v0, v0, v20

    sub-int v28, v28, v0

    add-int/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p2

    goto/16 :goto_9

    :cond_b
    const/16 v29, 0x0

    const/16 v30, 0x1

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p2

    move/from16 v33, v4

    move/from16 v34, v11

    move-object/from16 v11, v26

    goto/16 :goto_6

    :cond_c
    move/from16 v4, v33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, v21

    move-object v6, v15

    move v8, v2

    move v11, v2

    move v12, v4

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v21
.end method

.method private static rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origin size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LeoBlur"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p3

    const/4 v3, 0x0

    invoke-static {p1, v0, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scale size:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p3

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float p2, p2

    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p1
.end method

.method public static with(Landroid/content/Context;)Lcom/os/salt/globalactions/LeoGlobalBlur;
    .locals 2

    sget-object v0, Lcom/os/salt/globalactions/LeoGlobalBlur;->singleton:Lcom/os/salt/globalactions/LeoGlobalBlur;

    if-nez v0, :cond_1

    const-class v0, Lcom/os/salt/globalactions/LeoGlobalBlur;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/os/salt/globalactions/LeoGlobalBlur;->singleton:Lcom/os/salt/globalactions/LeoGlobalBlur;

    if-nez v1, :cond_0

    new-instance v1, Lcom/os/salt/globalactions/LeoGlobalBlur;

    invoke-direct {v1, p0}, Lcom/os/salt/globalactions/LeoGlobalBlur;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/os/salt/globalactions/LeoGlobalBlur;->singleton:Lcom/os/salt/globalactions/LeoGlobalBlur;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->singleton:Lcom/os/salt/globalactions/LeoGlobalBlur;

    return-object p0
.end method


# virtual methods
.method public bitmap(Landroid/graphics/Bitmap;)Lcom/os/salt/globalactions/LeoGlobalBlur;
    .locals 0

    iput-object p1, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public blur()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mRadius:I

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    const-string v2, "blur fast algorithm"

    const-string v3, "LeoBlur"

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mPolicy:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    sget-object v1, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;->FAST_BLUR:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    if-ne v0, v1, :cond_0

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mScale:F

    iget v2, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mRadius:I

    invoke-static {v0, v1, v2}, Lcom/os/salt/globalactions/LeoGlobalBlur;->fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "blur render script  algorithm"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mRadius:I

    iget v3, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mScale:F

    invoke-static {v0, v1, v2, v3}, Lcom/os/salt/globalactions/LeoGlobalBlur;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mScale:F

    iget v2, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mRadius:I

    invoke-static {v0, v1, v2}, Lcom/os/salt/globalactions/LeoGlobalBlur;->fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "radius must > 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public policy(Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;)Lcom/os/salt/globalactions/LeoGlobalBlur;
    .locals 0

    iput-object p1, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mPolicy:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    return-object p0
.end method

.method public radius(I)Lcom/os/salt/globalactions/LeoGlobalBlur;
    .locals 0

    iput p1, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mRadius:I

    return-object p0
.end method

.method public scale(I)Lcom/os/salt/globalactions/LeoGlobalBlur;
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/os/salt/globalactions/LeoGlobalBlur;->mScale:F

    return-object p0
.end method
