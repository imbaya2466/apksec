.class Landroid/support/constraint/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_a

    .line 52
    .line 0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    move v3, v1

    .line 55
    const/4 v1, 0x0

    goto :goto_12

    .line 56
    :cond_a
    const/4 v1, 0x2

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    move-object v6, v3

    move v3, v2

    .line 60
    move-object v2, v6

    :goto_12
    if-ge v0, v3, :cond_30

    .line 63
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ChainHead;->define()V

    .line 64
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 65
    move-result v5

    if-eqz v5, :cond_2a

    invoke-static {p0, p1, p2, v1, v4}, Landroid/support/constraint/solver/widgets/Optimizer;->applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z

    .line 66
    move-result v5

    if-nez v5, :cond_2d

    invoke-static {p0, p1, p2, v1, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V

    .line 69
    goto :goto_2d

    :cond_2a
    invoke-static {p0, p1, p2, v1, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_30
    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V
    .registers 53

    move-object/from16 v0, p0

    .line 87
    move-object/from16 v9, p1

    .line 88
    move-object/from16 v1, p4

    .line 0
    .line 89
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 90
    iget-object v12, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 96
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 97
    iget-object v14, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 98
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 100
    iget v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, p2

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_21

    .line 106
    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    const/4 v5, 0x2

    if-nez p2, :cond_42

    iget v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 107
    if-nez v8, :cond_2b

    const/4 v8, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v8, 0x0

    :goto_2c
    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 108
    if-ne v6, v7, :cond_32

    const/4 v6, 0x1

    goto :goto_33

    :cond_32
    const/4 v6, 0x0

    :goto_33
    iget v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v7, v5, :cond_39

    :goto_37
    const/4 v5, 0x1

    goto :goto_3a

    :cond_39
    const/4 v5, 0x0

    :goto_3a
    move v7, v5

    move/from16 v18, v6

    .line 110
    move/from16 v17, v8

    move-object v6, v11

    const/4 v5, 0x0

    goto :goto_56

    :cond_42
    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 111
    if-nez v6, :cond_48

    const/4 v8, 0x1

    goto :goto_49

    :cond_48
    const/4 v8, 0x0

    :goto_49
    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 112
    const/4 v7, 0x1

    if-ne v6, v7, :cond_50

    const/4 v6, 0x1

    goto :goto_51

    :cond_50
    const/4 v6, 0x0

    :goto_51
    iget v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v7, v5, :cond_39

    .line 120
    goto :goto_37

    :goto_56
    const/16 v22, 0x0

    if-nez v5, :cond_135

    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    if-nez v4, :cond_66

    if-eqz v7, :cond_63

    .line 125
    goto :goto_66

    :cond_63
    const/16 v24, 0x4

    goto :goto_68

    :cond_66
    :goto_66
    const/16 v24, 0x1

    .line 127
    :goto_68
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    move/from16 v26, v3

    .line 128
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_7c

    if-eq v6, v11, :cond_7c

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int v25, v25, v3

    :cond_7c
    move/from16 v3, v25

    if-eqz v7, :cond_8a

    if-eq v6, v11, :cond_8a

    if-eq v6, v13, :cond_8a

    move-object/from16 v28, v2

    move/from16 v27, v5

    const/4 v5, 0x6

    goto :goto_9a

    :cond_8a
    if-eqz v17, :cond_94

    if-eqz v4, :cond_94

    move-object/from16 v28, v2

    move/from16 v27, v5

    const/4 v5, 0x4

    goto :goto_9a

    .line 139
    :cond_94
    move-object/from16 v28, v2

    move/from16 v27, v5

    move/from16 v5, v24

    .line 141
    :goto_9a
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_c7

    if-ne v6, v13, :cond_af

    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v29, v11

    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v30, v7

    const/4 v7, 0x5

    invoke-virtual {v9, v2, v11, v3, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 144
    goto :goto_bd

    :cond_af
    move/from16 v30, v7

    move-object/from16 v29, v11

    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 147
    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v11, 0x6

    invoke-virtual {v9, v2, v7, v3, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :goto_bd
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v9, v2, v7, v3, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_cb

    .line 152
    :cond_c7
    move/from16 v30, v7

    move-object/from16 v29, v11

    :goto_cb
    if-eqz v4, :cond_102

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_f1

    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 154
    aget-object v2, v2, p2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_f1

    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v5, 0x0

    .line 158
    const/4 v7, 0x5

    invoke-virtual {v9, v2, v3, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_f2

    :cond_f1
    const/4 v5, 0x0

    :goto_f2
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    .line 164
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v7, 0x6

    invoke-virtual {v9, v2, v3, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_102
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    .line 166
    aget-object v2, v2, v3

    .line 167
    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_123

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_123

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v3, v6, :cond_121

    goto :goto_123

    :cond_121
    move-object/from16 v22, v2

    :cond_123
    :goto_123
    if-eqz v22, :cond_12a

    move-object/from16 v6, v22

    move/from16 v5, v27

    goto :goto_12b

    :cond_12a
    const/4 v5, 0x1

    :goto_12b
    move/from16 v3, v26

    move-object/from16 v2, v28

    move-object/from16 v11, v29

    move/from16 v7, v30

    goto/16 :goto_56

    :cond_135
    move-object/from16 v28, v2

    move/from16 v26, v3

    .line 181
    move/from16 v30, v7

    move-object/from16 v29, v11

    if-eqz v14, :cond_161

    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    .line 182
    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 183
    if-eqz v2, :cond_161

    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 184
    aget-object v3, v6, v3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 183
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    const/4 v8, 0x5

    invoke-virtual {v9, v5, v3, v2, v8}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 190
    goto :goto_162

    :cond_161
    const/4 v8, 0x5

    :goto_162
    if-eqz v4, :cond_17e

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v2

    .line 192
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v4, v2

    .line 190
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    .line 196
    move-result v2

    const/4 v4, 0x6

    invoke-virtual {v9, v0, v3, v2, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 198
    :cond_17e
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_22e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 203
    move-result v2

    const/4 v7, 0x1

    if-le v2, v7, :cond_22e

    iget-boolean v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 204
    if-eqz v3, :cond_196

    iget-boolean v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v3, :cond_196

    iget v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v3, v3

    move/from16 v26, v3

    :cond_196
    const/4 v3, 0x0

    move-object/from16 v5, v22

    .line 208
    const/4 v4, 0x0

    const/16 v32, 0x0

    :goto_19c
    if-ge v4, v2, :cond_22e

    .line 209
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 212
    aget v11, v11, p2

    cmpg-float v16, v11, v3

    .line 213
    if-gez v16, :cond_1cc

    iget-boolean v11, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v11, :cond_1c6

    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v16, p3, 0x1

    aget-object v11, v11, v16

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v9, v11, v6, v7, v8}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto :goto_1e4

    :cond_1c6
    const/4 v8, 0x4

    const/high16 v7, 0x3f800000

    const/high16 v11, 0x3f800000

    .line 220
    goto :goto_1cd

    :cond_1cc
    const/4 v8, 0x4

    :goto_1cd
    cmpl-float v7, v11, v3

    if-nez v7, :cond_1e7

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v11, p3, 0x1

    aget-object v7, v7, v11

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v8, 0x6

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v6, v11, v8}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    :goto_1e4
    move-object/from16 v40, v0

    .line 226
    goto :goto_225

    :cond_1e7
    const/4 v7, 0x0

    const/4 v8, 0x6

    if-eqz v5, :cond_220

    .line 227
    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 228
    add-int/lit8 v15, p3, 0x1

    aget-object v5, v5, v15

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 229
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 230
    aget-object v8, v8, v15

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v40, v0

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    move-object/from16 v31, v0

    move/from16 v33, v26

    move/from16 v34, v11

    move-object/from16 v35, v3

    .line 231
    move-object/from16 v36, v5

    move-object/from16 v37, v7

    .line 233
    move-object/from16 v38, v8

    invoke-virtual/range {v31 .. v38}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_222

    :cond_220
    move-object/from16 v40, v0

    :goto_222
    move-object v5, v6

    move/from16 v32, v11

    :goto_225
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v40

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x5

    goto/16 :goto_19c

    :cond_22e
    if-eqz v13, :cond_29b

    .line 255
    if-eq v13, v14, :cond_234

    if-eqz v30, :cond_29b

    .line 256
    :cond_234
    move-object/from16 v11, v29

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 257
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_251

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 258
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_253

    :cond_251
    move-object/from16 v3, v22

    :goto_253
    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_265

    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 260
    move-object v5, v4

    goto :goto_267

    :cond_265
    move-object/from16 v5, v22

    .line 261
    :goto_267
    if-ne v13, v14, :cond_271

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    :cond_271
    if-eqz v3, :cond_508

    .line 266
    if-eqz v5, :cond_508

    if-nez p2, :cond_27d

    move-object/from16 v2, v28

    .line 268
    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    :goto_27b
    move v4, v2

    .line 270
    goto :goto_282

    :cond_27d
    move-object/from16 v2, v28

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 271
    goto :goto_27b

    :goto_282
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    .line 272
    move-result v6

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_508

    .line 279
    :cond_29b
    move-object/from16 v11, v29

    if-eqz v17, :cond_3bf

    if-eqz v13, :cond_3bf

    iget v0, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v0, :cond_2ae

    iget v0, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v1, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v0, v1, :cond_2ae

    const/16 v39, 0x1

    goto :goto_2b0

    .line 281
    :cond_2ae
    const/16 v39, 0x0

    :goto_2b0
    move-object v7, v13

    move-object v8, v7

    :goto_2b2
    if-eqz v8, :cond_506

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 282
    aget-object v0, v0, p2

    move-object v6, v0

    :goto_2b9
    if-eqz v6, :cond_2c8

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    .line 283
    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_2ca

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v6, v0, p2

    goto :goto_2b9

    :cond_2c8
    const/16 v5, 0x8

    :cond_2ca
    if-nez v6, :cond_2dd

    if-ne v8, v14, :cond_2cf

    goto :goto_2dd

    :cond_2cf
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v16, v8

    :goto_2d5
    const/16 v9, 0x8

    .line 286
    const/16 v21, 0x6

    const/16 v23, 0x4

    .line 287
    goto/16 :goto_3ae

    .line 288
    :cond_2dd
    :goto_2dd
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_2ec

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 290
    goto :goto_2ee

    :cond_2ec
    move-object/from16 v2, v22

    :goto_2ee
    if-eq v7, v8, :cond_2f9

    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 292
    goto :goto_310

    :cond_2f9
    if-ne v8, v13, :cond_310

    if-ne v7, v8, :cond_310

    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_30e

    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 298
    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_310

    .line 299
    :cond_30e
    move-object/from16 v2, v22

    :cond_310
    :goto_310
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    .line 302
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    if-eqz v6, :cond_336

    .line 303
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    .line 304
    move-object/from16 v41, v6

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v42, v5

    iget-object v5, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    :goto_330
    move-object/from16 v47, v6

    .line 306
    move-object v6, v5

    move-object/from16 v5, v47

    goto :goto_352

    :cond_336
    move-object/from16 v41, v6

    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 308
    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_345

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v43, v5

    .line 310
    goto :goto_349

    :cond_345
    move-object/from16 v43, v5

    move-object/from16 v6, v22

    :goto_349
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 314
    move-object/from16 v42, v43

    goto :goto_330

    :goto_352
    if-eqz v42, :cond_359

    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    .line 317
    move-result v15

    add-int/2addr v3, v15

    :cond_359
    if-eqz v7, :cond_367

    move/from16 v44, v3

    iget-object v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_369

    :cond_367
    move/from16 v44, v3

    :goto_369
    if-eqz v1, :cond_3a6

    if-eqz v2, :cond_3a6

    .line 322
    if-eqz v5, :cond_3a6

    if-eqz v6, :cond_3a6

    if-ne v8, v13, :cond_37b

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    .line 326
    move-result v0

    :cond_37b
    move v3, v0

    if-ne v8, v14, :cond_388

    iget-object v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    move/from16 v44, v0

    :cond_388
    if-eqz v39, :cond_38c

    const/4 v15, 0x6

    goto :goto_38d

    :cond_38c
    const/4 v15, 0x4

    :goto_38d
    const/high16 v4, 0x3f000000

    move-object/from16 v0, p1

    const/16 v16, 0x8

    move-object/from16 v19, v41

    move-object/from16 v20, v7

    move/from16 v7, v44

    move-object/from16 v16, v8

    const/16 v9, 0x8

    .line 332
    const/16 v21, 0x6

    const/16 v23, 0x4

    move v8, v15

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_3ae

    :cond_3a6
    move-object/from16 v20, v7

    .line 337
    move-object/from16 v16, v8

    move-object/from16 v19, v41

    goto/16 :goto_2d5

    :goto_3ae
    invoke-virtual/range {v16 .. v16}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_3b7

    move-object/from16 v7, v16

    goto :goto_3b9

    :cond_3b7
    move-object/from16 v7, v20

    :goto_3b9
    move-object/from16 v8, v19

    move-object/from16 v9, p1

    goto/16 :goto_2b2

    :cond_3bf
    const/16 v9, 0x8

    const/16 v21, 0x6

    .line 346
    const/16 v23, 0x4

    if-eqz v18, :cond_506

    if-eqz v13, :cond_506

    iget v0, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v0, :cond_3d6

    iget v0, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v1, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v0, v1, :cond_3d6

    const/16 v39, 0x1

    goto :goto_3d8

    .line 348
    :cond_3d6
    const/16 v39, 0x0

    :goto_3d8
    move-object v7, v13

    move-object v8, v7

    :goto_3da
    if-eqz v8, :cond_4a0

    .line 349
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    :goto_3e0
    if-eqz v0, :cond_3ed

    .line 350
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-ne v1, v9, :cond_3ed

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    goto :goto_3e0

    :cond_3ed
    if-eq v8, v13, :cond_48b

    if-eq v8, v14, :cond_48b

    if-eqz v0, :cond_48b

    .line 356
    if-ne v0, v14, :cond_3f8

    move-object/from16 v6, v22

    .line 357
    goto :goto_3f9

    :cond_3f8
    move-object v6, v0

    .line 358
    :goto_3f9
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 359
    if-eqz v2, :cond_407

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    :cond_407
    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 363
    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 364
    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v3

    .line 367
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 368
    if-eqz v6, :cond_436

    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 369
    aget-object v5, v5, p3

    iget-object v9, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v45, v6

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_42e

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_430

    :cond_42e
    move-object/from16 v6, v22

    :goto_430
    move-object/from16 v47, v9

    .line 371
    move-object v9, v6

    move-object/from16 v6, v47

    goto :goto_44b

    :cond_436
    move-object/from16 v45, v6

    iget-object v5, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 373
    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_443

    .line 375
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_445

    :cond_443
    move-object/from16 v6, v22

    :goto_445
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 379
    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    :goto_44b
    if-eqz v5, :cond_452

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    .line 382
    move-result v5

    add-int/2addr v4, v5

    :cond_452
    move v15, v4

    if-eqz v7, :cond_45e

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v0, v3

    :cond_45e
    move v3, v0

    if-eqz v39, :cond_464

    const/16 v16, 0x6

    goto :goto_466

    :cond_464
    const/16 v16, 0x4

    :goto_466
    if-eqz v1, :cond_482

    if-eqz v2, :cond_482

    if-eqz v6, :cond_482

    if-eqz v9, :cond_482

    const/high16 v4, 0x3f000000

    move-object/from16 v0, p1

    move-object v5, v6

    move-object/from16 v19, v45

    move-object v6, v9

    move-object v9, v7

    move v7, v15

    .line 389
    move-object v15, v8

    move-object/from16 v46, v9

    const/4 v9, 0x5

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_488

    :cond_482
    move-object/from16 v46, v7

    move-object v15, v8

    move-object/from16 v19, v45

    const/4 v9, 0x5

    :goto_488
    move-object/from16 v8, v19

    .line 394
    goto :goto_490

    :cond_48b
    move-object/from16 v46, v7

    move-object v15, v8

    const/4 v9, 0x5

    move-object v8, v0

    :goto_490
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_49a

    move-object v7, v15

    goto :goto_49c

    :cond_49a
    move-object/from16 v7, v46

    .line 399
    :goto_49c
    const/16 v9, 0x8

    goto/16 :goto_3da

    .line 400
    :cond_4a0
    const/4 v9, 0x5

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 401
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 402
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    .line 405
    iget-object v11, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_4f2

    if-eq v13, v14, :cond_4ca

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    move-object/from16 v8, p1

    invoke-virtual {v8, v2, v1, v0, v9}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 407
    :cond_4c8
    move-object v9, v8

    goto :goto_4f4

    :cond_4ca
    move-object/from16 v8, p1

    if-eqz v11, :cond_4c8

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 408
    const/high16 v5, 0x3f000000

    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    const/16 v16, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    .line 407
    move-object v5, v6

    move-object v6, v7

    move v7, v15

    move-object v9, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_4f4

    .line 412
    :cond_4f2
    move-object/from16 v9, p1

    :goto_4f4
    if-eqz v11, :cond_508

    if-eq v13, v14, :cond_508

    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_508

    :cond_506
    move-object/from16 v9, p1

    .line 419
    :cond_508
    :goto_508
    if-nez v17, :cond_50c

    if-eqz v18, :cond_56f

    .line 420
    :cond_50c
    if-eqz v13, :cond_56f

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 421
    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_521

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 422
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_523

    :cond_521
    move-object/from16 v3, v22

    :goto_523
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_52c

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 424
    goto :goto_52e

    :cond_52c
    move-object/from16 v4, v22

    .line 425
    :goto_52e
    if-eq v12, v14, :cond_53f

    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_53d

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 428
    goto :goto_53f

    :cond_53d
    move-object/from16 v4, v22

    :cond_53f
    :goto_53f
    move-object v5, v4

    .line 429
    if-ne v13, v14, :cond_54a

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    .line 433
    :cond_54a
    if-eqz v3, :cond_56f

    if-eqz v5, :cond_56f

    const/high16 v4, 0x3f000000

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    .line 438
    move-result v6

    if-nez v14, :cond_557

    goto :goto_558

    :cond_557
    move-object v12, v14

    :goto_558
    iget-object v7, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 439
    aget-object v2, v7, v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_56f
    return-void
.end method
