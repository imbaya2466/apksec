.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPropertyAnimatorListenerApi14"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 4

    const/high16 v0, 0x7e000000

    .line 0
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 102
    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 103
    if-eqz v1, :cond_d

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 106
    :goto_e
    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_13

    .line 75
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 76
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput v1, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 78
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1d

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    if-nez v0, :cond_43

    .line 81
    :cond_1d
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2e

    .line 82
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 83
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 84
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2e
    const/high16 v0, 0x7e000000

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    instance-of v1, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v1, :cond_3b

    .line 89
    move-object v2, v0

    check-cast v2, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    :cond_3b
    if-eqz v2, :cond_40

    .line 92
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :cond_40
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    :cond_43
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    .line 0
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 54
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_f

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    :cond_f
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    .line 58
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 59
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 60
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_20
    const/high16 v0, 0x7e000000

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 64
    move-result-object v0

    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2d

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    :cond_2d
    if-eqz v1, :cond_32

    .line 68
    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_32
    return-void
.end method
