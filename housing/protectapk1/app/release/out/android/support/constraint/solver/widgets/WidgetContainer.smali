.class public Landroid/support/constraint/solver/widgets/WidgetContainer;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "WidgetContainer.java"


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(II)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public static getBounds(Ljava/util/ArrayList;)Landroid/support/constraint/solver/widgets/Rectangle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)",
            "Landroid/support/constraint/solver/widgets/Rectangle;"
        }
    .end annotation

    .line 0
    new-instance v0, Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    .line 206
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    .line 213
    :cond_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_19
    if-ge v3, v1, :cond_4c

    .line 214
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 215
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v8

    if-ge v8, v2, :cond_2b

    .line 216
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v2

    .line 218
    :cond_2b
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v8

    if-ge v8, v4, :cond_35

    .line 219
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v4

    .line 221
    :cond_35
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v8

    if-le v8, v5, :cond_3f

    .line 222
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v5

    .line 224
    :cond_3f
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v8

    if-le v8, v6, :cond_49

    .line 225
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v6

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_4c
    sub-int/2addr v5, v2

    sub-int/2addr v6, v4

    .line 228
    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    return-object v0
.end method


# virtual methods
.method public add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 74
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/WidgetContainer;

    .line 75
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/WidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 77
    :cond_14
    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    return-void
.end method

.method public varargs add([Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 5

    .line 0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    .line 88
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/WidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public findWidget(FF)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 11

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v0

    .line 147
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v1

    .line 148
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 149
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_28

    int-to-float v0, v2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_28

    int-to-float v0, v1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_28

    int-to-float v0, v3

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_28

    move-object v0, p0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    const/4 v1, 0x0

    .line 153
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_30
    if-ge v1, v2, :cond_71

    .line 154
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 155
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v4, :cond_47

    .line 156
    check-cast v3, Landroid/support/constraint/solver/widgets/WidgetContainer;

    invoke-virtual {v3, p1, p2}, Landroid/support/constraint/solver/widgets/WidgetContainer;->findWidget(FF)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-eqz v3, :cond_6e

    goto :goto_6d

    .line 161
    :cond_47
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v4

    .line 162
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v5

    .line 163
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    .line 164
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_6e

    int-to-float v4, v6

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_6e

    int-to-float v4, v5

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_6e

    int-to-float v4, v7

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_6e

    :goto_6d
    move-object v0, v3

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_71
    return-object v0
.end method

.method public findWidgets(IIII)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v1, Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    .line 185
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 186
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_14
    if-ge p2, p1, :cond_42

    .line 187
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 188
    new-instance p4, Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-direct {p4}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    .line 189
    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v2

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v3

    .line 190
    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 189
    invoke-virtual {p4, v2, v3, v4, v5}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 191
    invoke-virtual {v1, p4}, Landroid/support/constraint/solver/widgets/Rectangle;->intersects(Landroid/support/constraint/solver/widgets/Rectangle;)Z

    move-result p4

    if-eqz p4, :cond_3f

    .line 192
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_42
    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRootConstraintContainer()Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .registers 5

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 120
    instance-of v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_c

    .line 121
    move-object v1, p0

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-eqz v0, :cond_1c

    .line 125
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 126
    instance-of v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_1a

    .line 127
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    :cond_1a
    move-object v0, v2

    goto :goto_d

    :cond_1c
    return-object v1
.end method

.method public layout()V
    .registers 5

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->updateDrawPosition()V

    .line 278
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    .line 281
    :cond_8
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_25

    .line 283
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 284
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v3, :cond_22

    .line 285
    check-cast v2, Landroid/support/constraint/solver/widgets/WidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/WidgetContainer;->layout()V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_25
    return-void
.end method

.method public remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    return-void
.end method

.method public removeAllChildren()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    return-void
.end method

.method public resetSolverVariables(Landroid/support/constraint/solver/Cache;)V
    .registers 5

    .line 0
    invoke-super {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    .line 293
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 295
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 296
    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public setOffset(II)V
    .registers 6

    .line 0
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 246
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_a
    if-ge p2, p1, :cond_22

    .line 248
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 249
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getRootX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getRootY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_22
    return-void
.end method

.method public updateDrawPosition()V
    .registers 6

    .line 0
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 260
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    .line 263
    :cond_8
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2e

    .line 265
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 266
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 267
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v3, :cond_2b

    .line 268
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2e
    return-void
.end method
