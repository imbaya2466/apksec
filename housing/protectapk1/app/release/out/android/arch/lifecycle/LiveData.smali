.class public abstract Landroid/arch/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LiveData$AlwaysActiveObserver;,
        Landroid/arch/lifecycle/LiveData$ObserverWrapper;,
        Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field private mActiveCount:I

.field private volatile mData:Ljava/lang/Object;

.field private final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroid/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap<",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;>;"
        }
    .end annotation
.end field

.field private volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroid/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    .line 69
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    .line 78
    new-instance v0, Landroid/arch/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LiveData$1;-><init>(Landroid/arch/lifecycle/LiveData;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .line 0
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/arch/lifecycle/LiveData;)I
    .registers 1

    .line 0
    iget p0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    return p0
.end method

.method static synthetic access$302(Landroid/arch/lifecycle/LiveData;I)I
    .registers 2

    .line 0
    iput p1, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    return p1
.end method

.method static synthetic access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V

    return-void
.end method

.method private static assertMainThread(Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 435
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private considerNotify(Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .line 0
    iget-boolean v0, p1, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v0, :cond_5

    return-void

    .line 100
    :cond_5
    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    return-void

    .line 104
    :cond_10
    iget v0, p1, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iget v1, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    if-lt v0, v1, :cond_17

    return-void

    .line 107
    :cond_17
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    iput v0, p1, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 109
    iget-object p1, p1, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroid/arch/lifecycle/Observer;

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchingValue(Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V
    .registers 5
    .param p1    # Landroid/arch/lifecycle/LiveData$ObserverWrapper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 114
    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    return-void

    .line 117
    :cond_8
    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    :cond_a
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz p1, :cond_14

    .line 121
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->considerNotify(Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V

    const/4 p1, 0x0

    goto :goto_33

    .line 124
    :cond_14
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    .line 125
    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LiveData$ObserverWrapper;

    invoke-direct {p0, v2}, Landroid/arch/lifecycle/LiveData;->considerNotify(Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V

    .line 127
    iget-boolean v2, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v2, :cond_1a

    .line 132
    :cond_33
    :goto_33
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v1, :cond_a

    .line 133
    iput-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 295
    sget-object v1, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v0, v1, :cond_7

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method getVersion()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    return v0
.end method

.method public hasActiveObservers()Z
    .registers 2

    .line 0
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasObservers()Z
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
    .registers 5
    .param p1    # Landroid/arch/lifecycle/LifecycleOwner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/lifecycle/Observer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 0
    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_d

    return-void

    .line 170
    :cond_d
    new-instance v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 171
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p2, v0}, Landroid/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/arch/lifecycle/LiveData$ObserverWrapper;

    if-eqz p2, :cond_2b

    .line 172
    invoke-virtual {p2, p1}, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroid/arch/lifecycle/LifecycleOwner;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_2b

    .line 173
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    :goto_2b
    if-eqz p2, :cond_2e

    return-void

    .line 179
    :cond_2e
    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public observeForever(Landroid/arch/lifecycle/Observer;)V
    .registers 4
    .param p1    # Landroid/arch/lifecycle/Observer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 0
    new-instance v0, Landroid/arch/lifecycle/LiveData$AlwaysActiveObserver;

    invoke-direct {v0, p0, p1}, Landroid/arch/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    .line 199
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1, v0}, Landroid/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/LiveData$ObserverWrapper;

    if-eqz p1, :cond_1c

    .line 200
    instance-of v1, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_14

    goto :goto_1c

    .line 201
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    :goto_1c
    if-eqz p1, :cond_1f

    return-void

    :cond_1f
    const/4 p1, 0x1

    .line 207
    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/LiveData$AlwaysActiveObserver;->activeStateChanged(Z)V

    return-void
.end method

.method protected onActive()V
    .registers 1

    return-void
.end method

.method protected onInactive()V
    .registers 1

    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v2, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 261
    :goto_c
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 262
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1c

    if-nez v1, :cond_12

    return-void

    .line 266
    :cond_12
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object p1

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1c
    move-exception p1

    .line 262
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public removeObserver(Landroid/arch/lifecycle/Observer;)V
    .registers 3
    .param p1    # Landroid/arch/lifecycle/Observer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    .line 0
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroid/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/LiveData$ObserverWrapper;

    if-nez p1, :cond_10

    .line 222
    return-void

    :cond_10
    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    return-void
.end method

.method public removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V
    .registers 5
    .param p1    # Landroid/arch/lifecycle/LifecycleOwner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "removeObservers"

    .line 0
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 236
    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LiveData$ObserverWrapper;

    invoke-virtual {v2, p1}, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroid/arch/lifecycle/LifecycleOwner;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/Observer;

    invoke-virtual {p0, v1}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    goto :goto_b

    :cond_2d
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    .line 0
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 280
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    .line 281
    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 282
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V

    return-void
.end method
