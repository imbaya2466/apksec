.class public Landroid/support/constraint/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroid/support/constraint/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroid/support/constraint/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 53
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 56
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 59
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 78
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 81
    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 101
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    .line 102
    iput-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    return-void
.end method

.method private isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z
    .registers 3

    .line 0
    iget p1, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_6

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    return p2
.end method


# virtual methods
.method final add(Landroid/support/constraint/solver/SolverVariable;FZ)V
    .registers 13

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return-void

    .line 0
    :cond_6
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 230
    const/4 v2, 0x0

    .line 231
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4b

    iput v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 232
    iget-object p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, p3, v0

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 233
    iget p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v0, p2, p3

    .line 234
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v3, p2, p3

    .line 235
    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v4

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 236
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 237
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v4

    .line 239
    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_4a

    .line 240
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 241
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 242
    array-length p2, p2

    if-lt p1, p2, :cond_4a

    iput-boolean v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 247
    array-length p1, p1

    sub-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_4a
    return-void

    .line 250
    :cond_4b
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 251
    :goto_4f
    if-eq v1, v3, :cond_a7

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 252
    if-ge v5, v7, :cond_a7

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 253
    aget v7, v7, v1

    iget v8, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v7, v8, :cond_97

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 255
    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 256
    aget p2, p2, v1

    cmpl-float p2, p2, v0

    .line 257
    if-nez p2, :cond_96

    iget p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v1, p2, :cond_77

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 259
    aget p2, p2, v1

    iput p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_7f

    :cond_77
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 262
    aget v0, v0, v1

    aput v0, p2, v6

    :goto_7f
    if-eqz p3, :cond_86

    .line 264
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 266
    .line 268
    :cond_86
    iget-boolean p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p2, :cond_8c

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 269
    :cond_8c
    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    sub-int/2addr p2, v4

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 273
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    sub-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    :cond_96
    return-void

    :cond_97
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v1

    .line 276
    iget v8, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v7, v8, :cond_a0

    move v6, v1

    :cond_a0
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 282
    aget v1, v7, v1

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_a7
    iget p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 286
    add-int/2addr p3, v4

    iget-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v0, :cond_bc

    iget-object p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 287
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    aget p3, p3, v0

    .line 289
    if-ne p3, v3, :cond_b9

    .line 292
    iget p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_bc

    :cond_b9
    iget-object p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 293
    array-length p3, p3

    :cond_bc
    :goto_bc
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    if-lt p3, v0, :cond_d9

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 295
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d9

    .line 296
    const/4 v0, 0x0

    :goto_c9
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d9

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v1, v1, v0

    if-ne v1, v3, :cond_d6

    .line 304
    move p3, v0

    goto :goto_d9

    :cond_d6
    add-int/lit8 v0, v0, 0x1

    .line 305
    goto :goto_c9

    :cond_d9
    :goto_d9
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 306
    array-length v0, v0

    if-lt p3, v0, :cond_10b

    iget-object p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p3, p3

    .line 307
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    .line 308
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 309
    iput-boolean v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 310
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 311
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 315
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 316
    :cond_10b
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v1, v0, p3

    .line 318
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v0, p3

    if-eq v6, v3, :cond_124

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 319
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v0, v6

    aput v0, p2, p3

    .line 321
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput p3, p2, v6

    goto :goto_12c

    .line 322
    :cond_124
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 324
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v0, p2, p3

    iput p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 325
    :goto_12c
    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v4

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 326
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 327
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v4

    .line 329
    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_144

    .line 331
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_144
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 332
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 333
    array-length p2, p2

    if-lt p1, p2, :cond_153

    iput-boolean v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p1, p1

    sub-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_153
    return-void
.end method

.method chooseSubject(Landroid/support/constraint/solver/LinearSystem;)Landroid/support/constraint/solver/SolverVariable;
    .registers 16

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_a
    const/4 v9, -0x1

    if-eq v0, v9, :cond_9c

    .line 515
    iget v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v9, :cond_9c

    .line 516
    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v9, v9, v0

    const v10, 0x3a83126f

    .line 518
    iget-object v11, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v11, v11, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v12, v12, v0

    aget-object v11, v11, v12

    cmpg-float v12, v9, v3

    if-gez v12, :cond_38

    const v10, -0x457ced91

    cmpl-float v10, v9, v10

    if-lez v10, :cond_46

    .line 521
    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v3, v9, v0

    .line 523
    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v11, v9}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    :goto_36
    const/4 v9, 0x0

    goto :goto_46

    :cond_38
    cmpg-float v10, v9, v10

    if-gez v10, :cond_46

    .line 527
    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v3, v9, v0

    .line 529
    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v11, v9}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_36

    :cond_46
    :goto_46
    const/4 v10, 0x1

    cmpl-float v12, v9, v3

    if-eqz v12, :cond_94

    .line 533
    iget-object v12, v11, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v13, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v12, v13, :cond_70

    if-nez v1, :cond_5b

    .line 537
    invoke-direct {p0, v11, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v1

    :goto_57
    move v6, v1

    move v5, v9

    move-object v1, v11

    goto :goto_94

    :cond_5b
    cmpl-float v12, v5, v9

    if-lez v12, :cond_64

    .line 541
    invoke-direct {p0, v11, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v1

    goto :goto_57

    :cond_64
    if-nez v6, :cond_94

    .line 542
    invoke-direct {p0, v11, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v12

    if-eqz v12, :cond_94

    move v5, v9

    move-object v1, v11

    const/4 v6, 0x1

    goto :goto_94

    :cond_70
    if-nez v1, :cond_94

    cmpg-float v12, v9, v3

    if-gez v12, :cond_94

    if-nez v4, :cond_80

    .line 552
    invoke-direct {p0, v11, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v4

    :goto_7c
    move v8, v4

    move v7, v9

    move-object v4, v11

    goto :goto_94

    :cond_80
    cmpl-float v12, v7, v9

    if-lez v12, :cond_89

    .line 556
    invoke-direct {p0, v11, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v4

    goto :goto_7c

    :cond_89
    if-nez v8, :cond_94

    .line 557
    invoke-direct {p0, v11, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v12

    if-eqz v12, :cond_94

    move v7, v9

    move-object v4, v11

    const/4 v8, 0x1

    .line 565
    :cond_94
    :goto_94
    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v9, v0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_9c
    if-eqz v1, :cond_9f

    return-object v1

    :cond_9f
    return-object v4
.end method

.method public final clear()V
    .registers 6

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_23

    .line 387
    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_23

    .line 388
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1c

    .line 390
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 392
    :cond_1c
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 395
    :cond_23
    iput v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 396
    iput v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 397
    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 398
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    return-void
.end method

.method final containsKey(Landroid/support/constraint/solver/SolverVariable;)Z
    .registers 8

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    return v2

    .line 411
    :cond_7
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v3, 0x0

    :goto_a
    if-eq v0, v1, :cond_21

    .line 413
    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_21

    .line 414
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget v5, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1a

    const/4 p1, 0x1

    return p1

    .line 417
    :cond_1a
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_21
    return v2
.end method

.method public display()V
    .registers 6

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 780
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_38

    .line 782
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_35

    .line 786
    :cond_13
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 788
    :cond_38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method divideByAmount(F)V
    .registers 6

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    .line 460
    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_18

    .line 461
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 462
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    return-void
.end method

.method public final get(Landroid/support/constraint/solver/SolverVariable;)F
    .registers 6

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    .line 761
    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1e

    .line 762
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v0

    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_17

    .line 763
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v0

    return p1

    .line 765
    :cond_17
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_33

    .line 670
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, -0x1

    if-eq v0, v3, :cond_32

    .line 673
    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_32

    .line 674
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2b

    .line 678
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v2, :cond_2a

    .line 679
    iget v4, v2, Landroid/support/constraint/solver/SolverVariable;->strength:I

    iget v5, v3, Landroid/support/constraint/solver/SolverVariable;->strength:I

    if-ge v4, v5, :cond_2b

    :cond_2a
    move-object v2, v3

    .line 683
    :cond_2b
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_32
    return-object v2

    .line 687
    :cond_33
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    return-object v0
.end method

.method getPivotCandidate([ZLandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;
    .registers 11

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    const/4 v5, -0x1

    if-eq v0, v5, :cond_46

    .line 695
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v5, :cond_46

    .line 696
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v5, v5, v0

    cmpg-float v5, v5, v1

    if-gez v5, :cond_3f

    .line 700
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v5, v5, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    if-eqz p1, :cond_27

    .line 701
    iget v6, v5, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-boolean v6, p1, v6

    if-nez v6, :cond_3f

    :cond_27
    if-eq v5, p2, :cond_3f

    .line 702
    iget-object v6, v5, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v6, v7, :cond_35

    iget-object v6, v5, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_3f

    .line 704
    :cond_35
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v6, v6, v0

    cmpg-float v7, v6, v4

    if-gez v7, :cond_3f

    move-object v3, v5

    move v4, v6

    .line 712
    :cond_3f
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_46
    return-object v3
.end method

.method final getVariable(I)Landroid/support/constraint/solver/SolverVariable;
    .registers 5

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    .line 726
    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1e

    if-ne v1, p1, :cond_17

    .line 728
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object p1, p1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v0, v1, v0

    aget-object p1, p1, v0

    return-object p1

    .line 730
    :cond_17
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method final getVariableValue(I)F
    .registers 5

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    .line 744
    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_18

    if-ne v1, p1, :cond_11

    .line 746
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v0

    return p1

    .line 748
    :cond_11
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method hasAtLeastOnePositiveVariable()Z
    .registers 6

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1d

    .line 430
    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_1d

    .line 431
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    const/4 v0, 0x1

    return v0

    .line 434
    :cond_16
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1d
    return v1
.end method

.method invert()V
    .registers 6

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    .line 445
    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1b

    .line 446
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000

    mul-float v3, v3, v4

    aput v3, v2, v0

    .line 447
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1b
    return-void
.end method

.method public final put(Landroid/support/constraint/solver/SolverVariable;F)V
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    .line 122
    if-nez v1, :cond_a

    .line 0
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    return-void

    .line 123
    :cond_a
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 124
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4e

    iput v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 125
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v1, v2

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 126
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iget v2, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v2, p2, v1

    .line 127
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v3, p2, v1

    .line 128
    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 129
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 130
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v0

    .line 132
    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_4d

    .line 133
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 134
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 135
    array-length p2, p2

    if-lt p1, p2, :cond_4d

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 140
    array-length p1, p1

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_4d
    return-void

    .line 143
    :cond_4e
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 144
    :goto_52
    if-eq v1, v3, :cond_75

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v6, :cond_75

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 145
    aget v6, v6, v1

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_65

    .line 148
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, p1, v1

    return-void

    :cond_65
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v1

    .line 151
    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_6e

    move v5, v1

    :cond_6e
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 157
    aget v1, v6, v1

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_75
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 161
    add-int/2addr v1, v0

    iget-boolean v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v4, :cond_8a

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 162
    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    aget v1, v1, v4

    .line 164
    if-ne v1, v3, :cond_87

    .line 167
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_8a

    :cond_87
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 168
    array-length v1, v1

    :cond_8a
    :goto_8a
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v4, v4

    if-lt v1, v4, :cond_a7

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 170
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-ge v4, v6, :cond_a7

    .line 171
    const/4 v4, 0x0

    :goto_97
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-ge v4, v6, :cond_a7

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v4

    if-ne v6, v3, :cond_a4

    .line 179
    move v1, v4

    goto :goto_a7

    :cond_a4
    add-int/lit8 v4, v4, 0x1

    .line 180
    goto :goto_97

    :cond_a7
    :goto_a7
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 181
    array-length v4, v4

    if-lt v1, v4, :cond_d9

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    .line 182
    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v4, v4, 0x2

    .line 183
    iput v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 184
    iput-boolean v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 185
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 186
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 190
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 191
    :cond_d9
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v4, v2, v1

    .line 193
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v2, v1

    if-eq v5, v3, :cond_f2

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 194
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v2, v5

    aput v2, p2, v1

    .line 196
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v1, p2, v5

    goto :goto_fa

    .line 197
    :cond_f2
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 199
    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v2, p2, v1

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 200
    :goto_fa
    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 201
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 202
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v0

    .line 204
    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_112

    .line 206
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_112
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 207
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 209
    array-length p2, p2

    if-lt p1, p2, :cond_11b

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    :cond_11b
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 210
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 211
    array-length p2, p2

    if-lt p1, p2, :cond_12a

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p1, p1

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_12a
    return-void
.end method

.method public final remove(Landroid/support/constraint/solver/SolverVariable;Z)F
    .registers 11

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 348
    :cond_7
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    return v1

    .line 351
    :cond_e
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_12
    if-eq v0, v2, :cond_5f

    .line 354
    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v5, :cond_5f

    .line 355
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    .line 356
    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_55

    .line 357
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v0, v1, :cond_2b

    .line 358
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v1, v0

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_33

    .line 360
    :cond_2b
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v3, v3, v0

    aput v3, v1, v4

    :goto_33
    if-eqz p2, :cond_3a

    .line 364
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 366
    :cond_3a
    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 367
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 368
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aput v2, p1, v0

    .line 369
    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p1, :cond_50

    .line 371
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 373
    :cond_50
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v0

    return p1

    .line 376
    :cond_55
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_12

    :cond_5f
    return v1
.end method

.method sizeInBytes()I
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    .line 0
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    :goto_5
    const/4 v3, -0x1

    .line 801
    if-eq v1, v3, :cond_55

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 802
    if-ge v2, v3, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 804
    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    move-result-object v0

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_55
    return-object v0
.end method

.method final updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;Z)V
    .registers 12

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x0

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5f

    .line 585
    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_5f

    .line 586
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget-object v5, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_58

    .line 587
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v2, v0

    .line 588
    iget-object v2, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p0, v2, p3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    .line 590
    iget-object v2, p2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    check-cast v2, Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 591
    iget v4, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v5, 0x0

    :goto_25
    if-eq v4, v3, :cond_45

    .line 593
    iget v6, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_45

    .line 594
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v6, v6, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    .line 596
    iget-object v7, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v7, v7, v4

    mul-float v7, v7, v0

    .line 597
    invoke-virtual {p0, v6, v7, p3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;FZ)V

    .line 598
    iget-object v6, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 600
    :cond_45
    iget v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v3, p2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    if-eqz p3, :cond_55

    .line 602
    iget-object v0, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 608
    :cond_55
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_3

    .line 612
    :cond_58
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5f
    return-void
.end method

.method updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V
    .registers 13

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x0

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_68

    .line 628
    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_68

    .line 629
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    .line 630
    iget v5, v4, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    if-eq v5, v3, :cond_61

    .line 631
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v2, v0

    const/4 v2, 0x1

    .line 632
    invoke-virtual {p0, v4, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    .line 634
    iget v4, v4, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    aget-object v4, p2, v4

    .line 635
    iget-boolean v5, v4, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v5, :cond_50

    .line 636
    iget-object v5, v4, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    check-cast v5, Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 637
    iget v6, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v7, 0x0

    :goto_30
    if-eq v6, v3, :cond_50

    .line 639
    iget v8, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v8, :cond_50

    .line 640
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v8, v8, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    .line 642
    iget-object v9, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v9, v9, v6

    mul-float v9, v9, v0

    .line 643
    invoke-virtual {p0, v8, v9, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;FZ)V

    .line 644
    iget-object v8, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 648
    :cond_50
    iget v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v3, v4, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 649
    iget-object v0, v4, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    .line 654
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_3

    .line 658
    :cond_61
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_68
    return-void
.end method
