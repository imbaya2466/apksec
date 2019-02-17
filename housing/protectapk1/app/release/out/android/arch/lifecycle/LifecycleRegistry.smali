.class public Landroid/arch/lifecycle/LifecycleRegistry;
.super Landroid/arch/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleRegistry"


# instance fields
.field private mAddingObserverCounter:I

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEventOccurred:Z

.field private mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/FastSafeIterableMap<",
            "Landroid/arch/lifecycle/LifecycleObserver;",
            "Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Landroid/arch/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1    # Landroid/arch/lifecycle/LifecycleOwner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    invoke-direct {p0}, Landroid/arch/lifecycle/Lifecycle;-><init>()V

    .line 59
    new-instance v0, Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-direct {v0}, Landroid/arch/core/internal/FastSafeIterableMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 76
    iput-boolean v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 77
    iput-boolean v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 99
    sget-object p1, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    return-void
.end method

.method private backwardPass(Landroid/arch/lifecycle/LifecycleOwner;)V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    .line 300
    invoke-virtual {v0}, Landroid/arch/core/internal/FastSafeIterableMap;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 301
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_4a

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 304
    :goto_1c
    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    .line 305
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 306
    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroid/arch/lifecycle/LifecycleRegistry;->downEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    .line 307
    invoke-static {v3}, Landroid/arch/lifecycle/LifecycleRegistry;->getStateAfter(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/LifecycleRegistry;->pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 308
    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 309
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_1c

    :cond_4a
    return-void
.end method

.method private calculateTargetState(Landroid/arch/lifecycle/LifecycleObserver;)Landroid/arch/lifecycle/Lifecycle$State;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Landroid/arch/core/internal/FastSafeIterableMap;->ceil(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 153
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object p1, p1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_13

    :cond_12
    move-object p1, v0

    .line 154
    :goto_13
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle$State;

    .line 156
    :cond_2b
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v1, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->min(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/arch/lifecycle/LifecycleRegistry;->min(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    return-object p1
.end method

.method private static downEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .registers 4

    .line 0
    sget-object v0, Landroid/arch/lifecycle/LifecycleRegistry$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :pswitch_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 261
    :pswitch_28
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 259
    :pswitch_2b
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 257
    :pswitch_2e
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 255
    :pswitch_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method private forwardPass(Landroid/arch/lifecycle/LifecycleOwner;)V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    .line 285
    invoke-virtual {v0}, Landroid/arch/core/internal/FastSafeIterableMap;->iteratorWithAdditions()Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v0

    .line 286
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_48

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 289
    :goto_1c
    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-boolean v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    .line 290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 291
    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/LifecycleRegistry;->pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 292
    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroid/arch/lifecycle/LifecycleRegistry;->upEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 293
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_1c

    :cond_48
    return-void
.end method

.method static getStateAfter(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;
    .registers 4

    .line 0
    sget-object v0, Landroid/arch/lifecycle/LifecycleRegistry$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_22
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 243
    :pswitch_25
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->RESUMED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 241
    :pswitch_28
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 238
    :pswitch_2b
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_28
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method private isSynced()Z
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 145
    :cond_a
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v0, v0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    .line 146
    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2}, Landroid/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_2d

    .line 147
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method static min(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;
    .registers 3
    .param p0    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_9

    .line 0
    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_9

    move-object p0, p1

    :cond_9
    return-object p0
.end method

.method private moveToState(Landroid/arch/lifecycle/Lifecycle$State;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_5

    return-void

    .line 130
    :cond_5
    iput-object p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    .line 131
    iget-boolean p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    iget p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-eqz p1, :cond_11

    goto :goto_1a

    .line 136
    :cond_11
    iput-boolean v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 137
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->sync()V

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    return-void

    .line 132
    :cond_1a
    :goto_1a
    iput-boolean v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void
.end method

.method private popParentState()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sync()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LifecycleOwner;

    if-nez v0, :cond_12

    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_12
    :goto_12
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->isSynced()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_54

    .line 324
    iput-boolean v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 326
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2}, Landroid/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_34

    .line 327
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LifecycleRegistry;->backwardPass(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 329
    :cond_34
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v1}, Landroid/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v1

    .line 330
    iget-boolean v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_12

    if-eqz v1, :cond_12

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_12

    .line 332
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LifecycleRegistry;->forwardPass(Landroid/arch/lifecycle/LifecycleOwner;)V

    goto :goto_12

    .line 335
    :cond_54
    iput-boolean v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void
.end method

.method private static upEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .registers 4

    .line 0
    sget-object v0, Landroid/arch/lifecycle/LifecycleRegistry$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 276
    :pswitch_28
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 274
    :pswitch_2b
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 272
    :pswitch_2e
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_22
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .registers 8
    .param p1    # Landroid/arch/lifecycle/LifecycleObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_9

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_b

    :cond_9
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    .line 162
    :goto_b
    new-instance v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    invoke-direct {v1, p1, v0}, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;-><init>(Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 163
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1, v1}, Landroid/arch/core/internal/FastSafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    if-eqz v0, :cond_1b

    return-void

    .line 168
    :cond_1b
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LifecycleOwner;

    if-nez v0, :cond_26

    return-void

    .line 174
    :cond_26
    iget v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    const/4 v3, 0x1

    if-nez v2, :cond_32

    iget-boolean v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-eqz v2, :cond_30

    goto :goto_32

    :cond_30
    const/4 v2, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v2, 0x1

    .line 175
    :goto_33
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->calculateTargetState(Landroid/arch/lifecycle/LifecycleObserver;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    .line 176
    iget v5, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 177
    :goto_3c
    iget-object v5, v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_62

    iget-object v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    .line 178
    invoke-virtual {v4, p1}, Landroid/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 179
    iget-object v4, v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/LifecycleRegistry;->pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 180
    iget-object v4, v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v4}, Landroid/arch/lifecycle/LifecycleRegistry;->upEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 181
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->popParentState()V

    .line 183
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->calculateTargetState(Landroid/arch/lifecycle/LifecycleObserver;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    goto :goto_3c

    :cond_62
    if-nez v2, :cond_67

    .line 188
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->sync()V

    .line 190
    :cond_67
    iget p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    return-void
.end method

.method public getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public getObserverCount()I
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v0

    return v0
.end method

.method public handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .registers 2
    .param p1    # Landroid/arch/lifecycle/Lifecycle$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    invoke-static {p1}, Landroid/arch/lifecycle/LifecycleRegistry;->getStateAfter(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->moveToState(Landroid/arch/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public markState(Landroid/arch/lifecycle/Lifecycle$State;)V
    .registers 2
    .param p1    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->moveToState(Landroid/arch/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .registers 3
    .param p1    # Landroid/arch/lifecycle/LifecycleObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Landroid/arch/core/internal/FastSafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
