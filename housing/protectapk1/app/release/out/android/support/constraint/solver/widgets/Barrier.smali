.class public Landroid/support/constraint/solver/widgets/Barrier;
.super Landroid/support/constraint/solver/widgets/Helper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ResolutionAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/Helper;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 12

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 210
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 211
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 212
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v0, 0x0

    .line 213
    :goto_1d
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    if-ge v0, v1, :cond_33

    .line 214
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 216
    :cond_33
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ltz v0, :cond_15b

    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_15b

    .line 217
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    .line 224
    :goto_43
    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v6, :cond_7c

    .line 225
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v6, v6, v1

    .line 226
    iget-boolean v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_56

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-nez v7, :cond_56

    goto :goto_79

    .line 229
    :cond_56
    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_5e

    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v7, v4, :cond_68

    .line 230
    :cond_5e
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_68

    :goto_66
    const/4 v1, 0x1

    goto :goto_7d

    .line 233
    :cond_68
    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eq v7, v3, :cond_70

    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v7, v5, :cond_79

    .line 234
    :cond_70
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_79

    goto :goto_66

    :cond_79
    :goto_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_7c
    const/4 v1, 0x0

    .line 239
    :goto_7d
    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_93

    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v6, v4, :cond_86

    goto :goto_93

    .line 244
    :cond_86
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Barrier;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_a0

    goto :goto_9f

    .line 240
    :cond_93
    :goto_93
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Barrier;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_a0

    :goto_9f
    const/4 v1, 0x0

    :cond_a0
    const/4 v6, 0x0

    .line 248
    :goto_a1
    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_dd

    .line 249
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    .line 250
    iget-boolean v8, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v8, :cond_b4

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v8

    if-nez v8, :cond_b4

    goto :goto_da

    .line 253
    :cond_b4
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    .line 254
    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v7, v7, v9

    iput-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 255
    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_d5

    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v7, v3, :cond_cf

    goto :goto_d5

    .line 258
    :cond_cf
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v7, v8, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterBarrier(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Z)V

    goto :goto_da

    .line 256
    :cond_d5
    :goto_d5
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v7, v8, v1}, Landroid/support/constraint/solver/LinearSystem;->addLowerBarrier(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Z)V

    :goto_da
    add-int/lit8 v6, v6, 0x1

    goto :goto_a1

    .line 262
    :cond_dd
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-nez v0, :cond_fe

    .line 263
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-nez v1, :cond_15a

    .line 265
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_15a

    .line 267
    :cond_fe
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v0, v4, :cond_11d

    .line 268
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-nez v1, :cond_15a

    .line 270
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_15a

    .line 272
    :cond_11d
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v0, v3, :cond_13c

    .line 273
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-nez v1, :cond_15a

    .line 275
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_15a

    .line 277
    :cond_13c
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v0, v5, :cond_15a

    .line 278
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-nez v1, :cond_15a

    .line 280
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    :cond_15a
    :goto_15a
    return-void

    :cond_15b
    return-void
.end method

.method public allowedInBarrier()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public allowsGoneWidget()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return v0
.end method

.method public analyze(I)V
    .registers 6

    .line 0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez p1, :cond_5

    return-void

    .line 68
    :cond_5
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 73
    :cond_11
    iget p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    packed-switch p1, :pswitch_data_b0

    return-void

    .line 84
    :pswitch_17
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    goto :goto_32

    .line 81
    :pswitch_1e
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    goto :goto_32

    .line 78
    :pswitch_25
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    goto :goto_32

    .line 75
    :pswitch_2c
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    :goto_32
    const/4 v0, 0x5

    .line 89
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 91
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_42

    goto :goto_55

    .line 95
    :cond_42
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 96
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_67

    .line 92
    :cond_55
    :goto_55
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 93
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 99
    :goto_67
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 100
    :goto_6d
    iget v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v0, v1, :cond_af

    .line 101
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 102
    iget-boolean v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v3, :cond_80

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v3

    if-nez v3, :cond_80

    goto :goto_ac

    .line 106
    :cond_80
    iget v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    packed-switch v3, :pswitch_data_bc

    move-object v1, v2

    goto :goto_a2

    .line 117
    :pswitch_87
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    goto :goto_a2

    .line 114
    :pswitch_8e
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    goto :goto_a2

    .line 111
    :pswitch_95
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    goto :goto_a2

    .line 108
    :pswitch_9c
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    :goto_a2
    if-eqz v1, :cond_ac

    .line 121
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v1, p1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    :cond_ac
    :goto_ac
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    :cond_af
    return-void

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_25
        :pswitch_1e
        :pswitch_17
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_95
        :pswitch_8e
        :pswitch_87
    .end packed-switch
.end method

.method public resetResolutionNodes()V
    .registers 2

    .line 0
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/Helper;->resetResolutionNodes()V

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public resolve()V
    .registers 9

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const v1, 0x7f7fffff

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_a6

    return-void

    .line 147
    :pswitch_a
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    goto :goto_1e

    .line 143
    :pswitch_11
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    goto :goto_26

    .line 140
    :pswitch_18
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    :goto_1e
    const/4 v1, 0x0

    goto :goto_26

    .line 136
    :pswitch_20
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 153
    :goto_26
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v2, :cond_60

    .line 156
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 157
    iget v6, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3e

    return-void

    .line 160
    :cond_3e
    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_53

    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_48

    goto :goto_53

    .line 166
    :cond_48
    iget v6, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_5d

    .line 167
    iget v1, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 168
    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    goto :goto_5d

    .line 161
    :cond_53
    :goto_53
    iget v6, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpg-float v6, v6, v1

    if-gez v6, :cond_5d

    .line 162
    iget v1, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 163
    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 173
    :cond_60
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v2

    if-eqz v2, :cond_71

    .line 174
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v2

    iget-wide v4, v2, Landroid/support/constraint/solver/Metrics;->barrierConnectionResolved:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/solver/Metrics;->barrierConnectionResolved:J

    .line 180
    :cond_71
    iput-object v3, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 181
    iput v1, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 182
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 183
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    packed-switch v0, :pswitch_data_b2

    return-void

    .line 194
    :pswitch_7e
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_a5

    .line 191
    :pswitch_88
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_a5

    .line 188
    :pswitch_92
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_a5

    .line 185
    :pswitch_9c
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    :goto_a5
    return-void

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_20
        :pswitch_18
        :pswitch_11
        :pswitch_a
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_92
        :pswitch_88
        :pswitch_7e
    .end packed-switch
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .registers 2

    .line 0
    iput p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    return-void
.end method
