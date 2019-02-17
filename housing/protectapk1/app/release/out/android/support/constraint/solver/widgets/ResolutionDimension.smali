.class public Landroid/support/constraint/solver/widgets/ResolutionDimension;
.super Landroid/support/constraint/solver/widgets/ResolutionNode;
.source "ResolutionDimension.java"


# instance fields
.field value:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ResolutionNode;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionDimension;->value:F

    return-void
.end method


# virtual methods
.method public remove()V
    .registers 2

    const/4 v0, 0x2

    .line 0
    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionDimension;->state:I

    return-void
.end method

.method public reset()V
    .registers 2

    .line 0
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/ResolutionNode;->reset()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionDimension;->value:F

    return-void
.end method

.method public resolve(I)V
    .registers 4

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionDimension;->state:I

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionDimension;->value:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    :cond_b
    int-to-float p1, p1

    .line 32
    iput p1, p0, Landroid/support/constraint/solver/widgets/ResolutionDimension;->value:F

    .line 33
    iget p1, p0, Landroid/support/constraint/solver/widgets/ResolutionDimension;->state:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 34
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 36
    :cond_16
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->didResolve()V

    :cond_19
    return-void
.end method
