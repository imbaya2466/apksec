.class abstract Landroid/arch/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ObserverWrapper"
.end annotation


# instance fields
.field mActive:Z

.field mLastVersion:I

.field final mObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 385
    iput p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 388
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .registers 6

    .line 0
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 406
    :cond_5
    iput-boolean p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    .line 407
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 408
    :goto_13
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v2

    iget-boolean v3, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, -0x1

    :goto_1f
    add-int/2addr v2, v0

    # setter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {v1, v2}, Landroid/arch/lifecycle/LiveData;->access$302(Landroid/arch/lifecycle/LiveData;I)I

    if-eqz p1, :cond_2e

    .line 409
    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz p1, :cond_2e

    .line 410
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->onActive()V

    .line 412
    :cond_2e
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result p1

    if-nez p1, :cond_3f

    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez p1, :cond_3f

    .line 413
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->onInactive()V

    .line 415
    :cond_3f
    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz p1, :cond_48

    .line 416
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    # invokes: Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V
    invoke-static {p1, p0}, Landroid/arch/lifecycle/LiveData;->access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V

    :cond_48
    return-void
.end method

.method detachObserver()V
    .registers 1

    return-void
.end method

.method isAttachedTo(Landroid/arch/lifecycle/LifecycleOwner;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method abstract shouldBeActive()Z
.end method
