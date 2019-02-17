.class public Landroid/support/constraint/solver/widgets/ConstraintAnchor;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;,
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;,
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    }
.end annotation


# static fields
.field private static final ALLOW_BINARY:Z = false

.field public static final AUTO_CONSTRAINT_CREATOR:I = 0x2

.field public static final SCOUT_CREATOR:I = 0x1

.field private static final UNSET_GONE_MARGIN:I = -0x1

.field public static final USER_CREATOR:I


# instance fields
.field private mConnectionCreator:I

.field private mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

.field mGoneMargin:I

.field public mMargin:I

.field final mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

.field mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

.field private mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

.field mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field final mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-direct {v0, p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 76
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 77
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 78
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 87
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 88
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-void
.end method

.method private isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)Z"
        }
    .end annotation

    .line 0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 591
    :cond_8
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_13

    return v2

    .line 596
    :cond_13
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object p1

    .line 597
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_42

    .line 598
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 599
    invoke-virtual {v4, p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isSimilarDimensionConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 600
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_3f

    return v2

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_42
    return v1
.end method


# virtual methods
.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z
    .registers 10

    .line 0
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result p1

    return p1
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z
    .registers 11

    .line 0
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result p1

    return p1
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    if-nez p1, :cond_14

    const/4 p1, 0x0

    .line 0
    .line 213
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 214
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 215
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 p1, 0x2

    .line 218
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return v0

    :cond_14
    if-nez p6, :cond_1d

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    .line 221
    move-result p6

    if-nez p6, :cond_1d

    .line 223
    return v1

    :cond_1d
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 225
    if-lez p2, :cond_24

    .line 227
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 228
    goto :goto_26

    :cond_24
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 229
    :goto_26
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    iput-object p4, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput p5, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return v0
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z
    .registers 12

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 0
    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result p1

    return p1
.end method

.method public getConnectionCreator()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return v0
.end method

.method public getConnectionType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    return-object v0
.end method

.method public getMargin()I
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    return v0

    .line 128
    :cond_c
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_22

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 129
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_22

    .line 130
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    return v0

    .line 132
    :cond_22
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    return v0
.end method

.method public final getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 3

    .line 0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 633
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 624
    :pswitch_19
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 621
    :pswitch_1e
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 618
    :pswitch_23
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 615
    :pswitch_28
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    :pswitch_2d
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getPriorityLevel()I
    .registers 4

    .line 0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_26

    .line 468
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1b
    return v1

    :pswitch_1c
    return v1

    :pswitch_1d
    return v1

    :pswitch_1e
    const/4 v0, 0x1

    return v0

    :pswitch_20
    return v2

    :pswitch_21
    return v2

    :pswitch_22
    return v2

    :pswitch_23
    return v2

    :pswitch_24
    return v2

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    return-object v0
.end method

.method public getSnapPriorityLevel()I
    .registers 4

    .line 0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_26

    .line 446
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1b
    return v2

    :pswitch_1c
    return v1

    :pswitch_1d
    return v2

    :pswitch_1e
    const/4 v0, 0x2

    return v0

    :pswitch_20
    return v2

    :pswitch_21
    return v2

    :pswitch_22
    return v1

    :pswitch_23
    return v1

    :pswitch_24
    const/4 v0, 0x3

    return v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public getSolverVariable()Landroid/support/constraint/solver/SolverVariable;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    return-object v0
.end method

.method public getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    return-object v0
.end method

.method public getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .registers 5

    .line 0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 567
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    .line 570
    :cond_d
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_19

    return v2

    .line 574
    :cond_19
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    if-ne p1, v0, :cond_20

    return v2

    :cond_20
    return v1
.end method

.method public isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result p1

    return p1
.end method

.method public isSideAnchor()Z
    .registers 3

    .line 0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 329
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_19
    const/4 v0, 0x1

    return v0

    :pswitch_1b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public isSimilarDimensionConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 5

    .line 0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    .line 341
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    return v1

    .line 344
    :cond_a
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_4e

    .line 362
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_24
    return v2

    .line 357
    :pswitch_25
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_37

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_37

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_37

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :cond_37
    :goto_37
    return v1

    .line 351
    :pswitch_38
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_46

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_46

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_45

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :cond_46
    :goto_46
    return v1

    .line 346
    :pswitch_47
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_38
        :pswitch_38
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_38
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method

.method public isSnapCompatibleWith(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    return v2

    .line 482
    :cond_8
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_12

    return v3

    .line 485
    :cond_12
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    const/4 v4, 0x7

    packed-switch v0, :pswitch_data_a4

    .line 533
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 522
    :pswitch_2e
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_ba

    return v2

    :pswitch_3e
    return v3

    :pswitch_3f
    return v3

    .line 501
    :pswitch_40
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_c2

    return v2

    :pswitch_50
    return v3

    :pswitch_51
    return v3

    .line 515
    :pswitch_52
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_65

    if-eq p1, v1, :cond_64

    return v2

    :cond_64
    return v3

    :cond_65
    return v3

    .line 508
    :pswitch_66
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_79

    if-eq p1, v1, :cond_78

    return v2

    :cond_78
    return v3

    :cond_79
    return v3

    .line 494
    :pswitch_7a
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8d

    if-eq p1, v4, :cond_8c

    return v2

    :cond_8c
    return v3

    :cond_8d
    return v3

    .line 487
    :pswitch_8e
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a1

    if-eq p1, v4, :cond_a0

    return v2

    :cond_a0
    return v3

    :cond_a1
    return v3

    :pswitch_a2
    return v2

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_8e
        :pswitch_7a
        :pswitch_66
        :pswitch_52
        :pswitch_a2
        :pswitch_40
        :pswitch_2e
        :pswitch_a2
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x4
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x2
        :pswitch_51
        :pswitch_50
    .end packed-switch
.end method

.method public isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 0
    .line 272
    :cond_4
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 273
    const/4 v3, 0x1

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 274
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_28

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result p1

    .line 279
    if-nez p1, :cond_28

    :cond_27
    return v0

    :cond_28
    return v3

    :cond_29
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v2, v2, v4

    .line 307
    packed-switch v2, :pswitch_data_90

    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 295
    throw p1

    :pswitch_42
    return v0

    :pswitch_43
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_4e

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_4c

    .line 296
    goto :goto_4e

    :cond_4c
    const/4 v2, 0x0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v2, 0x1

    :goto_4f
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    instance-of p1, p1, Landroid/support/constraint/solver/widgets/Guideline;

    .line 297
    if-eqz p1, :cond_61

    if-nez v2, :cond_60

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, p1, :cond_5e

    goto :goto_60

    .line 287
    :cond_5e
    const/4 v2, 0x0

    goto :goto_61

    :cond_60
    :goto_60
    const/4 v2, 0x1

    :cond_61
    :goto_61
    return v2

    :pswitch_62
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_6d

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_6b

    .line 288
    goto :goto_6d

    :cond_6b
    const/4 v2, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 v2, 0x1

    :goto_6e
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    instance-of p1, p1, Landroid/support/constraint/solver/widgets/Guideline;

    .line 289
    if-eqz p1, :cond_80

    if-nez v2, :cond_7f

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, p1, :cond_7d

    goto :goto_7f

    .line 282
    :cond_7d
    const/4 v2, 0x0

    goto :goto_80

    :cond_7f
    :goto_7f
    const/4 v2, 0x1

    :cond_80
    :goto_80
    return v2

    :pswitch_81
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, p1, :cond_8e

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, p1, :cond_8e

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, p1, :cond_8e

    const/4 v0, 0x1

    :cond_8e
    return v0

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_81
        :pswitch_62
        :pswitch_62
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method public isVerticalAnchor()Z
    .registers 3

    .line 0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 414
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_19
    const/4 v0, 0x1

    return v0

    :pswitch_1b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 0
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 177
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 178
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 179
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 180
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 181
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->reset()V

    return-void
.end method

.method public resetSolverVariable(Landroid/support/constraint/solver/Cache;)V
    .registers 4

    .line 0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    if-nez p1, :cond_f

    .line 102
    new-instance p1, Landroid/support/constraint/solver/SolverVariable;

    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/support/constraint/solver/SolverVariable;-><init>(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_14

    .line 104
    :cond_f
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    :goto_14
    return-void
.end method

.method public setConnectionCreator(I)V
    .registers 2

    .line 0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return-void
.end method

.method public setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V
    .registers 2

    .line 0
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    return-void
.end method

.method public setGoneMargin(I)V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 391
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    :cond_8
    return-void
.end method

.method public setMargin(I)V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 381
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    :cond_8
    return-void
.end method

.method public setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 371
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    :cond_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
