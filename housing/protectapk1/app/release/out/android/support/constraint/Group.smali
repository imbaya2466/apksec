.class public Landroid/support/constraint/Group;
.super Landroid/support/constraint/ConstraintHelper;
.source "Group.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Landroid/support/constraint/Group;->mUseViewMeasure:Z

    return-void
.end method

.method public updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 4

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/Group;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 89
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 90
    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 9

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/Group;->getVisibility()I

    move-result v0

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_10

    .line 68
    invoke-virtual {p0}, Landroid/support/constraint/Group;->getElevation()F

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    const/4 v4, 0x0

    .line 70
    :goto_12
    iget v5, p0, Landroid/support/constraint/Group;->mCount:I

    if-ge v4, v5, :cond_31

    .line 71
    iget-object v5, p0, Landroid/support/constraint/Group;->mIds:[I

    aget v5, v5, v4

    .line 72
    invoke-virtual {p1, v5}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 74
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v6, v1, v3

    if-lez v6, :cond_2e

    .line 75
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_2e

    .line 76
    invoke-virtual {v5, v1}, Landroid/view/View;->setElevation(F)V

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_31
    return-void
.end method
