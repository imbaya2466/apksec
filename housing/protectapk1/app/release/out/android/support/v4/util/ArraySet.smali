.class public final Landroid/support/v4/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field private static sBaseCache:[Ljava/lang/Object;

.field private static sBaseCacheSize:I

.field private static sTwiceBaseCache:[Ljava/lang/Object;

.field private static sTwiceBaseCacheSize:I


# instance fields
.field private mArray:[Ljava/lang/Object;

.field private mCollections:Landroid/support/v4/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field private mHashes:[I

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 0
    new-array v1, v0, [I

    sput-object v1, Landroid/support/v4/util/ArraySet;->INT:[I

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 0
    invoke-direct {p0, v0}, Landroid/support/v4/util/ArraySet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    .line 250
    sget-object p1, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 251
    sget-object p1, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_11

    .line 253
    :cond_e
    invoke-direct {p0, p1}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    :goto_11
    const/4 p1, 0x0

    .line 255
    iput p1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/util/ArraySet;)V
    .registers 2
    .param p1    # Landroid/support/v4/util/ArraySet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;-><init>()V

    if-eqz p1, :cond_8

    .line 264
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->addAll(Landroid/support/v4/util/ArraySet;)V

    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;-><init>()V

    if-eqz p1, :cond_8

    .line 274
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/util/ArraySet;)I
    .registers 1

    .line 0
    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return p0
.end method

.method static synthetic access$100(Landroid/support/v4/util/ArraySet;)[Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    return-object p0
.end method

.method private allocArrays(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 164
    const/16 v3, 0x8

    if-ne p1, v3, :cond_32

    .line 0
    .line 165
    const-class v3, Landroid/support/v4/util/ArraySet;

    .line 166
    monitor-enter v3

    :try_start_a
    sget-object v4, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 167
    if-eqz v4, :cond_2d

    sget-object p1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, p1, v1

    .line 168
    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aget-object v4, p1, v2

    .line 169
    check-cast v4, [I

    check-cast v4, [I

    .line 170
    iput-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aput-object v0, p1, v2

    .line 175
    aput-object v0, p1, v1

    .line 177
    sget p1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr p1, v2

    sput p1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    monitor-exit v3

    return-void

    :cond_2d
    monitor-exit v3

    .line 179
    goto :goto_60

    :catchall_2f
    move-exception p1

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    .line 180
    throw p1

    :cond_32
    const/4 v3, 0x4

    if-ne p1, v3, :cond_60

    .line 181
    const-class v3, Landroid/support/v4/util/ArraySet;

    .line 182
    monitor-enter v3

    :try_start_38
    sget-object v4, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 183
    if-eqz v4, :cond_5b

    sget-object p1, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, p1, v1

    .line 184
    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aget-object v4, p1, v2

    .line 185
    check-cast v4, [I

    check-cast v4, [I

    .line 186
    iput-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aput-object v0, p1, v2

    .line 191
    aput-object v0, p1, v1

    .line 193
    sget p1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    sub-int/2addr p1, v2

    sput p1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    .line 196
    monitor-exit v3

    return-void

    :cond_5b
    monitor-exit v3

    goto :goto_60

    .line 197
    :catchall_5d
    move-exception p1

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_38 .. :try_end_5f} :catchall_5d

    throw p1

    :cond_60
    :goto_60
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 10

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2c

    .line 203
    const-class v0, Landroid/support/v4/util/ArraySet;

    monitor-enter v0

    .line 204
    :try_start_e
    sget v6, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_27

    .line 205
    sget-object v4, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 206
    aput-object p0, p1, v5

    sub-int/2addr p2, v5

    :goto_19
    if-lt p2, v2, :cond_20

    .line 208
    aput-object v1, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_19

    .line 210
    :cond_20
    sput-object p1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 211
    sget p0, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 217
    :cond_27
    monitor-exit v0

    goto :goto_51

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    throw p0

    .line 218
    :cond_2c
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_51

    .line 219
    const-class v0, Landroid/support/v4/util/ArraySet;

    monitor-enter v0

    .line 220
    :try_start_33
    sget v6, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    if-ge v6, v4, :cond_4c

    .line 221
    sget-object v4, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 222
    aput-object p0, p1, v5

    sub-int/2addr p2, v5

    :goto_3e
    if-lt p2, v2, :cond_45

    .line 224
    aput-object v1, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_3e

    .line 226
    :cond_45
    sput-object p1, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 227
    sget p0, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    .line 233
    :cond_4c
    monitor-exit v0

    goto :goto_51

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_4e

    throw p0

    :cond_51
    :goto_51
    return-void
.end method

.method private getCollection()Landroid/support/v4/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    if-nez v0, :cond_b

    .line 664
    new-instance v0, Landroid/support/v4/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroid/support/v4/util/ArraySet$1;-><init>(Landroid/support/v4/util/ArraySet;)V

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    .line 711
    :cond_b
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 7

    .line 0
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 92
    :cond_6
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_f

    return v1

    .line 100
    :cond_f
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v1, 0x1

    :goto_1c
    if-ge v2, v0, :cond_32

    .line 106
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_32

    .line 107
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_32
    add-int/lit8 v1, v1, -0x1

    :goto_34
    if-ltz v1, :cond_4a

    .line 111
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_4a

    .line 112
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    return v1

    :cond_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    :cond_4a
    not-int p1, v2

    return p1
.end method

.method private indexOfNull()I
    .registers 5

    .line 0
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 130
    :cond_6
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_10

    return v1

    .line 138
    :cond_10
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_17

    return v1

    :cond_17
    add-int/lit8 v2, v1, 0x1

    :goto_19
    if-ge v2, v0, :cond_2b

    .line 144
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2b

    .line 145
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_28

    return v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    :goto_2d
    if-ltz v1, :cond_3f

    .line 149
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v0, v0, v1

    if-nez v0, :cond_3f

    .line 150
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    :cond_3f
    not-int v0, v2

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 0
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->indexOfNull()I

    .line 364
    move-result v1

    const/4 v2, 0x0

    goto :goto_14

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 365
    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_14
    if-ltz v1, :cond_17

    .line 372
    return v0

    :cond_17
    not-int v1, v1

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v4, v4

    .line 373
    const/4 v5, 0x1

    if-lt v3, v4, :cond_51

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v4, 0x4

    const/16 v6, 0x8

    if-lt v3, v6, :cond_2e

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    shr-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_34

    :cond_2e
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lt v3, v4, :cond_34

    .line 378
    const/16 v4, 0x8

    .line 379
    :cond_34
    :goto_34
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 380
    iget-object v6, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 382
    invoke-direct {p0, v4}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 384
    array-length v4, v4

    if-lez v4, :cond_4c

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v7, v3

    .line 385
    invoke-static {v3, v0, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v7, v6

    .line 388
    invoke-static {v6, v0, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4c
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 391
    invoke-static {v3, v6, v0}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_51
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 395
    if-ge v1, v0, :cond_6b

    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    iget v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v6, v1

    .line 396
    invoke-static {v0, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v6, v1

    .line 399
    invoke-static {v0, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6b
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 400
    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 401
    aput-object p1, v0, v1

    iget p1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/2addr p1, v5

    iput p1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return v5
.end method

.method public addAll(Landroid/support/v4/util/ArraySet;)V
    .registers 6
    .param p1    # Landroid/support/v4/util/ArraySet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 0
    iget v0, p1, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 440
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->ensureCapacity(I)V

    .line 441
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_20

    if-lez v0, :cond_2c

    .line 443
    iget-object v1, p1, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    iget-object p1, p1, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    goto :goto_2c

    :cond_20
    :goto_20
    if-ge v2, v0, :cond_2c

    .line 449
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2c
    :goto_2c
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 0
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->ensureCapacity(I)V

    .line 751
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 752
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_f

    :cond_1f
    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .registers 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 0
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    .line 413
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 414
    :goto_a
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    if-lez v0, :cond_1d

    .line 417
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le v2, v1, :cond_1d

    .line 426
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1d
    add-int/lit8 v2, v0, 0x1

    .line 429
    iput v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 430
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aput v1, v2, v0

    .line 431
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v1, v0

    return-void

    .line 415
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Array is full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 4

    .line 0
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-eqz v0, :cond_18

    .line 284
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 285
    sget-object v0, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 286
    sget-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 287
    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    :cond_18
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 735
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 736
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public ensureCapacity(I)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_24

    .line 297
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 298
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 299
    invoke-direct {p0, p1}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 300
    iget p1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lez p1, :cond_1f

    .line 301
    iget-object p1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    :cond_1f
    iget p1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_24
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 0
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    .line 592
    const/4 v2, 0x0

    .line 593
    if-eqz v1, :cond_2c

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0}, Landroid/support/v4/util/ArraySet;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    .line 598
    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    const/4 v1, 0x0

    .line 599
    :goto_17
    :try_start_17
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v1, v3, :cond_29

    .line 600
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_23} :catch_2b
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_23} :catch_2a

    if-nez v3, :cond_26

    return v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_29
    return v0

    :catch_2a
    return v2

    :catch_2b
    return v2

    :cond_2c
    return v2
.end method

.method public hashCode()I
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 621
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v2, v1, :cond_e

    .line 622
    aget v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    return v3
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    .line 0
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->indexOfNull()I

    move-result p1

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    :goto_f
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->getCollection()Landroid/support/v4/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 464
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Landroid/support/v4/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 0
    iget v0, p1, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 539
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_12

    .line 541
    invoke-virtual {p1, v3}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 543
    :cond_12
    iget p1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-eq v1, p1, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 766
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 477
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1e

    .line 480
    iget-object p1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {p1, v1, v3}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 481
    sget-object p1, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 482
    sget-object p1, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 483
    iput v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    goto :goto_8d

    .line 485
    :cond_1e
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v1, v1

    const/16 v4, 0x8

    if-le v1, v4, :cond_67

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v1, v5, :cond_67

    .line 489
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-le v1, v4, :cond_38

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    shr-int/2addr v4, v3

    add-int/2addr v4, v1

    .line 493
    :cond_38
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 494
    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 495
    invoke-direct {p0, v4}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 497
    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lez p1, :cond_50

    .line 500
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v1, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v5, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    :cond_50
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge p1, v2, :cond_8d

    add-int/lit8 v2, p1, 0x1

    .line 508
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v5, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8d

    .line 512
    :cond_67
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 513
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge p1, v1, :cond_86

    .line 517
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    :cond_86
    iget-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    :cond_8d
    :goto_8d
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 0
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_5
    if-ltz v0, :cond_18

    .line 781
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 782
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_18
    return v2
.end method

.method public size()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 558
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 0
    array-length v0, p1

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_15

    .line 567
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 570
    :cond_15
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    array-length v0, p1

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-le v0, v1, :cond_27

    .line 572
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_27
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    .line 640
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 642
    :goto_18
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_35

    if-lez v1, :cond_23

    const-string v2, ", "

    .line 644
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_23
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2d

    .line 648
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_2d
    const-string v2, "(this Set)"

    .line 650
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_35
    const/16 v1, 0x7d

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
