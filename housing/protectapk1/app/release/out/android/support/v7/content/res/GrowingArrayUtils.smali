.class final Landroid/support/v7/content/res/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .registers 5

    add-int/lit8 v0, p1, 0x1

    .line 0
    array-length v1, p0

    .line 60
    if-le v0, v1, :cond_10

    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [I

    .line 61
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    move-object p0, v0

    :cond_10
    aput p2, p0, p1

    return-object p0
.end method

.method public static append([JIJ)[J
    .registers 6

    add-int/lit8 v0, p1, 0x1

    .line 0
    array-length v1, p0

    .line 75
    if-le v0, v1, :cond_10

    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [J

    .line 76
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    move-object p0, v0

    :cond_10
    aput-wide p2, p0, p1

    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 0
    array-length v1, p0

    .line 44
    if-le v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 45
    move-result-object v0

    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    .line 44
    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 46
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    move-object p0, v0

    :cond_1c
    aput-object p2, p0, p1

    return-object p0
.end method

.method public static append([ZIZ)[Z
    .registers 5

    add-int/lit8 v0, p1, 0x1

    .line 0
    array-length v1, p0

    .line 90
    if-le v0, v1, :cond_10

    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [Z

    .line 91
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    move-object p0, v0

    :cond_10
    aput-boolean p2, p0, p1

    return-object p0
.end method

.method public static growSize(I)I
    .registers 2

    const/4 v0, 0x4

    if-gt p0, v0, :cond_6

    const/16 p0, 0x8

    goto :goto_8

    :cond_6
    mul-int/lit8 p0, p0, 0x2

    :goto_8
    return p0
.end method

.method public static insert([IIII)[I
    .registers 6

    add-int/lit8 v0, p1, 0x1

    .line 0
    array-length v1, p0

    if-gt v0, v1, :cond_e

    add-int/lit8 v0, p2, 0x1

    .line 133
    sub-int/2addr p1, p2

    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aput p3, p0, p2

    .line 138
    return-object p0

    :cond_e
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result p1

    new-array p1, p1, [I

    .line 139
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    aput p3, p1, p2

    .line 141
    add-int/lit8 p3, p2, 0x1

    array-length v0, p0

    sub-int/2addr v0, p2

    invoke-static {p0, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static insert([JIIJ)[J
    .registers 7

    add-int/lit8 v0, p1, 0x1

    .line 0
    array-length v1, p0

    if-gt v0, v1, :cond_e

    add-int/lit8 v0, p2, 0x1

    .line 152
    sub-int/2addr p1, p2

    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    aput-wide p3, p0, p2

    .line 157
    return-object p0

    :cond_e
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result p1

    new-array p1, p1, [J

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    aput-wide p3, p1, p2

    .line 160
    add-int/lit8 p3, p2, 0x1

    array-length p4, p0

    sub-int/2addr p4, p2

    invoke-static {p0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 0
    array-length v1, p0

    if-gt v0, v1, :cond_e

    add-int/lit8 v0, p2, 0x1

    .line 113
    sub-int/2addr p1, p2

    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    aput-object p3, p0, p2

    .line 118
    return-object p0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 119
    move-result-object v0

    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    .line 118
    move-result p1

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    aput-object p3, p1, p2

    .line 122
    add-int/lit8 p3, p2, 0x1

    array-length v0, p0

    sub-int/2addr v0, p2

    invoke-static {p0, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static insert([ZIIZ)[Z
    .registers 6

    add-int/lit8 v0, p1, 0x1

    .line 0
    array-length v1, p0

    if-gt v0, v1, :cond_e

    add-int/lit8 v0, p2, 0x1

    .line 171
    sub-int/2addr p1, p2

    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    aput-boolean p3, p0, p2

    .line 176
    return-object p0

    :cond_e
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result p1

    new-array p1, p1, [Z

    .line 177
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    aput-boolean p3, p1, p2

    .line 179
    add-int/lit8 p3, p2, 0x1

    array-length v0, p0

    sub-int/2addr v0, p2

    invoke-static {p0, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
