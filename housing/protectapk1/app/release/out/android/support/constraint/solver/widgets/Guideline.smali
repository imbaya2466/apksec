.class public Landroid/support/constraint/solver/widgets/Guideline;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNWON:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mHead:Landroid/support/constraint/solver/widgets/Rectangle;

.field private mHeadSize:I

.field private mIsPositionRelaxed:Z

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 0
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    const/high16 v0, -0x40800000

    .line 38
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 40
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 42
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 44
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 45
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    .line 47
    new-instance v1, Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    .line 51
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    :goto_31
    if-ge v0, v1, :cond_3c

    .line 55
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3c
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 11

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v0, :cond_9

    return-void

    .line 254
    :cond_9
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 255
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 256
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    .line 257
    :goto_28
    iget v6, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v6, :cond_49

    .line 258
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 259
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 260
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v4

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_48

    const/4 v3, 0x1

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    .line 262
    :cond_49
    :goto_49
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_69

    .line 263
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 264
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 265
    iget v6, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {p1, v0, v1, v6, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-eqz v3, :cond_ac

    .line 267
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_ac

    .line 269
    :cond_69
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v6, :cond_8a

    .line 270
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 271
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 272
    iget v6, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-eqz v3, :cond_ac

    .line 274
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 275
    invoke-virtual {p1, v2, v0, v5, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_ac

    .line 277
    :cond_8a
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v3, -0x40800000

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_ac

    .line 278
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 279
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 280
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 281
    iget v7, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    iget-boolean v8, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    move-object v3, p1

    .line 282
    invoke-static/range {v3 .. v8}, Landroid/support/constraint/solver/LinearSystem;->createRowDimensionPercent(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 281
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    :cond_ac
    :goto_ac
    return-void
.end method

.method public allowedInBarrier()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public analyze(I)V
    .registers 8

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 217
    :cond_7
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v0

    const/high16 v1, -0x40800000

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_b8

    .line 218
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 219
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 220
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v0, v2, :cond_58

    .line 221
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 222
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_15a

    .line 223
    :cond_58
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v2, :cond_82

    .line 224
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 225
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_15a

    .line 226
    :cond_82
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15a

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_15a

    .line 227
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 228
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 229
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_15a

    .line 232
    :cond_b8
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 233
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 234
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v0, v2, :cond_fd

    .line 235
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 236
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_15a

    .line 237
    :cond_fd
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v2, :cond_126

    .line 238
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 239
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_15a

    .line 240
    :cond_126
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15a

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_15a

    .line 241
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 242
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 243
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    :cond_15a
    :goto_15a
    return-void
.end method

.method public cyclePosition()V
    .registers 4

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 358
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativePercentPosition()V

    goto :goto_1c

    .line 359
    :cond_9
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15

    .line 361
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeEndPosition()V

    goto :goto_1c

    .line 362
    :cond_15
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v1, :cond_1c

    .line 364
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeBeginPosition()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public getAnchor()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 4

    .line 0
    sget-object v0, Landroid/support/constraint/solver/widgets/Guideline$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    goto :goto_1d

    :pswitch_c
    const/4 p1, 0x0

    return-object p1

    .line 147
    :pswitch_e
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v0, :cond_1d

    .line 148
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 140
    :pswitch_15
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 141
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 159
    :cond_1d
    :goto_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHead()Landroid/support/constraint/solver/widgets/Rectangle;
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawX()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawY()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 80
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v0

    if-nez v0, :cond_40

    .line 81
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawX()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 82
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawY()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v4, v4, 0x2

    .line 81
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 85
    :cond_40
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    return v0
.end method

.method public getRelativeBegin()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    return v0
.end method

.method public getRelativeBehaviour()I
    .registers 3

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_a
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    return v0

    .line 71
    :cond_11
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v1, :cond_17

    const/4 v0, 0x2

    return v0

    :cond_17
    return v1
.end method

.method public getRelativeEnd()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    return v0
.end method

.method public getRelativePercent()F
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "Guideline"

    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v0

    .line 341
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_c

    .line 342
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v0

    .line 344
    :cond_c
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    return-void
.end method

.method inferRelativeEndPosition()V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 349
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_1e

    .line 350
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 352
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    return-void
.end method

.method inferRelativePercentPosition()V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 333
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_22

    .line 334
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 336
    :cond_22
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    return-void
.end method

.method public setDrawOrigin(II)V
    .registers 7

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/high16 v1, -0x40800000

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_39

    .line 309
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOffsetX:I

    sub-int/2addr p1, p2

    .line 310
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq p2, v2, :cond_13

    .line 311
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_69

    .line 312
    :cond_13
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq p2, v2, :cond_24

    .line 313
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_69

    .line 314
    :cond_24
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_69

    int-to-float p1, p1

    .line 315
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 316
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_69

    .line 319
    :cond_39
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOffsetY:I

    sub-int/2addr p2, p1

    .line 320
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq p1, v2, :cond_44

    .line 321
    invoke-virtual {p0, p2}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_69

    .line 322
    :cond_44
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq p1, v2, :cond_55

    .line 323
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_69

    .line 324
    :cond_55
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_69

    int-to-float p1, p2

    .line 325
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 326
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    :cond_69
    :goto_69
    return-void
.end method

.method public setGuideBegin(I)V
    .registers 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    .line 182
    const/high16 v1, -0x40800000

    .line 183
    .line 0
    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_b
    return-void
.end method

.method public setGuideEnd(I)V
    .registers 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    .line 190
    const/high16 v1, -0x40800000

    .line 191
    .line 0
    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_b
    return-void
.end method

.method public setGuidePercent(F)V
    .registers 3

    const/high16 v0, -0x40800000

    cmpl-float v0, p1, v0

    .line 174
    if-lez v0, :cond_d

    .line 175
    .line 0
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_d
    return-void
.end method

.method public setGuidePercent(I)V
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000

    div-float/2addr p1, v0

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    return-void
.end method

.method public setMinimumPosition(I)V
    .registers 2

    .line 0
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 92
    :cond_5
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 93
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 95
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_1a

    .line 97
    :cond_16
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 99
    :goto_1a
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_25
    if-ge v0, p1, :cond_30

    .line 102
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_30
    return-void
.end method

.method public setPositionRelaxed(Z)V
    .registers 3

    .line 0
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 132
    :cond_5
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 5

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 292
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    .line 293
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    .line 294
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 295
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 296
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    .line 297
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    goto :goto_3c

    .line 299
    :cond_28
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 300
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 301
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    .line 302
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    :goto_3c
    return-void
.end method
