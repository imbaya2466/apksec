.class public abstract Landroid/support/constraint/ConstraintHelper;
.super Landroid/view/View;
.source "ConstraintHelper.java"


# instance fields
.field protected mCount:I

.field protected mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

.field protected mIds:[I

.field private mReferenceIds:Ljava/lang/String;

.field protected mUseViewMeasure:Z

.field protected myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    .line 40
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 65
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    .line 40
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 71
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x20

    .line 40
    new-array p3, p3, [I

    iput-object p3, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    const/4 p3, 0x0

    .line 57
    iput-boolean p3, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 77
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addID(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 0
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 174
    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 177
    move-result-object p1

    const/4 v0, 0x0

    .line 178
    const/4 v1, 0x0

    :try_start_e
    const-class v2, Landroid/support/constraint/R$id;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 179
    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_19

    goto :goto_1a

    .line 185
    :catch_19
    const/4 v2, 0x0

    :goto_1a
    if-nez v2, :cond_2e

    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    .line 186
    iget-object v4, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 185
    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-result v2

    :cond_2e
    if-nez v2, :cond_54

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/support/constraint/ConstraintLayout;

    .line 189
    if-eqz v3, :cond_54

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    .line 190
    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v1, p1}, Landroid/support/constraint/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    move-result-object v1

    if-eqz v1, :cond_54

    instance-of v3, v1, Ljava/lang/Integer;

    .line 192
    if-eqz v3, :cond_54

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 197
    move-result v2

    :cond_54
    if-eqz v2, :cond_5a

    invoke-virtual {p0, v2, v0}, Landroid/support/constraint/ConstraintHelper;->setTag(ILjava/lang/Object;)V

    .line 199
    goto :goto_75

    :cond_5a
    const-string v0, "ConstraintHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find id of \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    return-void
.end method

.method private setIds(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0x2c

    .line 0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 214
    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 217
    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;->addID(Ljava/lang/String;)V

    return-void

    :cond_15
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintHelper;->addID(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getReferencedIds()[I
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 6

    if-eqz p1, :cond_29

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 87
    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    .line 89
    :goto_11
    if-ge v1, v0, :cond_29

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 90
    move-result v2

    sget v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraint_referenced_ids:I

    .line 91
    if-ne v2, v3, :cond_26

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    iput-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_29
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 0
    iget-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    if-eqz v0, :cond_8

    .line 143
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_c

    :cond_8
    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1, p1}, Landroid/support/constraint/ConstraintHelper;->setMeasuredDimension(II)V

    :goto_c
    return-void
.end method

.method public setReferencedIds([I)V
    .registers 5

    const/4 v0, 0x0

    .line 0
    iput v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 112
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 113
    aget v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/constraint/ConstraintHelper;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 4

    .line 0
    iget p2, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    array-length v0, v0

    if-le p2, v0, :cond_16

    .line 123
    iget-object p2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    iput-object p2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 125
    :cond_16
    iget-object p2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    aput p1, p2, v0

    .line 126
    iget p1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    return-void
.end method

.method public updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2

    return-void
.end method

.method public updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2

    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 5

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 230
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 232
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_10

    return-void

    .line 235
    :cond_10
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Helper;->removeAllIds()V

    const/4 v0, 0x0

    .line 236
    :goto_16
    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_30

    .line 237
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 238
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 240
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/Helper;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_30
    return-void
.end method

.method public validateParams()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_5

    return-void

    .line 157
    :cond_5
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 158
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_13

    .line 159
    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 160
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :cond_13
    return-void
.end method
