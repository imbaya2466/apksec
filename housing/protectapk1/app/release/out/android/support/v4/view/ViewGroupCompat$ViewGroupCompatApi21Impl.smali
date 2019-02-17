.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;
.source "ViewGroupCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result p1

    return p1
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result p1

    return p1
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 3

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    return-void
.end method
