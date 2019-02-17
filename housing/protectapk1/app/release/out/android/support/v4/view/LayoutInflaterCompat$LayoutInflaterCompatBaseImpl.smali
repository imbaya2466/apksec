.class Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LayoutInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutInflaterCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
    .registers 3

    .line 0
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object p1

    .line 117
    instance-of v0, p1, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;

    if-eqz v0, :cond_d

    .line 118
    check-cast p1, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;

    iget-object p1, p1, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroid/support/v4/view/LayoutInflaterFactory;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .registers 4

    if-eqz p2, :cond_8

    .line 0
    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v0, p2}, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 97
    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-void
.end method

.method public setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 5

    .line 0
    invoke-virtual {p1, p2}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 103
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 104
    instance-of v1, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_11

    .line 107
    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p1, v0}, Landroid/support/v4/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_14

    .line 110
    :cond_11
    invoke-static {p1, p2}, Landroid/support/v4/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :goto_14
    return-void
.end method
