.class Landroid/support/v4/view/ViewCompat$ViewCompatApi16Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1099
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p1

    return p1
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    return p1
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    return p1
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result p1

    return p1
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p1

    return p1
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    .line 0
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 6

    .line 0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 5

    .line 0
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    return-void
.end method

.method public setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    const/4 p2, 0x2

    .line 0
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method
