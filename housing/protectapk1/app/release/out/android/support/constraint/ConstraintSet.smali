.class public Landroid/support/constraint/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintSet$Constraint;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x2b

.field private static final BARRIER_ALLOWS_GONE_WIDGETS:I = 0x4a

.field private static final BARRIER_DIRECTION:I = 0x48

.field private static final BARRIER_TYPE:I = 0x1

.field public static final BASELINE:I = 0x5

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field public static final BOTTOM:I = 0x4

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field private static final CHAIN_USE_RTL:I = 0x47

.field private static final CIRCLE:I = 0x3d

.field private static final CIRCLE_ANGLE:I = 0x3f

.field private static final CIRCLE_RADIUS:I = 0x3e

.field private static final CONSTRAINT_REFERENCED_IDS:I = 0x49

.field private static final DEBUG:Z = false

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final ELEVATION:I = 0x2c

.field public static final END:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field public static final GONE:I = 0x8

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final HEIGHT_DEFAULT:I = 0x37

.field private static final HEIGHT_MAX:I = 0x39

.field private static final HEIGHT_MIN:I = 0x3b

.field private static final HEIGHT_PERCENT:I = 0x46

.field public static final HORIZONTAL:I = 0x0

.field private static final HORIZONTAL_BIAS:I = 0x14

.field public static final HORIZONTAL_GUIDELINE:I = 0x0

.field private static final HORIZONTAL_STYLE:I = 0x29

.field private static final HORIZONTAL_WEIGHT:I = 0x27

.field public static final INVISIBLE:I = 0x4

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_VISIBILITY:I = 0x16

.field private static final LAYOUT_WIDTH:I = 0x17

.field public static final LEFT:I = 0x1

.field private static final LEFT_MARGIN:I = 0x18

.field private static final LEFT_TO_LEFT:I = 0x19

.field private static final LEFT_TO_RIGHT:I = 0x1a

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field private static final ORIENTATION:I = 0x1b

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x1c

.field private static final RIGHT_TO_LEFT:I = 0x1d

.field private static final RIGHT_TO_RIGHT:I = 0x1e

.field private static final ROTATION:I = 0x3c

.field private static final ROTATION_X:I = 0x2d

.field private static final ROTATION_Y:I = 0x2e

.field private static final SCALE_X:I = 0x2f

.field private static final SCALE_Y:I = 0x30

.field public static final START:I = 0x6

.field private static final START_MARGIN:I = 0x1f

.field private static final START_TO_END:I = 0x20

.field private static final START_TO_START:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ConstraintSet"

.field public static final TOP:I = 0x3

.field private static final TOP_MARGIN:I = 0x22

.field private static final TOP_TO_BOTTOM:I = 0x23

.field private static final TOP_TO_TOP:I = 0x24

.field private static final TRANSFORM_PIVOT_X:I = 0x31

.field private static final TRANSFORM_PIVOT_Y:I = 0x32

.field private static final TRANSLATION_X:I = 0x33

.field private static final TRANSLATION_Y:I = 0x34

.field private static final TRANSLATION_Z:I = 0x35

.field public static final UNSET:I = -0x1

.field private static final UNUSED:I = 0x4b

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_BIAS:I = 0x25

.field public static final VERTICAL_GUIDELINE:I = 0x1

.field private static final VERTICAL_STYLE:I = 0x2a

.field private static final VERTICAL_WEIGHT:I = 0x28

.field private static final VIEW_ID:I = 0x26

.field private static final VISIBILITY_FLAGS:[I

.field public static final VISIBLE:I = 0x0

.field private static final WIDTH_DEFAULT:I = 0x36

.field private static final WIDTH_MAX:I = 0x38

.field private static final WIDTH_MIN:I = 0x3a

.field private static final WIDTH_PERCENT:I = 0x45

.field public static final WRAP_CONTENT:I = -0x2

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    .line 0
    new-array v1, v0, [I

    fill-array-data v1, :array_29a

    sput-object v1, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 200
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    .line 274
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 289
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 290
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 292
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 294
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 295
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 300
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 301
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 302
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 324
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 341
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 345
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 348
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 349
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 350
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_constraint_referenced_ids:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_29a
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    return-void
.end method

.method private convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I
    .registers 12

    const-string v0, ","

    .line 0
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2444
    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2445
    move-result-object v0

    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 2447
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    array-length v5, p2

    .line 2448
    if-ge v3, v5, :cond_64

    .line 2449
    aget-object v5, p2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2452
    move-result-object v5

    .line 2453
    :try_start_19
    const-class v6, Landroid/support/constraint/R$id;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2454
    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_25

    goto :goto_26

    :catch_25
    const/4 v6, 0x0

    .line 2460
    :goto_26
    if-nez v6, :cond_36

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2461
    const-string v7, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2460
    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2464
    :cond_36
    if-nez v6, :cond_5c

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/support/constraint/ConstraintLayout;

    .line 2465
    if-eqz v7, :cond_5c

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 2466
    check-cast v7, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v7, v2, v5}, Landroid/support/constraint/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2467
    if-eqz v5, :cond_5c

    instance-of v7, v5, Ljava/lang/Integer;

    .line 2468
    if-eqz v7, :cond_5c

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2471
    :cond_5c
    add-int/lit8 v5, v4, 0x1

    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    .line 2473
    move v4, v5

    goto :goto_10

    :cond_64
    array-length p1, p2

    .line 2474
    if-eq v4, p1, :cond_6b

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_6b
    return-object v1
.end method

.method private createHorizontalChain(IIII[I[FIII)V
    .registers 22

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 0
    array-length v0, v7

    .line 1074
    const/4 v1, 0x2

    if-lt v0, v1, :cond_79

    if-eqz v8, :cond_18

    .line 1075
    array-length v0, v8

    array-length v1, v7

    if-ne v0, v1, :cond_10

    goto :goto_18

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1078
    throw v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    if-eqz v8, :cond_25

    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1080
    move-result-object v1

    aget v2, v8, v0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    :cond_25
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1081
    move-result-object v1

    move/from16 v2, p7

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p8

    move v3, p1

    move v4, p2

    .line 1082
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1083
    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 1084
    :goto_3c
    array-length v0, v7

    if-ge v10, v0, :cond_6a

    aget v0, v7, v10

    aget v1, v7, v10

    add-int/lit8 v11, v10, -0x1

    aget v3, v7, v11

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p8

    .line 1085
    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    aget v1, v7, v11

    aget v3, v7, v10

    move/from16 v2, p9

    move/from16 v4, p8

    .line 1087
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    if-eqz v8, :cond_67

    aget v0, v7, v10

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, v8, v10

    .line 1091
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    :cond_67
    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    :cond_6a
    array-length v0, v7

    sub-int/2addr v0, v9

    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p9

    move v3, p3

    move/from16 v4, p4

    .line 1072
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    return-void

    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;
    .registers 5

    .line 0
    new-instance v0, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    .line 2190
    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2191
    invoke-direct {p0, v0, p1}, Landroid/support/constraint/ConstraintSet;->populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 2192
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private get(I)Landroid/support/constraint/ConstraintSet$Constraint;
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2111
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    :cond_1b
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet$Constraint;

    return-object p1
.end method

.method private static lookupID(Landroid/content/res/TypedArray;II)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    .line 2183
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_b
    return p2
.end method

.method private populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .registers 9

    .line 0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2df

    .line 2199
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 2238
    sget-object v3, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_2e0

    packed-switch v3, :pswitch_data_34e

    const/high16 v4, 0x3f800000

    packed-switch v3, :pswitch_data_35a

    const-string v3, "ConstraintSet"

    .line 2436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2436
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2db

    :pswitch_46
    const-string v3, "ConstraintSet"

    .line 2432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2433
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2432
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2db

    .line 2429
    :pswitch_70
    iget-boolean v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    goto/16 :goto_2db

    .line 2426
    :pswitch_7a
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    goto/16 :goto_2db

    .line 2423
    :pswitch_82
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    goto/16 :goto_2db

    :pswitch_8c
    const-string v2, "ConstraintSet"

    const-string v3, "CURRENTLY UNSUPPORTED"

    .line 2419
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2db

    .line 2416
    :pswitch_95
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->heightPercent:F

    goto/16 :goto_2db

    .line 2413
    :pswitch_9d
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->widthPercent:F

    goto/16 :goto_2db

    .line 2303
    :pswitch_a5
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleAngle:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleAngle:F

    goto/16 :goto_2db

    .line 2300
    :pswitch_af
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleRadius:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleRadius:I

    goto/16 :goto_2db

    .line 2297
    :pswitch_b9
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleConstraint:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleConstraint:I

    goto/16 :goto_2db

    .line 2365
    :pswitch_c3
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    goto/16 :goto_2db

    .line 2392
    :pswitch_cd
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    goto/16 :goto_2db

    .line 2389
    :pswitch_d7
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    goto/16 :goto_2db

    .line 2386
    :pswitch_e1
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    goto/16 :goto_2db

    .line 2383
    :pswitch_eb
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    goto/16 :goto_2db

    .line 2380
    :pswitch_f5
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    goto/16 :goto_2db

    .line 2377
    :pswitch_ff
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    goto/16 :goto_2db

    .line 2374
    :pswitch_109
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    goto/16 :goto_2db

    .line 2371
    :pswitch_113
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    goto/16 :goto_2db

    .line 2368
    :pswitch_11d
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    goto/16 :goto_2db

    :pswitch_127
    const/4 v3, 0x1

    .line 2361
    iput-boolean v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 2362
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    goto/16 :goto_2db

    .line 2358
    :pswitch_134
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    goto/16 :goto_2db

    .line 2401
    :pswitch_13e
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    goto/16 :goto_2db

    .line 2404
    :pswitch_148
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    goto/16 :goto_2db

    .line 2395
    :pswitch_152
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    goto/16 :goto_2db

    .line 2398
    :pswitch_15c
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    goto/16 :goto_2db

    .line 2407
    :pswitch_166
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    goto/16 :goto_2db

    .line 2327
    :pswitch_170
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    goto/16 :goto_2db

    .line 2252
    :pswitch_17a
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    goto/16 :goto_2db

    .line 2255
    :pswitch_184
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_2db

    .line 2342
    :pswitch_18e
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    goto/16 :goto_2db

    .line 2288
    :pswitch_198
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_2db

    .line 2285
    :pswitch_1a2
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_2db

    .line 2336
    :pswitch_1ac
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    goto/16 :goto_2db

    .line 2249
    :pswitch_1b6
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto/16 :goto_2db

    .line 2246
    :pswitch_1c0
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    goto/16 :goto_2db

    .line 2333
    :pswitch_1ca
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    goto/16 :goto_2db

    .line 2282
    :pswitch_1d4
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    goto/16 :goto_2db

    .line 2243
    :pswitch_1de
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto/16 :goto_2db

    .line 2240
    :pswitch_1e8
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    goto/16 :goto_2db

    .line 2330
    :pswitch_1f2
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    goto/16 :goto_2db

    .line 2348
    :pswitch_1fc
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    goto/16 :goto_2db

    .line 2354
    :pswitch_206
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 2355
    sget-object v2, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    aget v2, v2, v3

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    goto/16 :goto_2db

    .line 2351
    :pswitch_218
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    goto/16 :goto_2db

    .line 2324
    :pswitch_222
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    goto/16 :goto_2db

    .line 2279
    :pswitch_22c
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    goto/16 :goto_2db

    .line 2276
    :pswitch_236
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    goto/16 :goto_2db

    .line 2273
    :pswitch_240
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    goto/16 :goto_2db

    .line 2309
    :pswitch_24a
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    goto/16 :goto_2db

    .line 2318
    :pswitch_254
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    goto/16 :goto_2db

    .line 2312
    :pswitch_25e
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    goto/16 :goto_2db

    .line 2306
    :pswitch_268
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    goto/16 :goto_2db

    .line 2321
    :pswitch_272
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    goto :goto_2db

    .line 2315
    :pswitch_27b
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    goto :goto_2db

    .line 2291
    :pswitch_284
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto :goto_2db

    .line 2294
    :pswitch_28d
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    goto :goto_2db

    .line 2339
    :pswitch_296
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    goto :goto_2db

    .line 2270
    :pswitch_29f
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    goto :goto_2db

    .line 2267
    :pswitch_2a8
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    goto :goto_2db

    .line 2410
    :pswitch_2b1
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    goto :goto_2db

    .line 2258
    :pswitch_2b8
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    goto :goto_2db

    .line 2261
    :pswitch_2c1
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    goto :goto_2db

    .line 2345
    :pswitch_2ca
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    goto :goto_2db

    .line 2264
    :pswitch_2d3
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    :goto_2db
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_2df
    return-void

    :pswitch_data_2e0
    .packed-switch 0x1
        :pswitch_2d3
        :pswitch_2ca
        :pswitch_2c1
        :pswitch_2b8
        :pswitch_2b1
        :pswitch_2a8
        :pswitch_29f
        :pswitch_296
        :pswitch_28d
        :pswitch_284
        :pswitch_27b
        :pswitch_272
        :pswitch_268
        :pswitch_25e
        :pswitch_254
        :pswitch_24a
        :pswitch_240
        :pswitch_236
        :pswitch_22c
        :pswitch_222
        :pswitch_218
        :pswitch_206
        :pswitch_1fc
        :pswitch_1f2
        :pswitch_1e8
        :pswitch_1de
        :pswitch_1d4
        :pswitch_1ca
        :pswitch_1c0
        :pswitch_1b6
        :pswitch_1ac
        :pswitch_1a2
        :pswitch_198
        :pswitch_18e
        :pswitch_184
        :pswitch_17a
        :pswitch_170
        :pswitch_166
        :pswitch_15c
        :pswitch_152
        :pswitch_148
        :pswitch_13e
        :pswitch_134
        :pswitch_127
        :pswitch_11d
        :pswitch_113
        :pswitch_109
        :pswitch_ff
        :pswitch_f5
        :pswitch_eb
        :pswitch_e1
        :pswitch_d7
        :pswitch_cd
    .end packed-switch

    :pswitch_data_34e
    .packed-switch 0x3c
        :pswitch_c3
        :pswitch_b9
        :pswitch_af
        :pswitch_a5
    .end packed-switch

    :pswitch_data_35a
    .packed-switch 0x45
        :pswitch_9d
        :pswitch_95
        :pswitch_8c
        :pswitch_82
        :pswitch_7a
        :pswitch_70
        :pswitch_46
    .end packed-switch
.end method

.method private sideToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1c

    const-string p1, "undefined"

    return-object p1

    :pswitch_6
    const-string p1, "end"

    return-object p1

    :pswitch_9
    const-string p1, "start"

    return-object p1

    :pswitch_c
    const-string p1, "baseline"

    return-object p1

    :pswitch_f
    const-string p1, "bottom"

    return-object p1

    :pswitch_12
    const-string p1, "top"

    return-object p1

    :pswitch_15
    const-string p1, "right"

    return-object p1

    :pswitch_18
    const-string p1, "left"

    return-object p1

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(III)V
    .registers 12

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez p2, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x2

    :goto_7
    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 0
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1910
    const/4 v2, 0x2

    if-nez p3, :cond_14

    const/4 v4, 0x2

    goto :goto_15

    :cond_14
    const/4 v4, 0x1

    :goto_15
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1912
    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    if-eqz p2, :cond_27

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    .line 1915
    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_27
    if-eqz p3, :cond_32

    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_32
    return-void
.end method

.method public addToHorizontalChainRTL(III)V
    .registers 12

    const/4 v6, 0x7

    const/4 v7, 0x6

    if-nez p2, :cond_6

    const/4 v4, 0x6

    goto :goto_7

    :cond_6
    const/4 v4, 0x7

    :goto_7
    const/4 v5, 0x0

    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 0
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1928
    const/4 v2, 0x7

    if-nez p3, :cond_14

    const/4 v4, 0x7

    goto :goto_15

    :cond_14
    const/4 v4, 0x6

    :goto_15
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1930
    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    if-eqz p2, :cond_27

    const/4 v2, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    .line 1933
    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_27
    if-eqz p3, :cond_32

    const/4 v2, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_32
    return-void
.end method

.method public addToVerticalChain(III)V
    .registers 18

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-nez p2, :cond_6

    const/4 v4, 0x3

    goto :goto_7

    :cond_6
    const/4 v4, 0x4

    :goto_7
    const/4 v5, 0x0

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move/from16 v3, p2

    .line 0
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1946
    const/4 v10, 0x4

    if-nez p3, :cond_15

    const/4 v12, 0x4

    goto :goto_16

    :cond_15
    const/4 v12, 0x3

    :goto_16
    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v11, p3

    .line 1948
    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    if-eqz p2, :cond_2a

    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p2

    .line 1951
    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_2a
    if-eqz p2, :cond_36

    const/4 v2, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_36
    return-void
.end method

.method public applyTo(Landroid/support/constraint/ConstraintLayout;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    const/4 v0, 0x0

    .line 790
    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout;->setConstraintSet(Landroid/support/constraint/ConstraintSet;)V

    return-void
.end method

.method applyToInternal(Landroid/support/constraint/ConstraintLayout;)V
    .registers 11

    .line 0
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 798
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_10
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_f0

    .line 801
    invoke-virtual {p1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 802
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v3, :cond_e8

    .line 806
    iget-object v7, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 807
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v7, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 809
    instance-of v8, v5, Landroid/support/constraint/Barrier;

    if-eqz v8, :cond_43

    .line 810
    iput v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    .line 812
    :cond_43
    iget v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v8, v3, :cond_77

    .line 813
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v3, v4, :cond_4c

    goto :goto_77

    .line 815
    :cond_4c
    move-object v3, v5

    check-cast v3, Landroid/support/constraint/Barrier;

    .line 816
    invoke-virtual {v3, v6}, Landroid/support/constraint/Barrier;->setId(I)V

    .line 817
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/Barrier;->setType(I)V

    .line 818
    iget-boolean v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v3, v4}, Landroid/support/constraint/Barrier;->setAllowsGoneWidget(Z)V

    .line 819
    iget-object v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    if-eqz v4, :cond_66

    .line 820
    iget-object v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v3, v4}, Landroid/support/constraint/Barrier;->setReferencedIds([I)V

    goto :goto_77

    .line 821
    :cond_66
    iget-object v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    if-eqz v4, :cond_77

    .line 822
    iget-object v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/support/constraint/ConstraintSet;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 824
    iget-object v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v3, v4}, Landroid/support/constraint/Barrier;->setReferencedIds([I)V

    .line 830
    :cond_77
    :goto_77
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 831
    invoke-virtual {v7, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 832
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 834
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_e4

    .line 835
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 836
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    .line 837
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    .line 838
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    .line 839
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 840
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 841
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 842
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    .line 844
    :cond_b9
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_c6

    .line 845
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    .line 847
    :cond_c6
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 848
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 849
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_e4

    .line 850
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 851
    iget-boolean v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v3, :cond_e4

    .line 852
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    :cond_e4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 804
    :cond_e8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 858
    :cond_f0
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f4
    :goto_f4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 859
    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 860
    iget v5, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v5, v3, :cond_14e

    .line 861
    iget v5, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v5, v4, :cond_111

    goto :goto_14e

    .line 863
    :cond_111
    new-instance v5, Landroid/support/constraint/Barrier;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/constraint/Barrier;-><init>(Landroid/content/Context;)V

    .line 864
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/constraint/Barrier;->setId(I)V

    .line 865
    iget-object v6, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    if-eqz v6, :cond_12b

    .line 866
    iget-object v6, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v5, v6}, Landroid/support/constraint/Barrier;->setReferencedIds([I)V

    goto :goto_13c

    .line 867
    :cond_12b
    iget-object v6, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    if-eqz v6, :cond_13c

    .line 868
    iget-object v6, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Landroid/support/constraint/ConstraintSet;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 870
    iget-object v6, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v5, v6}, Landroid/support/constraint/Barrier;->setReferencedIds([I)V

    .line 872
    :cond_13c
    :goto_13c
    iget v6, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/Barrier;->setType(I)V

    .line 874
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v6

    .line 875
    invoke-virtual {v5}, Landroid/support/constraint/Barrier;->validateParams()V

    .line 876
    invoke-virtual {v2, v6}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 877
    invoke-virtual {p1, v5, v6}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    :cond_14e
    :goto_14e
    iget-boolean v5, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    if-eqz v5, :cond_f4

    .line 882
    new-instance v5, Landroid/support/constraint/Guideline;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/constraint/Guideline;-><init>(Landroid/content/Context;)V

    .line 883
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/support/constraint/Guideline;->setId(I)V

    .line 884
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v1

    .line 885
    invoke-virtual {v2, v1}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 886
    invoke-virtual {p1, v5, v1}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f4

    :cond_16d
    return-void
.end method

.method public center(IIIIIIIF)V
    .registers 17

    move-object v6, p0

    move v4, p3

    move/from16 v7, p8

    if-ltz p4, :cond_8e

    if-ltz p7, :cond_86

    .line 931
    const/4 v0, 0x0

    cmpg-float v0, v7, v0

    .line 932
    if-lez v0, :cond_7e

    const/high16 v0, 0x3f800000

    cmpl-float v0, v7, v0

    if-gtz v0, :cond_7e

    const/4 v0, 0x1

    if-eq v4, v0, :cond_5f

    .line 933
    const/4 v0, 0x2

    if-ne v4, v0, :cond_1a

    goto :goto_5f

    :cond_1a
    const/4 v0, 0x6

    if-eq v4, v0, :cond_40

    const/4 v0, 0x7

    if-ne v4, v0, :cond_21

    .line 925
    goto :goto_40

    :cond_21
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    .line 926
    move v5, p4

    .line 0
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 927
    const/4 v2, 0x4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 928
    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 920
    goto :goto_7d

    :cond_40
    :goto_40
    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    .line 921
    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 922
    const/4 v2, 0x7

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 923
    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    goto :goto_7d

    .line 913
    :cond_5f
    :goto_5f
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 910
    const/4 v2, 0x2

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    :goto_7d
    return-void

    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bias must be between 0 and 1 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public centerHorizontally(II)V
    .registers 12

    if-nez p2, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000

    move-object v0, p0

    move v1, p1

    .line 0
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1322
    goto :goto_1d

    :cond_10
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    :goto_1d
    return-void
.end method

.method public centerHorizontally(IIIIIIIF)V
    .registers 18

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 0
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x2

    .line 952
    move-object v3, p0

    move v4, p1

    move v6, p5

    .line 953
    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    iget-object v1, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintSet$Constraint;

    move/from16 v2, p8

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    return-void
.end method

.method public centerHorizontallyRtl(II)V
    .registers 12

    if-nez p2, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000

    move-object v0, p0

    move v1, p1

    .line 0
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1336
    goto :goto_1d

    :cond_10
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    :goto_1d
    return-void
.end method

.method public centerHorizontallyRtl(IIIIIIIF)V
    .registers 18

    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 0
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x7

    .line 972
    move-object v3, p0

    move v4, p1

    move v6, p5

    .line 973
    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    iget-object v1, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintSet$Constraint;

    move/from16 v2, p8

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    return-void
.end method

.method public centerVertically(II)V
    .registers 12

    if-nez p2, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000

    move-object v0, p0

    move v1, p1

    .line 0
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1351
    goto :goto_1d

    :cond_10
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    :goto_1d
    return-void
.end method

.method public centerVertically(IIIIIIIF)V
    .registers 18

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 0
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x4

    .line 992
    move-object v3, p0

    move v4, p1

    move v6, p5

    .line 993
    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    iget-object v1, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintSet$Constraint;

    move/from16 v2, p8

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    return-void
.end method

.method public clear(I)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear(II)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1372
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_5e

    .line 1415
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1409
    :pswitch_24
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1410
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1411
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1412
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    goto :goto_5c

    .line 1403
    :pswitch_2d
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1404
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1405
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 1406
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    goto :goto_5c

    .line 1400
    :pswitch_36
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_5c

    .line 1393
    :pswitch_39
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1394
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1395
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 1396
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    goto :goto_5c

    .line 1387
    :pswitch_42
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1388
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1389
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 1390
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    goto :goto_5c

    .line 1381
    :pswitch_4b
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1382
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1383
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 1384
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    goto :goto_5c

    .line 1375
    :pswitch_54
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1376
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1377
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1378
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    :cond_5c
    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_36
        :pswitch_2d
        :pswitch_24
    .end packed-switch
.end method

.method public clone(Landroid/content/Context;I)V
    .registers 4

    .line 0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintLayout;)V
    .registers 12

    .line 0
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 706
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_d5

    .line 708
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 709
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 711
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_cd

    .line 715
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 716
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_38
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 719
    # invokes: Landroid/support/constraint/ConstraintSet$Constraint;->fillFrom(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V
    invoke-static {v5, v4, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->access$100(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 720
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 721
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_b1

    .line 722
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 723
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    .line 724
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 725
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 726
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 727
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 729
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v3

    .line 730
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v4

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_8b

    float-to-double v6, v4

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_8f

    .line 733
    :cond_8b
    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 734
    iput v4, v5, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 737
    :cond_8f
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 738
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 739
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_b1

    .line 740
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 741
    iget-boolean v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v3, :cond_b1

    .line 742
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 746
    :cond_b1
    instance-of v3, v2, Landroid/support/constraint/Barrier;

    if-eqz v3, :cond_c9

    .line 747
    check-cast v2, Landroid/support/constraint/Barrier;

    .line 748
    invoke-virtual {v2}, Landroid/support/constraint/Barrier;->allowsGoneWidget()Z

    move-result v3

    iput-boolean v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    .line 749
    invoke-virtual {v2}, Landroid/support/constraint/Barrier;->getReferencedIds()[I

    move-result-object v3

    iput-object v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 750
    invoke-virtual {v2}, Landroid/support/constraint/Barrier;->getType()I

    move-result v2

    iput v2, v5, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    :cond_c9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 713
    :cond_cd
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d5
    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintSet;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 694
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 695
    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintSet$Constraint;

    invoke-virtual {v3}, Landroid/support/constraint/ConstraintSet$Constraint;->clone()Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_2d
    return-void
.end method

.method public clone(Landroid/support/constraint/Constraints;)V
    .registers 11

    .line 0
    invoke-virtual {p1}, Landroid/support/constraint/Constraints;->getChildCount()I

    move-result v0

    .line 762
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_5b

    .line 764
    invoke-virtual {p1, v1}, Landroid/support/constraint/Constraints;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 765
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/Constraints$LayoutParams;

    .line 767
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_53

    .line 771
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 772
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_38
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 775
    instance-of v6, v2, Landroid/support/constraint/ConstraintHelper;

    if-eqz v6, :cond_4d

    .line 776
    check-cast v2, Landroid/support/constraint/ConstraintHelper;

    .line 777
    # invokes: Landroid/support/constraint/ConstraintSet$Constraint;->fillFromConstraints(Landroid/support/constraint/ConstraintHelper;ILandroid/support/constraint/Constraints$LayoutParams;)V
    invoke-static {v5, v2, v4, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->access$200(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/ConstraintHelper;ILandroid/support/constraint/Constraints$LayoutParams;)V

    .line 779
    :cond_4d
    # invokes: Landroid/support/constraint/ConstraintSet$Constraint;->fillFromConstraints(ILandroid/support/constraint/Constraints$LayoutParams;)V
    invoke-static {v5, v4, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->access$300(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/Constraints$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 769
    :cond_53
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    return-void
.end method

.method public connect(IIII)V
    .registers 12

    .line 0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1220
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    :cond_1b
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, -0x1

    packed-switch p2, :pswitch_data_1aa

    .line 1307
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1308
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_58
    if-ne p4, v1, :cond_60

    .line 1297
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1298
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto/16 :goto_188

    :cond_60
    if-ne p4, v2, :cond_68

    .line 1300
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1301
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    goto/16 :goto_188

    .line 1303
    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_88
    if-ne p4, v2, :cond_90

    .line 1286
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1287
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_188

    :cond_90
    if-ne p4, v1, :cond_98

    .line 1289
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1290
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_188

    .line 1292
    :cond_98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b8
    const/4 p2, 0x5

    if-ne p4, p2, :cond_c7

    .line 1275
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1276
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1277
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1278
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1279
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_188

    .line 1281
    :cond_c7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e7
    if-ne p4, v3, :cond_f1

    .line 1262
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1263
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1264
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_188

    :cond_f1
    if-ne p4, v4, :cond_fb

    .line 1266
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1267
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1268
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_188

    .line 1270
    :cond_fb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_11b
    if-ne p4, v4, :cond_124

    .line 1249
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1250
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1251
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_188

    :cond_124
    if-ne p4, v3, :cond_12d

    .line 1253
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1254
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1255
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_188

    .line 1257
    :cond_12d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_14d
    if-ne p4, v5, :cond_154

    .line 1237
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1238
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_188

    :cond_154
    if-ne p4, v0, :cond_15b

    .line 1241
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1242
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_188

    .line 1244
    :cond_15b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_17b
    if-ne p4, v5, :cond_182

    .line 1226
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1227
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_188

    :cond_182
    if-ne p4, v0, :cond_189

    .line 1229
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1230
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    :goto_188
    return-void

    .line 1232
    :cond_189
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "left to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_17b
        :pswitch_14d
        :pswitch_11b
        :pswitch_e7
        :pswitch_b8
        :pswitch_88
        :pswitch_58
    .end packed-switch
.end method

.method public connect(IIIII)V
    .registers 13

    .line 0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1107
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    :cond_1b
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, -0x1

    packed-switch p2, :pswitch_data_1b2

    .line 1205
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_58
    if-ne p4, v1, :cond_5f

    .line 1194
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1195
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto :goto_65

    :cond_5f
    if-ne p4, v2, :cond_69

    .line 1197
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1198
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1202
    :goto_65
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    goto/16 :goto_191

    .line 1200
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_89
    if-ne p4, v2, :cond_90

    .line 1182
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1183
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto :goto_96

    :cond_90
    if-ne p4, v1, :cond_9a

    .line 1185
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1186
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1190
    :goto_96
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    goto/16 :goto_191

    .line 1188
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_ba
    const/4 p2, 0x5

    if-ne p4, p2, :cond_c9

    .line 1171
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1172
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1173
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1174
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1175
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_191

    .line 1177
    :cond_c9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e9
    if-ne p4, v3, :cond_f2

    .line 1155
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1156
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1157
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_fa

    :cond_f2
    if-ne p4, v4, :cond_fe

    .line 1160
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1161
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1162
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1167
    :goto_fa
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    goto/16 :goto_191

    .line 1165
    :cond_fe
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_11e
    if-ne p4, v4, :cond_127

    .line 1140
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1141
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1142
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_12f

    :cond_127
    if-ne p4, v3, :cond_132

    .line 1144
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1145
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1146
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1151
    :goto_12f
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    goto :goto_191

    .line 1149
    :cond_132
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_152
    if-ne p4, v5, :cond_159

    .line 1126
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1127
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_15f

    :cond_159
    if-ne p4, v0, :cond_162

    .line 1130
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1131
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1136
    :goto_15f
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    goto :goto_191

    .line 1134
    :cond_162
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_182
    if-ne p4, v5, :cond_189

    .line 1113
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1114
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_18f

    :cond_189
    if-ne p4, v0, :cond_192

    .line 1116
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1117
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1122
    :goto_18f
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    :goto_191
    return-void

    .line 1120
    :cond_192
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Left to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_182
        :pswitch_152
        :pswitch_11e
        :pswitch_e9
        :pswitch_ba
        :pswitch_89
        :pswitch_58
    .end packed-switch
.end method

.method public constrainCircle(IIIF)V
    .registers 5

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    .line 1742
    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleConstraint:I

    .line 1743
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleRadius:I

    .line 1744
    iput p4, p1, Landroid/support/constraint/ConstraintSet$Constraint;->circleAngle:F

    return-void
.end method

.method public constrainDefaultHeight(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->heightDefault:I

    return-void
.end method

.method public constrainDefaultWidth(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->widthDefault:I

    return-void
.end method

.method public constrainHeight(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    return-void
.end method

.method public constrainMaxHeight(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->heightMax:I

    return-void
.end method

.method public constrainMaxWidth(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->widthMax:I

    return-void
.end method

.method public constrainMinHeight(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->heightMin:I

    return-void
.end method

.method public constrainMinWidth(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->widthMin:I

    return-void
.end method

.method public constrainPercentHeight(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->heightPercent:F

    return-void
.end method

.method public constrainPercentWidth(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->widthPercent:F

    return-void
.end method

.method public constrainWidth(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    return-void
.end method

.method public create(II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    const/4 v0, 0x1

    .line 2048
    iput-boolean v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2049
    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    return-void
.end method

.method public varargs createBarrier(II[I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    const/4 v0, 0x1

    .line 2063
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    .line 2064
    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    const/4 p2, 0x0

    .line 2065
    iput-boolean p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2066
    iput-object p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    return-void
.end method

.method public createHorizontalChain(IIII[I[FI)V
    .registers 18

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 0
    invoke-direct/range {v0 .. v9}, Landroid/support/constraint/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    return-void
.end method

.method public createHorizontalChainRtl(IIII[I[FI)V
    .registers 18

    const/4 v8, 0x6

    const/4 v9, 0x7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 0
    invoke-direct/range {v0 .. v9}, Landroid/support/constraint/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    return-void
.end method

.method public createVerticalChain(IIII[I[FI)V
    .registers 20

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 0
    array-length v0, v7

    .line 1014
    const/4 v1, 0x2

    if-lt v0, v1, :cond_73

    if-eqz v8, :cond_18

    .line 1015
    array-length v0, v8

    array-length v1, v7

    if-ne v0, v1, :cond_10

    goto :goto_18

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1018
    throw v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    if-eqz v8, :cond_25

    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1020
    move-result-object v1

    aget v2, v8, v0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    :cond_25
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1022
    move-result-object v1

    move/from16 v2, p7

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    aget v1, v7, v0

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 1023
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1024
    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 1025
    :goto_3b
    array-length v0, v7

    if-ge v10, v0, :cond_65

    aget v0, v7, v10

    aget v1, v7, v10

    const/4 v2, 0x3

    add-int/lit8 v11, v10, -0x1

    aget v3, v7, v11

    const/4 v4, 0x4

    .line 1026
    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    aget v1, v7, v11

    const/4 v2, 0x4

    aget v3, v7, v10

    const/4 v4, 0x3

    .line 1028
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    if-eqz v8, :cond_62

    aget v0, v7, v10

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, v8, v10

    .line 1031
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    :cond_62
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    :cond_65
    array-length v0, v7

    sub-int/2addr v0, v9

    aget v1, v7, v0

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    .line 1012
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    return-void

    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApplyElevation(I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iget-boolean p1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    return p1
.end method

.method public getParameters(I)Landroid/support/constraint/ConstraintSet$Constraint;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/content/Context;I)V
    .registers 7

    .line 0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2146
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 2151
    :try_start_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_c
    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    if-eqz v0, :cond_37

    packed-switch v0, :pswitch_data_4a

    goto :goto_3a

    .line 2159
    :pswitch_15
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2160
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/support/constraint/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v2

    const-string v3, "Guideline"

    .line 2161
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2162
    iput-boolean v1, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2164
    :cond_2b
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v1, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 2156
    :cond_37
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2153
    :goto_3a
    :pswitch_3a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_3e} :catch_44
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3e} :catch_3f

    goto :goto_c

    :catch_3f
    move-exception p1

    .line 2176
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    :catch_44
    move-exception p1

    .line 2174
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_48
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x2
        :pswitch_15
        :pswitch_3a
    .end packed-switch
.end method

.method public removeFromHorizontalChain(I)V
    .registers 10

    .line 0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1996
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1997
    iget v6, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1998
    iget v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    const/4 v1, -0x1

    if-ne v6, v1, :cond_6a

    if-eq v7, v1, :cond_22

    goto :goto_6a

    .line 2017
    :cond_22
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 2018
    iget v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    if-ne v2, v1, :cond_2a

    if-eq v7, v1, :cond_61

    :cond_2a
    if-eq v2, v1, :cond_40

    if-eq v7, v1, :cond_40

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v7

    .line 2022
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x6

    const/4 v4, 0x7

    move v1, v7

    move v3, v6

    .line 2023
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_61

    :cond_40
    if-ne v6, v1, :cond_44

    if-eq v7, v1, :cond_61

    .line 2025
    :cond_44
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    if-eq v2, v1, :cond_53

    const/4 v2, 0x7

    .line 2027
    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_61

    .line 2028
    :cond_53
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    if-eq v2, v1, :cond_61

    const/4 v2, 0x6

    .line 2030
    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_61
    :goto_61
    const/4 v0, 0x6

    .line 2034
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    const/4 v0, 0x7

    .line 2035
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    goto :goto_a8

    :cond_6a
    :goto_6a
    if-eq v6, v1, :cond_7f

    if-eq v7, v1, :cond_7f

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v6

    move v3, v7

    .line 2002
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x1

    const/4 v4, 0x2

    move v1, v7

    move v3, v6

    .line 2003
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_a0

    :cond_7f
    if-ne v6, v1, :cond_83

    if-eq v7, v1, :cond_a0

    .line 2005
    :cond_83
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    if-eq v2, v1, :cond_92

    const/4 v2, 0x2

    .line 2007
    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_a0

    .line 2008
    :cond_92
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    if-eq v2, v1, :cond_a0

    const/4 v2, 0x1

    .line 2010
    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_a0
    :goto_a0
    const/4 v0, 0x1

    .line 2013
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    const/4 v0, 0x2

    .line 2014
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public removeFromVerticalChain(I)V
    .registers 11

    .line 0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1964
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1965
    iget v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1966
    iget v8, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    const/4 v1, -0x1

    if-ne v7, v1, :cond_21

    if-eq v8, v1, :cond_57

    :cond_21
    if-eq v7, v1, :cond_36

    if-eq v8, v1, :cond_36

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    move v4, v8

    .line 1970
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x3

    const/4 v5, 0x4

    move v2, v8

    move v4, v7

    .line 1971
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_57

    :cond_36
    if-ne v7, v1, :cond_3a

    if-eq v8, v1, :cond_57

    .line 1973
    :cond_3a
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    if-eq v2, v1, :cond_49

    const/4 v3, 0x4

    .line 1975
    iget v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_57

    .line 1976
    :cond_49
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    if-eq v2, v1, :cond_57

    const/4 v3, 0x3

    .line 1978
    iget v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_57
    :goto_57
    const/4 v0, 0x3

    .line 1983
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    const/4 v0, 0x4

    .line 1984
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    return-void
.end method

.method public setAlpha(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    return-void
.end method

.method public setApplyElevation(IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput-boolean p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    return-void
.end method

.method public setBarrierType(II)V
    .registers 3

    return-void
.end method

.method public setDimensionRatio(ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput-object p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    return-void
.end method

.method public setElevation(IF)V
    .registers 4

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 1569
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    return-void
.end method

.method public setGoneMargin(III)V
    .registers 4

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    packed-switch p2, :pswitch_data_2a

    .line 1486
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1483
    :pswitch_f
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    goto :goto_28

    .line 1480
    :pswitch_12
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    goto :goto_28

    .line 1478
    :pswitch_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseline does not support margins"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1475
    :pswitch_1d
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    goto :goto_28

    .line 1472
    :pswitch_20
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    goto :goto_28

    .line 1469
    :pswitch_23
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    goto :goto_28

    .line 1466
    :pswitch_26
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public setGuidelineBegin(II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 2077
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 2078
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    const/high16 p2, -0x40800000

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    return-void
.end method

.method public setGuidelineEnd(II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 2090
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 2091
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    const/high16 p2, -0x40800000

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    return-void
.end method

.method public setGuidelinePercent(IF)V
    .registers 4

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 2102
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 2103
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    return-void
.end method

.method public setHorizontalBias(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    return-void
.end method

.method public setHorizontalChainStyle(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    return-void
.end method

.method public setHorizontalWeight(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    return-void
.end method

.method public setMargin(III)V
    .registers 4

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    packed-switch p2, :pswitch_data_2a

    .line 1451
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1448
    :pswitch_f
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    goto :goto_28

    .line 1445
    :pswitch_12
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    goto :goto_28

    .line 1443
    :pswitch_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseline does not support margins"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1440
    :pswitch_1d
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    goto :goto_28

    .line 1437
    :pswitch_20
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    goto :goto_28

    .line 1434
    :pswitch_23
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    goto :goto_28

    .line 1431
    :pswitch_26
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public setRotation(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    return-void
.end method

.method public setRotationX(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    return-void
.end method

.method public setRotationY(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    return-void
.end method

.method public setScaleX(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    return-void
.end method

.method public setScaleY(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    return-void
.end method

.method public setTransformPivot(IFF)V
    .registers 4

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    .line 1657
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 1658
    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    return-void
.end method

.method public setTransformPivotX(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    return-void
.end method

.method public setTransformPivotY(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    return-void
.end method

.method public setTranslation(IFF)V
    .registers 4

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    .line 1690
    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 1691
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    return-void
.end method

.method public setTranslationX(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    return-void
.end method

.method public setTranslationY(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    return-void
.end method

.method public setTranslationZ(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    return-void
.end method

.method public setVerticalBias(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    return-void
.end method

.method public setVerticalChainStyle(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    return-void
.end method

.method public setVerticalWeight(IF)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    return-void
.end method

.method public setVisibility(II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    return-void
.end method
