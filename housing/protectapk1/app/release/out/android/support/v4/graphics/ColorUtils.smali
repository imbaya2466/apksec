.class public final Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .registers 7
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x0

    .line 0
    aget v1, p0, v0

    .line 239
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 240
    const/4 v3, 0x2

    aget p0, p0, v3

    const/high16 v3, 0x40000000

    mul-float v4, p0, v3

    const/high16 v5, 0x3f800000

    .line 242
    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float v4, v4, v2

    const/high16 v2, 0x3f000000

    mul-float v2, v2, v4

    sub-float/2addr p0, v2

    const/high16 v2, 0x42700000

    div-float v2, v1, v2

    rem-float/2addr v2, v3

    .line 244
    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v5, v2

    mul-float v5, v5, v4

    .line 246
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3c

    const/high16 v2, 0x437f0000

    packed-switch v1, :pswitch_data_c8

    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_b4

    :pswitch_37
    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 278
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v3, p0, v2

    .line 279
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 280
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_b4

    :pswitch_4c
    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 272
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v3, p0, v2

    .line 273
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 274
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_b4

    :pswitch_61
    mul-float v1, p0, v2

    .line 267
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 268
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 269
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_b4

    :pswitch_76
    mul-float v1, p0, v2

    .line 262
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 263
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 264
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_b4

    :pswitch_8b
    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 257
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 258
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float p0, p0, v2

    .line 259
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_b4

    :pswitch_a0
    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 252
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 253
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float p0, p0, v2

    .line 254
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_b4
    const/16 v2, 0xff

    .line 284
    invoke-static {v1, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    .line 285
    move-result v1

    invoke-static {v3, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    .line 286
    move-result v3

    invoke-static {p0, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    .line 288
    move-result p0

    invoke-static {v1, v3, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_8b
        :pswitch_76
        :pswitch_61
        :pswitch_4c
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .registers 14
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 0
    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v7

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v7

    .line 503
    invoke-static/range {v0 .. v6}, Landroid/support/v4/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    const/4 p0, 0x0

    .line 504
    aget-wide v0, v7, p0

    const/4 p0, 0x1

    aget-wide v2, v7, p0

    const/4 p0, 0x2

    aget-wide v4, v7, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result p0

    return p0
.end method

.method public static LABToXYZ(DDD[D)V
    .registers 28
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p6    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-wide/high16 v2, 0x4030000000000000L

    add-double v4, p0, v2

    const-wide/high16 v6, 0x405d000000000000L

    div-double/2addr v4, v6

    const-wide v8, 0x407f400000000000L

    div-double v8, p2, v8

    add-double/2addr v8, v4

    const-wide/high16 v10, 0x4069000000000000L

    div-double v10, p4, v10

    sub-double v10, v4, v10

    const-wide/high16 v12, 0x4008000000000000L

    .line 0
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide v16, 0x3f82231832fcac8eL

    const-wide v18, 0x408c3a6666666666L

    .line 451
    cmpl-double v20, v14, v16

    if-lez v20, :cond_2a

    .line 453
    goto :goto_30

    :cond_2a
    mul-double v8, v8, v6

    const/4 v14, 0x0

    sub-double/2addr v8, v2

    div-double v14, v8, v18

    :goto_30
    const-wide v8, 0x401fff9da4c11507L

    cmpl-double v8, p0, v8

    if-lez v8, :cond_3e

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_40

    :cond_3e
    div-double v0, p0, v18

    .line 456
    :goto_40
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpl-double v8, v4, v16

    if-lez v8, :cond_49

    .line 457
    goto :goto_4f

    :cond_49
    mul-double v10, v10, v6

    const/4 v4, 0x0

    sub-double/2addr v10, v2

    div-double v4, v10, v18

    :goto_4f
    const/4 v2, 0x0

    const-wide v6, 0x4057c3020c49ba5eL

    .line 458
    mul-double v14, v14, v6

    aput-wide v14, p6, v2

    const/4 v2, 0x1

    const-wide/high16 v6, 0x4059000000000000L

    mul-double v0, v0, v6

    aput-wide v0, p6, v2

    const/4 v0, 0x2

    const-wide v2, 0x405b3883126e978dL

    mul-double v4, v4, v2

    aput-wide v4, p6, v0

    return-void
.end method

.method public static RGBToHSL(III[F)V
    .registers 11
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    int-to-float p0, p0

    const/high16 v0, 0x437f0000

    div-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 0
    .line 178
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v2, v0, v1

    add-float v3, v0, v1

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_29

    const/4 p0, 0x0

    const/4 p1, 0x0

    goto :goto_4d

    :cond_29
    cmpl-float v1, v0, p0

    if-nez v1, :cond_34

    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    const/high16 p0, 0x40c00000

    rem-float/2addr p1, p0

    move p0, p1

    goto :goto_42

    :cond_34
    cmpl-float v0, v0, p1

    if-nez v0, :cond_3d

    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float/2addr p2, v4

    move p0, p2

    goto :goto_42

    .line 196
    :cond_3d
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    const/high16 p1, 0x40800000

    add-float/2addr p0, p1

    :goto_42
    mul-float v4, v4, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v5, p1

    div-float p1, v2, p1

    :goto_4d
    const/high16 p2, 0x42700000

    mul-float p0, p0, p2

    const/high16 p2, 0x43b40000

    .line 204
    rem-float/2addr p0, p2

    cmpg-float v0, p0, v6

    if-gez v0, :cond_59

    add-float/2addr p0, p2

    .line 205
    :cond_59
    const/4 v0, 0x0

    invoke-static {p0, v6, p2}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result p0

    aput p0, p3, v0

    .line 206
    const/4 p0, 0x1

    invoke-static {p1, v6, v5}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result p1

    aput p1, p3, p0

    const/4 p0, 0x2

    invoke-static {v3, v6, v5}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result p1

    aput p1, p3, p0

    return-void
.end method

.method public static RGBToLAB(III[D)V
    .registers 11
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    const/4 p0, 0x0

    .line 333
    aget-wide v0, p3, p0

    const/4 p0, 0x1

    aget-wide v2, p3, p0

    const/4 p0, 0x2

    aget-wide v4, p3, p0

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/support/v4/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .registers 23
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p3

    .line 0
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b5

    move/from16 v1, p0

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L

    div-double/2addr v1, v3

    const-wide v5, 0x4003333333333333L

    const-wide v7, 0x3ff0e147ae147ae1L

    const-wide v9, 0x3fac28f5c28f5c29L

    const-wide v11, 0x4029d70a3d70a3d7L

    const-wide v13, 0x3fa4b5dcc63f1412L

    cmpg-double v15, v1, v13

    if-gez v15, :cond_31

    div-double/2addr v1, v11

    :goto_2d
    move-wide v15, v1

    move/from16 v1, p1

    goto :goto_39

    :cond_31
    const/4 v15, 0x0

    .line 381
    add-double/2addr v1, v9

    div-double/2addr v1, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    goto :goto_2d

    :goto_39
    int-to-double v1, v1

    div-double/2addr v1, v3

    cmpg-double v17, v1, v13

    if-gez v17, :cond_45

    div-double/2addr v1, v11

    :goto_40
    move-wide/from16 v17, v1

    move/from16 v1, p2

    goto :goto_4e

    :cond_45
    const/16 v17, 0x0

    .line 383
    add-double/2addr v1, v9

    div-double/2addr v1, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    goto :goto_40

    :goto_4e
    int-to-double v1, v1

    div-double/2addr v1, v3

    cmpg-double v3, v1, v13

    if-gez v3, :cond_56

    div-double/2addr v1, v11

    goto :goto_5d

    :cond_56
    const/4 v3, 0x0

    .line 385
    add-double/2addr v1, v9

    div-double/2addr v1, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :goto_5d
    const/4 v3, 0x0

    const-wide v4, 0x3fda64c2f837b4a2L

    mul-double v4, v4, v15

    const-wide v6, 0x3fd6e2eb1c432ca5L

    mul-double v6, v6, v17

    add-double/2addr v4, v6

    const-wide v6, 0x3fc71a9fbe76c8b4L

    mul-double v6, v6, v1

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L

    .line 387
    mul-double v4, v4, v6

    aput-wide v4, v0, v3

    const/4 v3, 0x1

    const-wide v4, 0x3fcb367a0f9096bcL

    mul-double v4, v4, v15

    const-wide v8, 0x3fe6e2eb1c432ca5L

    mul-double v8, v8, v17

    add-double/2addr v4, v8

    const-wide v8, 0x3fb27bb2fec56d5dL

    mul-double v8, v8, v1

    add-double/2addr v4, v8

    .line 388
    mul-double v4, v4, v6

    aput-wide v4, v0, v3

    const/4 v3, 0x2

    const-wide v4, 0x3f93c36113404ea5L

    mul-double v15, v15, v4

    const-wide v4, 0x3fbe83e425aee632L

    mul-double v17, v17, v4

    add-double v15, v15, v17

    const-wide v4, 0x3fee6a7ef9db22d1L

    mul-double v1, v1, v4

    add-double/2addr v15, v1

    .line 389
    mul-double v15, v15, v6

    aput-wide v15, v0, v3

    .line 377
    return-void

    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static XYZToColor(DDD)I
    .registers 23
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const-wide v6, 0x4009ecbfb15b573fL

    mul-double v6, v6, p0

    const-wide v8, -0x400767a0f9096bbaL

    mul-double v8, v8, p2

    .line 481
    add-double/2addr v6, v8

    const-wide v8, -0x402016f0068db8bbL

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L

    div-double/2addr v6, v8

    const-wide v10, -0x4010fec56d5cfaadL

    .line 482
    mul-double v10, v10, p0

    const-wide v12, 0x3ffe0346dc5d6388L

    mul-double v12, v12, p2

    add-double/2addr v10, v12

    const-wide v12, 0x3fa53f7ced916873L

    .line 485
    mul-double v12, v12, p4

    add-double/2addr v10, v12

    div-double/2addr v10, v8

    const-wide v12, 0x3fac84b5dcc63f14L

    mul-double v0, p0, v12

    const-wide v12, -0x4035e353f7ced917L

    .line 486
    mul-double v2, p2, v12

    add-double/2addr v0, v2

    const-wide v2, 0x3ff0e978d4fdf3b6L

    .line 487
    mul-double v2, v2, p4

    add-double/2addr v0, v2

    div-double/2addr v0, v8

    const-wide v2, 0x4029d70a3d70a3d7L

    .line 484
    const-wide v4, 0x3fac28f5c28f5c29L

    const-wide v8, 0x3fdaaaaaaaaaaaabL

    const-wide v12, 0x3ff0e147ae147ae1L

    const-wide v14, 0x3f69a5c37387b719L

    cmpl-double v16, v6, v14

    if-lez v16, :cond_6f

    .line 0
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v12

    sub-double/2addr v6, v4

    goto :goto_71

    :cond_6f
    mul-double v6, v6, v2

    :goto_71
    cmpl-double v16, v10, v14

    if-lez v16, :cond_7d

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v10, v10, v12

    sub-double/2addr v10, v4

    goto :goto_7f

    :cond_7d
    mul-double v10, v10, v2

    :goto_7f
    cmpl-double v14, v0, v14

    if-lez v14, :cond_8b

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v12

    sub-double/2addr v0, v4

    goto :goto_8d

    :cond_8b
    mul-double v0, v0, v2

    :goto_8d
    const-wide v2, 0x406fe00000000000L

    mul-double v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    const/16 v5, 0xff

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v4

    mul-double v10, v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v7, v6, v5}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v7

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0, v6, v5}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v0

    invoke-static {v4, v7, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static XYZToLAB(DDD[D)V
    .registers 14
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .param p6    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    array-length v0, p6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_43

    const-wide v0, 0x4057c3020c49ba5eL

    div-double/2addr p0, v0

    .line 416
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L

    div-double/2addr p2, v0

    .line 417
    invoke-static {p2, p3}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p2

    const-wide v0, 0x405b3883126e978dL

    div-double/2addr p4, v0

    .line 418
    invoke-static {p4, p5}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x405d000000000000L

    mul-double v3, v3, p2

    const-wide/high16 v5, 0x4030000000000000L

    sub-double/2addr v3, v5

    .line 419
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, p6, v0

    const/4 v0, 0x1

    const-wide v1, 0x407f400000000000L

    sub-double/2addr p0, p2

    mul-double p0, p0, v1

    .line 420
    aput-wide p0, p6, v0

    const/4 p0, 0x2

    const-wide/high16 v0, 0x4069000000000000L

    sub-double/2addr p2, p4

    mul-double p2, p2, v0

    .line 421
    aput-wide p2, p6, p0

    return-void

    .line 414
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outLab must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blendARGB(IIF)I
    .registers 8
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const/high16 v0, 0x3f800000

    sub-float/2addr v0, p2

    .line 0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    .line 545
    mul-float v2, v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    .line 546
    mul-float v3, v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    .line 547
    mul-float v4, v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    .line 548
    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static blendHSL([F[FF[F)V
    .registers 8
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    const/high16 v0, 0x3f800000

    sub-float/2addr v0, p2

    const/4 v1, 0x0

    .line 570
    aget v2, p0, v1

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Landroid/support/v4/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v2

    aput v2, p3, v1

    const/4 v1, 0x1

    .line 571
    aget v2, p0, v1

    mul-float v2, v2, v0

    aget v3, p1, v1

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x2

    .line 572
    aget p0, p0, v1

    mul-float p0, p0, v0

    aget p1, p1, v1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    aput p0, p3, v1

    return-void

    .line 566
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "result must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blendLAB([D[DD[D)V
    .registers 12
    .param p0    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    array-length v0, p4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    const-wide/high16 v0, 0x3ff0000000000000L

    sub-double/2addr v0, p2

    const/4 v2, 0x0

    .line 592
    aget-wide v3, p0, v2

    mul-double v3, v3, v0

    aget-wide v5, p1, v2

    mul-double v5, v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    const/4 v2, 0x1

    .line 593
    aget-wide v3, p0, v2

    mul-double v3, v3, v0

    aget-wide v5, p1, v2

    mul-double v5, v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    const/4 v2, 0x2

    .line 594
    aget-wide v3, p0, v2

    mul-double v3, v3, v0

    aget-wide p0, p1, v2

    mul-double p0, p0, p2

    add-double/2addr v3, p0

    aput-wide v3, p4, v2

    return-void

    .line 589
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outResult must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateContrast(II)D
    .registers 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2b

    .line 95
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_12

    .line 97
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 100
    :cond_12
    invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL

    add-double/2addr v0, v2

    .line 101
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    .line 104
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    .line 92
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background can not be translucent: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateLuminance(I)D
    .registers 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 0
    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    .line 78
    invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToXYZ(I[D)V

    const/4 p0, 0x1

    .line 80
    aget-wide v1, v0, p0

    const-wide/high16 v3, 0x4059000000000000L

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static calculateMinimumAlpha(IIF)I
    .registers 11
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_39

    .line 125
    invoke-static {p0, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 126
    invoke-static {v0, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    float-to-double v4, p2

    cmpg-double p2, v2, v4

    if-gez p2, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_19
    const/16 v2, 0xa

    if-gt p2, v2, :cond_38

    sub-int v2, v1, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_38

    add-int v2, v0, v1

    .line 139
    div-int/lit8 v2, v2, 0x2

    .line 141
    invoke-static {p0, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 142
    invoke-static {v3, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    cmpg-double v3, v6, v4

    if-gez v3, :cond_34

    move v0, v2

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    :cond_38
    return v1

    .line 120
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "background can not be translucent: #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static circularInterpolate(FFF)F
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    sub-float v0, p1, p0

    .line 0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43b40000

    const/high16 v2, 0x43340000

    cmpl-float v0, v0, v2

    if-lez v0, :cond_15

    cmpl-float v0, p1, p0

    if-lez v0, :cond_14

    add-float/2addr p0, v1

    goto :goto_15

    :cond_14
    add-float/2addr p1, v1

    :cond_15
    :goto_15
    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    rem-float/2addr p0, v1

    return p0
.end method

.method public static colorToHSL(I[F)V
    .registers 4
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    return-void
.end method

.method public static colorToLAB(I[D)V
    .registers 4
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToLAB(III[D)V

    return-void
.end method

.method public static colorToXYZ(I[D)V
    .registers 4
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    return-void
.end method

.method private static compositeAlpha(II)I
    .registers 2

    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int p1, p1, p0

    .line 0
    div-int/lit16 p1, p1, 0xff

    rsub-int p0, p1, 0xff

    return p0
.end method

.method public static compositeColors(II)I
    .registers 8
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 49
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 50
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 52
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 52
    invoke-static {v3, v1, v4, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 54
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 54
    invoke-static {v4, v1, v5, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 56
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 56
    invoke-static {p0, v1, p1, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result p0

    .line 59
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static compositeComponent(IIIII)I
    .registers 5

    if-nez p4, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    mul-int/lit16 p0, p0, 0xff

    mul-int p0, p0, p1

    mul-int p2, p2, p3

    rsub-int p1, p1, 0xff

    mul-int p2, p2, p1

    add-int/2addr p0, p2

    mul-int/lit16 p4, p4, 0xff

    .line 0
    div-int/2addr p0, p4

    return p0
.end method

.method private static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_b

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_b

    move p0, p2

    :cond_b
    :goto_b
    return p0
.end method

.method private static constrain(III)I
    .registers 3

    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method public static distanceEuclidean([D[D)D
    .registers 11
    .param p0    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 0
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v5, p0, v2

    aget-wide v7, p1, v2

    .line 512
    sub-double/2addr v5, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    const/4 v2, 0x2

    aget-wide v5, p0, v2

    aget-wide p0, p1, v2

    .line 513
    sub-double/2addr v5, p0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    .line 511
    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getTempDouble3Array()[D
    .registers 2

    .line 0
    sget-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_12

    const/4 v0, 0x3

    .line 612
    new-array v0, v0, [D

    .line 613
    sget-object v1, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    return-object v0
.end method

.method private static pivotXyzComponent(D)D
    .registers 4

    const-wide v0, 0x3f82231832fcac8eL

    cmpl-double v0, p0, v0

    if-lez v0, :cond_13

    const-wide v0, 0x3fd5555555555555L

    .line 0
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_20

    :cond_13
    const-wide v0, 0x408c3a6666666666L

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4030000000000000L

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L

    div-double/2addr p0, v0

    :goto_20
    return-wide p0
.end method

.method public static setAlphaComponent(II)I
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 0
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
