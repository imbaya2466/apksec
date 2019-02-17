.class Landroid/support/v4/view/ViewCompat$ViewCompatApi24Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi23Impl;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi23Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDragAndDrop(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->cancelDragAndDrop()V

    return-void
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    return-void
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    return-void
.end method

.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .registers 3

    if-eqz p2, :cond_7

    .line 0
    invoke-virtual {p2}, Landroid/support/v4/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    .line 1554
    :goto_8
    check-cast p2, Landroid/view/PointerIcon;

    invoke-virtual {p1, p2}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 6

    .line 0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    return-void
.end method
