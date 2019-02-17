.class Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi21Impl"
.end annotation


# static fields
.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;-><init>()V

    return-void
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 0
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_b

    .line 1499
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 1501
    :cond_b
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1f

    .line 1503
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1504
    sget-object v1, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1506
    :cond_1f
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-object v0
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .line 0
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowInsets;

    .line 1428
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    if-eq p1, p2, :cond_11

    .line 1430
    new-instance p2, Landroid/view/WindowInsets;

    invoke-direct {p2, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 1432
    :cond_11
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 0
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 0
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 6

    .line 0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 7

    .line 0
    invoke-virtual/range {p1 .. p6}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    return-object p1
.end method

.method public getElevation(Landroid/view/View;)F
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p1

    return p1
.end method

.method public getZ(Landroid/view/View;)F
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result p1

    return p1
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    return p1
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .registers 9

    .line 0
    invoke-static {}, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1450
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1451
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_39

    .line 1452
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 1453
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1456
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1457
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1456
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    .line 1461
    :goto_3a
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;->offsetLeftAndRight(Landroid/view/View;I)V

    if-eqz v2, :cond_5a

    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1466
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 1465
    invoke-virtual {v0, p2, v2, v3, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 1467
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_5a
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .registers 9

    .line 0
    invoke-static {}, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1476
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1477
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_39

    .line 1478
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 1479
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1482
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1483
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1482
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    .line 1487
    :goto_3a
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;->offsetTopAndBottom(Landroid/view/View;I)V

    if-eqz v2, :cond_5a

    .line 1491
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1492
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 1491
    invoke-virtual {v0, p2, v2, v3, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 1493
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_5a
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .line 0
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowInsets;

    .line 1418
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    if-eq p1, p2, :cond_11

    .line 1420
    new-instance p2, Landroid/view/WindowInsets;

    invoke-direct {p2, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 1422
    :cond_11
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1376
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p2, v0, :cond_31

    .line 1379
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1380
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1381
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz p2, :cond_31

    if-eqz v0, :cond_31

    .line 1383
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1384
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1386
    :cond_2e
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1395
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p2, v0, :cond_31

    .line 1398
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1399
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1400
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz p2, :cond_31

    if-eqz v0, :cond_31

    .line 1402
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1403
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1405
    :cond_2e
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 4

    if-nez p2, :cond_7

    const/4 p2, 0x0

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1303
    return-void

    :cond_7
    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl$1;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl$1;-><init>(Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->setZ(F)V

    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    return-void
.end method
