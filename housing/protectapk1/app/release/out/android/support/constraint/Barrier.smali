.class public Landroid/support/constraint/Barrier;
.super Landroid/support/constraint/ConstraintHelper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final END:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final START:I = 0x5

.field public static final TOP:I = 0x2


# instance fields
.field private mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 116
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 121
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 126
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public allowsGoneWidget()Z
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Barrier;->allowsGoneWidget()Z

    move-result v0

    return v0
.end method

.method public getType()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 8

    .line 0
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 182
    new-instance v0, Landroid/support/constraint/solver/widgets/Barrier;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Barrier;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz p1, :cond_3f

    .line 184
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_3f

    .line 187
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 188
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v3, v4, :cond_2e

    .line 189
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/constraint/Barrier;->setType(I)V

    goto :goto_3c

    .line 190
    :cond_2e
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v3, v4, :cond_3c

    .line 191
    iget-object v4, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 195
    :cond_3f
    iget-object p1, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    iput-object p1, p0, Landroid/support/constraint/Barrier;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    .line 196
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->validateParams()V

    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    return-void
.end method

.method public setType(I)V
    .registers 7

    .line 0
    iput p1, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    .line 145
    iput p1, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    .line 146
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    if-ge p1, v4, :cond_1c

    .line 149
    iget p1, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne p1, v1, :cond_15

    .line 150
    iput v2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_4a

    .line 151
    :cond_15
    iget p1, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne p1, v0, :cond_4a

    .line 152
    iput v3, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_4a

    .line 156
    :cond_1c
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne v3, p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    if-eqz p1, :cond_3d

    .line 159
    iget p1, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne p1, v1, :cond_36

    .line 160
    iput v3, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_4a

    .line 161
    :cond_36
    iget p1, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne p1, v0, :cond_4a

    .line 162
    iput v2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_4a

    .line 165
    :cond_3d
    iget p1, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne p1, v1, :cond_44

    .line 166
    iput v2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_4a

    .line 167
    :cond_44
    iget p1, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne p1, v0, :cond_4a

    .line 168
    iput v3, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    .line 172
    :cond_4a
    :goto_4a
    iget-object p1, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    iget v0, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/Barrier;->setBarrierType(I)V

    return-void
.end method