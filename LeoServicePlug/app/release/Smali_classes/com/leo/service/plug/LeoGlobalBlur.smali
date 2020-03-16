.class public Lcom/leo/service/plug/LeoGlobalBlur;
.super Ljava/lang/Object;
.source "LeoGlobalBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;
    }
.end annotation


# static fields
.field private static final SCALE:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "LeoBlur"

.field private static volatile singleton:Lcom/leo/service/plug/LeoGlobalBlur;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mPolicy:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

.field private mRadius:I

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mRadius:I

    const/high16 v0, 0x3e000000    # 0.125f

    .line 24
    iput v0, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mScale:F

    .line 26
    sget-object v0, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;->RS_BLUR:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    iput-object v0, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mPolicy:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 41

    move/from16 v1, p2

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    .line 190
    invoke-static {v4, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-ge v1, v4, :cond_2c

    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_2c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v14, v2, v13

    .line 201
    new-array v15, v14, [I

    const-string v5, "pix"

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v15

    move v8, v2

    move v11, v2

    move v12, v13

    .line 203
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v13, -0x1

    add-int v7, v1, v1

    add-int/2addr v7, v4

    .line 210
    new-array v8, v14, [I

    .line 211
    new-array v9, v14, [I

    .line 212
    new-array v10, v14, [I

    .line 214
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [I

    add-int/lit8 v12, v7, 0x1

    shr-int/2addr v12, v4

    mul-int v12, v12, v12

    mul-int/lit16 v14, v12, 0x100

    .line 218
    new-array v4, v14, [I

    :goto_81
    if-ge v3, v14, :cond_8a

    .line 220
    div-int v18, v3, v12

    aput v18, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    :cond_8a
    const/4 v3, 0x3

    .line 225
    filled-new-array {v7, v3}, [I

    move-result-object v3

    const-class v12, I

    invoke-static {v12, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    add-int/lit8 v12, v1, 0x1

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_9e
    const/16 v20, 0x2

    if-ge v14, v13, :cond_1c4

    move-object/from16 v21, v0

    neg-int v0, v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_b7
    const v31, 0xff00

    const/high16 v32, 0xff0000

    if-gt v0, v1, :cond_11f

    move/from16 v34, v6

    move/from16 v33, v13

    const/4 v13, 0x0

    .line 237
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v6, v18, v6

    aget v6, v15, v6

    add-int v17, v0, v1

    .line 238
    aget-object v35, v3, v17

    and-int v17, v6, v32

    shr-int/lit8 v17, v17, 0x10

    .line 239
    aput v17, v35, v13

    and-int v17, v6, v31

    shr-int/lit8 v17, v17, 0x8

    const/16 v16, 0x1

    .line 240
    aput v17, v35, v16

    and-int/lit16 v6, v6, 0xff

    .line 241
    aput v6, v35, v20

    .line 242
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v6, v12, v6

    .line 243
    aget v17, v35, v13

    mul-int v17, v17, v6

    add-int v22, v22, v17

    .line 244
    aget v17, v35, v16

    mul-int v17, v17, v6

    add-int v23, v23, v17

    .line 245
    aget v17, v35, v20

    mul-int v17, v17, v6

    add-int v24, v24, v17

    if-lez v0, :cond_10c

    .line 247
    aget v6, v35, v13

    add-int v25, v25, v6

    .line 248
    aget v6, v35, v16

    add-int v26, v26, v6

    .line 249
    aget v6, v35, v20

    add-int v27, v27, v6

    goto :goto_118

    .line 251
    :cond_10c
    aget v6, v35, v13

    add-int v28, v28, v6

    .line 252
    aget v6, v35, v16

    add-int v29, v29, v6

    .line 253
    aget v6, v35, v20

    add-int v30, v30, v6

    :goto_118
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v33

    move/from16 v6, v34

    goto :goto_b7

    :cond_11f
    move/from16 v34, v6

    move/from16 v33, v13

    move v6, v1

    const/4 v0, 0x0

    :goto_125
    if-ge v0, v2, :cond_1b6

    .line 260
    aget v13, v4, v22

    aput v13, v8, v18

    .line 261
    aget v13, v4, v23

    aput v13, v9, v18

    .line 262
    aget v13, v4, v24

    aput v13, v10, v18

    sub-int v22, v22, v28

    sub-int v23, v23, v29

    sub-int v24, v24, v30

    sub-int v13, v6, v1

    add-int/2addr v13, v7

    .line 269
    rem-int/2addr v13, v7

    aget-object v13, v3, v13

    const/16 v17, 0x0

    .line 271
    aget v35, v13, v17

    sub-int v28, v28, v35

    const/16 v16, 0x1

    .line 272
    aget v35, v13, v16

    sub-int v29, v29, v35

    .line 273
    aget v35, v13, v20

    sub-int v30, v30, v35

    if-nez v14, :cond_15e

    add-int v35, v0, v1

    move-object/from16 v36, v4

    add-int/lit8 v4, v35, 0x1

    .line 276
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v11, v0

    goto :goto_160

    :cond_15e
    move-object/from16 v36, v4

    .line 278
    :goto_160
    aget v4, v11, v0

    add-int v4, v19, v4

    aget v4, v15, v4

    and-int v35, v4, v32

    shr-int/lit8 v35, v35, 0x10

    const/16 v17, 0x0

    .line 280
    aput v35, v13, v17

    and-int v35, v4, v31

    shr-int/lit8 v35, v35, 0x8

    const/16 v16, 0x1

    .line 281
    aput v35, v13, v16

    and-int/lit16 v4, v4, 0xff

    .line 282
    aput v4, v13, v20

    .line 284
    aget v4, v13, v17

    add-int v25, v25, v4

    .line 285
    aget v4, v13, v16

    add-int v26, v26, v4

    .line 286
    aget v4, v13, v20

    add-int v27, v27, v4

    add-int v22, v22, v25

    add-int v23, v23, v26

    add-int v24, v24, v27

    add-int/lit8 v6, v6, 0x1

    .line 292
    rem-int/2addr v6, v7

    .line 293
    rem-int v4, v6, v7

    aget-object v4, v3, v4

    const/4 v13, 0x0

    .line 295
    aget v17, v4, v13

    add-int v28, v28, v17

    const/16 v16, 0x1

    .line 296
    aget v17, v4, v16

    add-int v29, v29, v17

    .line 297
    aget v17, v4, v20

    add-int v30, v30, v17

    .line 299
    aget v35, v4, v13

    sub-int v25, v25, v35

    .line 300
    aget v13, v4, v16

    sub-int v26, v26, v13

    .line 301
    aget v4, v4, v20

    sub-int v27, v27, v4

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v36

    goto/16 :goto_125

    :cond_1b6
    move-object/from16 v36, v4

    add-int v19, v19, v2

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v21

    move/from16 v13, v33

    move/from16 v6, v34

    goto/16 :goto_9e

    :cond_1c4
    move-object/from16 v21, v0

    move-object/from16 v36, v4

    move/from16 v34, v6

    move/from16 v33, v13

    const/4 v0, 0x0

    :goto_1cd
    if-ge v0, v2, :cond_2fa

    neg-int v4, v1

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

    :goto_1e1
    if-gt v4, v1, :cond_244

    move-object/from16 v37, v11

    const/4 v11, 0x0

    .line 311
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v26, v17, v0

    add-int v17, v4, v1

    .line 313
    aget-object v27, v3, v17

    .line 315
    aget v17, v8, v26

    aput v17, v27, v11

    .line 316
    aget v11, v9, v26

    const/16 v16, 0x1

    aput v11, v27, v16

    .line 317
    aget v11, v10, v26

    aput v11, v27, v20

    .line 319
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v11, v12, v11

    .line 321
    aget v28, v8, v26

    mul-int v28, v28, v11

    add-int v6, v6, v28

    .line 322
    aget v28, v9, v26

    mul-int v28, v28, v11

    add-int v13, v13, v28

    .line 323
    aget v26, v10, v26

    mul-int v26, v26, v11

    add-int v14, v14, v26

    if-lez v4, :cond_22a

    const/4 v11, 0x0

    .line 326
    aget v17, v27, v11

    add-int v18, v18, v17

    const/16 v16, 0x1

    .line 327
    aget v17, v27, v16

    add-int v19, v19, v17

    .line 328
    aget v17, v27, v20

    add-int v22, v22, v17

    :goto_227
    move/from16 v11, v34

    goto :goto_23a

    :cond_22a
    const/4 v11, 0x0

    const/16 v16, 0x1

    .line 330
    aget v26, v27, v11

    add-int v23, v23, v26

    .line 331
    aget v11, v27, v16

    add-int v24, v24, v11

    .line 332
    aget v11, v27, v20

    add-int v25, v25, v11

    goto :goto_227

    :goto_23a
    if-ge v4, v11, :cond_23d

    add-int/2addr v5, v2

    :cond_23d
    add-int/lit8 v4, v4, 0x1

    move/from16 v34, v11

    move-object/from16 v11, v37

    goto :goto_1e1

    :cond_244
    move-object/from16 v37, v11

    move/from16 v11, v34

    move/from16 v26, v19

    move/from16 v27, v22

    move/from16 v4, v33

    const/4 v5, 0x0

    move/from16 v19, v1

    move/from16 v22, v18

    move/from16 v18, v14

    move v14, v13

    move v13, v6

    move v6, v0

    :goto_258
    if-ge v5, v4, :cond_2ea

    const/high16 v28, -0x1000000

    .line 343
    aget v29, v15, v6

    and-int v28, v29, v28

    aget v29, v36, v13

    shl-int/lit8 v29, v29, 0x10

    or-int v28, v28, v29

    aget v29, v36, v14

    shl-int/lit8 v29, v29, 0x8

    or-int v28, v28, v29

    aget v29, v36, v18

    or-int v28, v28, v29

    aput v28, v15, v6

    sub-int v13, v13, v23

    sub-int v14, v14, v24

    sub-int v18, v18, v25

    sub-int v28, v19, v1

    add-int v28, v28, v7

    .line 350
    rem-int v28, v28, v7

    aget-object v28, v3, v28

    const/16 v17, 0x0

    .line 352
    aget v29, v28, v17

    sub-int v23, v23, v29

    const/16 v16, 0x1

    .line 353
    aget v29, v28, v16

    sub-int v24, v24, v29

    .line 354
    aget v29, v28, v20

    sub-int v25, v25, v29

    if-nez v0, :cond_29c

    add-int v1, v5, v12

    .line 357
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int v1, v1, v2

    aput v1, v37, v5

    .line 359
    :cond_29c
    aget v1, v37, v5

    add-int/2addr v1, v0

    .line 361
    aget v29, v8, v1

    const/16 v17, 0x0

    aput v29, v28, v17

    .line 362
    aget v29, v9, v1

    const/16 v16, 0x1

    aput v29, v28, v16

    .line 363
    aget v1, v10, v1

    aput v1, v28, v20

    .line 365
    aget v1, v28, v17

    add-int v22, v22, v1

    .line 366
    aget v1, v28, v16

    add-int v26, v26, v1

    .line 367
    aget v1, v28, v20

    add-int v27, v27, v1

    add-int v13, v13, v22

    add-int v14, v14, v26

    add-int v18, v18, v27

    add-int/lit8 v19, v19, 0x1

    .line 373
    rem-int v19, v19, v7

    .line 374
    aget-object v1, v3, v19

    const/16 v17, 0x0

    .line 376
    aget v28, v1, v17

    add-int v23, v23, v28

    const/16 v16, 0x1

    .line 377
    aget v28, v1, v16

    add-int v24, v24, v28

    .line 378
    aget v28, v1, v20

    add-int v25, v25, v28

    .line 380
    aget v28, v1, v17

    sub-int v22, v22, v28

    .line 381
    aget v28, v1, v16

    sub-int v26, v26, v28

    .line 382
    aget v1, v1, v20

    sub-int v27, v27, v1

    add-int/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p2

    goto/16 :goto_258

    :cond_2ea
    const/16 v16, 0x1

    const/16 v17, 0x0

    add-int/lit8 v0, v0, 0x1

    move/from16 v33, v4

    move/from16 v34, v11

    move-object/from16 v11, v37

    move/from16 v1, p2

    goto/16 :goto_1cd

    :cond_2fa
    move/from16 v4, v33

    const-string v0, "pix"

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v15

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, v21

    move-object v6, v15

    move v8, v2

    move v11, v2

    move v12, v4

    .line 389
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v21
.end method

.method private static rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .registers 7

    const-string v0, "LeoBlur"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    const/4 v1, 0x0

    .line 128
    invoke-static {p1, v0, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 130
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    const-string p3, "LeoBlur"

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scale size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p3

    .line 137
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 140
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 141
    invoke-virtual {v1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float p2, p2

    .line 144
    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 147
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p1
.end method

.method public static with(Landroid/content/Context;)Lcom/leo/service/plug/LeoGlobalBlur;
    .registers 3

    .line 39
    sget-object v0, Lcom/leo/service/plug/LeoGlobalBlur;->singleton:Lcom/leo/service/plug/LeoGlobalBlur;

    if-nez v0, :cond_17

    .line 40
    const-class v0, Lcom/leo/service/plug/LeoGlobalBlur;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lcom/leo/service/plug/LeoGlobalBlur;->singleton:Lcom/leo/service/plug/LeoGlobalBlur;

    if-nez v1, :cond_12

    .line 42
    new-instance v1, Lcom/leo/service/plug/LeoGlobalBlur;

    invoke-direct {v1, p0}, Lcom/leo/service/plug/LeoGlobalBlur;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/leo/service/plug/LeoGlobalBlur;->singleton:Lcom/leo/service/plug/LeoGlobalBlur;

    .line 44
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 46
    :cond_17
    :goto_17
    sget-object p0, Lcom/leo/service/plug/LeoGlobalBlur;->singleton:Lcom/leo/service/plug/LeoGlobalBlur;

    return-object p0
.end method


# virtual methods
.method public bitmap(Landroid/graphics/Bitmap;)Lcom/leo/service/plug/LeoGlobalBlur;
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public blur()Landroid/graphics/Bitmap;
    .registers 5

    .line 54
    iget-object v0, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_54

    .line 57
    iget v0, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mRadius:I

    if-eqz v0, :cond_4c

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_3a

    .line 61
    iget-object v0, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mPolicy:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    sget-object v1, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;->FAST_BLUR:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    if-ne v0, v1, :cond_26

    const-string v0, "LeoBlur"

    const-string v1, "blur fast algorithm"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mScale:F

    iget v2, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mRadius:I

    invoke-static {v0, v1, v2}, Lcom/leo/service/plug/LeoGlobalBlur;->fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_26
    const-string v0, "LeoBlur"

    const-string v1, "blur render script  algorithm"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mRadius:I

    iget v3, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mScale:F

    invoke-static {v0, v1, v2, v3}, Lcom/leo/service/plug/LeoGlobalBlur;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3a
    const-string v0, "LeoBlur"

    const-string v1, "blur fast algorithm"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mScale:F

    iget v2, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mRadius:I

    invoke-static {v0, v1, v2}, Lcom/leo/service/plug/LeoGlobalBlur;->fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 58
    :cond_4c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "radius must > 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public policy(Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;)Lcom/leo/service/plug/LeoGlobalBlur;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mPolicy:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    return-object p0
.end method

.method public radius(I)Lcom/leo/service/plug/LeoGlobalBlur;
    .registers 2

    .line 112
    iput p1, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mRadius:I

    return-object p0
.end method

.method public scale(I)Lcom/leo/service/plug/LeoGlobalBlur;
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 102
    iput v0, p0, Lcom/leo/service/plug/LeoGlobalBlur;->mScale:F

    return-object p0
.end method
