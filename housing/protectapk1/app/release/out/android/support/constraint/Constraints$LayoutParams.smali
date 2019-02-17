.class public Landroid/support/constraint/Constraints$LayoutParams;
.super Landroid/support/constraint/ConstraintLayout$LayoutParams;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public elevation:F

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    const/high16 p1, 0x3f800000

    .line 67
    iput p1, p0, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    const/4 p2, 0x0

    .line 68
    iput-boolean p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->applyElevation:Z

    const/4 p2, 0x0

    .line 69
    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    .line 70
    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    .line 71
    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput p1, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput p1, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    .line 78
    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    .line 79
    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationZ:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000

    .line 67
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->applyElevation:Z

    const/4 v2, 0x0

    .line 69
    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationZ:F

    .line 91
    sget-object v0, Landroid/support/constraint/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_2b
    if-ge v1, p2, :cond_d7

    .line 94
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 95
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_alpha:I

    if-ne v0, v2, :cond_3f

    .line 96
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    goto/16 :goto_d3

    .line 97
    :cond_3f
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_elevation:I

    if-ne v0, v2, :cond_50

    .line 98
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->applyElevation:Z

    goto/16 :goto_d3

    .line 100
    :cond_50
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationX:I

    if-ne v0, v2, :cond_5e

    .line 101
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    goto/16 :goto_d3

    .line 102
    :cond_5e
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationY:I

    if-ne v0, v2, :cond_6c

    .line 103
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    goto/16 :goto_d3

    .line 104
    :cond_6c
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotation:I

    if-ne v0, v2, :cond_79

    .line 105
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    goto :goto_d3

    .line 106
    :cond_79
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleX:I

    if-ne v0, v2, :cond_86

    .line 107
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    goto :goto_d3

    .line 108
    :cond_86
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleY:I

    if-ne v0, v2, :cond_93

    .line 109
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    goto :goto_d3

    .line 110
    :cond_93
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v2, :cond_a0

    .line 111
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    goto :goto_d3

    .line 112
    :cond_a0
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v2, :cond_ad

    .line 113
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    goto :goto_d3

    .line 114
    :cond_ad
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationX:I

    if-ne v0, v2, :cond_ba

    .line 115
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    goto :goto_d3

    .line 116
    :cond_ba
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationY:I

    if-ne v0, v2, :cond_c7

    .line 117
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    goto :goto_d3

    .line 118
    :cond_c7
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationZ:I

    if-ne v0, v2, :cond_d3

    .line 119
    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationZ:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    :cond_d3
    :goto_d3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b

    :cond_d7
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/Constraints$LayoutParams;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    const/high16 p1, 0x3f800000

    .line 67
    iput p1, p0, Landroid/support/constraint/Constraints$LayoutParams;->alpha:F

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->applyElevation:Z

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput p1, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput p1, p0, Landroid/support/constraint/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->translationZ:F

    return-void
.end method
