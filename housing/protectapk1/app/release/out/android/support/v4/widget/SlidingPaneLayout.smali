.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 201
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_23

    .line 202
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    .line 203
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_23

    .line 205
    :cond_1c
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    :goto_23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 0
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 0
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x33333334

    .line 111
    iput p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    const/4 p2, 0x1

    .line 191
    iput-boolean p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 193
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 195
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42000000

    mul-float p3, p3, p1

    const/high16 v0, 0x3f000000

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 262
    iput p3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    const/4 p3, 0x0

    .line 264
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 266
    new-instance p3, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {p3, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, p3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 267
    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 269
    new-instance p2, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    invoke-direct {p2, p0}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v0, p2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 270
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 p3, 0x43c80000

    mul-float p1, p1, p3

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .registers 4

    .line 0
    iget-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    const/4 v0, 0x0

    if-nez p1, :cond_e

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    return v0

    .line 863
    :cond_e
    :goto_e
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    const/4 p1, 0x1

    return p1
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .registers 7

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_44

    if-eqz p3, :cond_44

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int p2, v1

    shl-int/lit8 p2, p2, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p2, p3

    .line 977
    iget-object p3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez p3, :cond_28

    .line 978
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 980
    :cond_28
    iget-object p3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 981
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_40

    .line 982
    iget-object p2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 984
    :cond_40
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    goto :goto_61

    .line 985
    :cond_44
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    if-eqz p2, :cond_61

    .line 986
    iget-object p2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_54

    .line 987
    iget-object p2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 989
    :cond_54
    new-instance p2, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {p2, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 990
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_61
    :goto_61
    return-void
.end method

.method private openPane(Landroid/view/View;I)Z
    .registers 3

    .line 0
    iget-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez p1, :cond_f

    const/high16 p1, 0x3f800000

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 871
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return p1
.end method

.method private parallaxOtherViews(F)V
    .registers 11

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 1171
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1172
    iget-boolean v2, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_16

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_18

    :cond_16
    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_18
    if-gtz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 1174
    :goto_1d
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    :goto_21
    if-ge v3, v2, :cond_5d

    .line 1176
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1177
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v4, v5, :cond_2c

    goto :goto_5a

    .line 1179
    :cond_2c
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    const/high16 v6, 0x3f800000

    sub-float v5, v6, v5

    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v7, v7

    mul-float v5, v5, v7

    float-to-int v5, v5

    .line 1180
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v7, v6, p1

    .line 1181
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v8, v8

    mul-float v7, v7, v8

    float-to-int v7, v7

    sub-int/2addr v5, v7

    if-eqz v0, :cond_46

    neg-int v5, v5

    .line 1184
    :cond_46
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v1, :cond_5a

    if-eqz v0, :cond_51

    .line 1187
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v5, v6

    goto :goto_55

    :cond_51
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v5, v6, v5

    :goto_55
    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_5d
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .registers 5

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 416
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v0, v2, :cond_10

    return v3

    .line 420
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 422
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1

    :cond_20
    return v3
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 18

    move-object v0, p1

    .line 0
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_52

    .line 1206
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1207
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 1208
    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 1209
    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_16
    if-ltz v5, :cond_52

    .line 1214
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 1215
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_4f

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_4f

    add-int v8, p5, v4

    .line 1216
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_4f

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_4f

    .line 1217
    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 1218
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    .line 1217
    move v9, p3

    invoke-virtual/range {v6 .. v11}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_4f

    return v2

    :cond_4f
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    :cond_52
    if-eqz p2, :cond_65

    .line 1224
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_5c

    move v1, p3

    goto :goto_5e

    :cond_5c
    move v1, p3

    neg-int v1, v1

    :goto_5e
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    :goto_66
    return v2
.end method

.method public canSlide()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 0
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public closePane()Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1059
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_13

    .line 1060
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    return-void

    .line 1064
    :cond_13
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_9

    .line 348
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    :cond_9
    const/16 p1, 0x20

    .line 350
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_9

    .line 341
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    :cond_9
    const/16 p1, 0x20

    .line 343
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_b

    .line 335
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    :cond_b
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1137
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1140
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    .line 1142
    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1145
    :goto_e
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_48

    if-nez v0, :cond_20

    goto :goto_48

    .line 1151
    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1152
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1154
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1157
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1158
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_41

    .line 1161
    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v4, v1, v4

    move v6, v4

    move v4, v1

    move v1, v6

    .line 1165
    :goto_41
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1166
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_48
    :goto_48
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 9

    .line 0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 999
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1001
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_4b

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v0, :cond_4b

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_4b

    .line 1003
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1004
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1005
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_46

    .line 1007
    :cond_34
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1009
    :goto_46
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1012
    :cond_4b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 1014
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_11

    :cond_c
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    return-object v0
.end method

.method public getCoveredFadeColor()I
    .registers 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 0
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .registers 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 0
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .registers 3

    .line 0
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    return-void
.end method

.method isDimmed(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 0
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1232
    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_1a

    iget-boolean p1, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz p1, :cond_1a

    iget p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method isLayoutRtlSupport()Z
    .registers 3

    .line 0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isOpen()Z
    .registers 3

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isSlideable()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 438
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 439
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 440
    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 442
    :cond_1d
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 766
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_2a

    .line 768
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 770
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 770
    invoke-virtual {v3, v1, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 775
    :cond_2a
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_a8

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v1, :cond_36

    if-eqz v0, :cond_36

    goto/16 :goto_a8

    :cond_36
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a2

    if-ne v0, v2, :cond_3d

    goto :goto_a2

    :cond_3d
    if-eqz v0, :cond_70

    const/4 v1, 0x2

    if-eq v0, v1, :cond_43

    goto :goto_94

    .line 803
    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 805
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 806
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 807
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_94

    cmpl-float v0, v1, v0

    if-lez v0, :cond_94

    .line 809
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 810
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    return v3

    .line 789
    :cond_70
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 791
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 792
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 793
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 795
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 796
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_94

    const/4 v0, 0x1

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v0, 0x0

    .line 816
    :goto_95
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_a1

    if-eqz v0, :cond_a0

    goto :goto_a1

    :cond_a0
    const/4 v2, 0x0

    :cond_a1
    :goto_a1
    return v2

    .line 781
    :cond_a2
    :goto_a2
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    return v3

    .line 776
    :cond_a8
    :goto_a8
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 777
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 24

    move-object/from16 v0, p0

    .line 0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    const/4 v2, 0x1

    .line 661
    if-eqz v1, :cond_10

    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 663
    goto :goto_15

    :cond_10
    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    :goto_15
    sub-int v3, p4, p2

    .line 666
    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    goto :goto_22

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    .line 667
    :goto_22
    if-eqz v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2d

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    .line 668
    move-result v5

    :goto_2d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    .line 670
    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    .line 674
    move-result v7

    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 675
    if-eqz v8, :cond_47

    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v8, :cond_44

    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    if-eqz v8, :cond_44

    const/high16 v8, 0x3f800000

    goto :goto_45

    :cond_44
    const/4 v8, 0x0

    :goto_45
    iput v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    :cond_47
    move v11, v4

    move v12, v11

    const/4 v4, 0x0

    .line 679
    :goto_4a
    if-ge v4, v7, :cond_df

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    .line 681
    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5c

    const/high16 v8, 0x3f800000

    .line 685
    goto/16 :goto_da

    :cond_5c
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 687
    check-cast v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 690
    move-result v15

    iget-boolean v2, v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 691
    if-eqz v2, :cond_a5

    iget v2, v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v8, v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v8

    .line 692
    sub-int v8, v3, v5

    iget v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int v10, v8, v10

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 694
    sub-int/2addr v10, v12

    sub-int/2addr v10, v2

    iput v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    .line 695
    if-eqz v1, :cond_82

    iget v2, v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_84

    :cond_82
    iget v2, v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_84
    add-int v16, v12, v2

    .line 696
    add-int v16, v16, v10

    div-int/lit8 v17, v15, 0x2

    add-int v9, v16, v17

    if-le v9, v8, :cond_90

    const/4 v8, 0x1

    goto :goto_91

    :cond_90
    const/4 v8, 0x0

    :goto_91
    iput-boolean v8, v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 697
    int-to-float v8, v10

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    add-int/2addr v2, v8

    .line 699
    add-int/2addr v2, v12

    int-to-float v8, v8

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v8, 0x3f800000

    .line 700
    goto :goto_bf

    :cond_a5
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_bc

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 701
    if-eqz v2, :cond_bc

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v8, 0x3f800000

    sub-float v9, v8, v2

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v2, v2

    mul-float v9, v9, v2

    float-to-int v2, v9

    move v9, v2

    move v2, v11

    goto :goto_c0

    :cond_bc
    const/high16 v8, 0x3f800000

    move v2, v11

    :goto_bf
    const/4 v9, 0x0

    :goto_c0
    if-eqz v1, :cond_c8

    sub-int v10, v3, v2

    add-int/2addr v10, v9

    sub-int v9, v10, v15

    goto :goto_cc

    :cond_c8
    sub-int v9, v2, v9

    .line 718
    add-int v10, v9, v15

    :goto_cc
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 719
    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v13, v9, v6, v10, v12}, Landroid/view/View;->layout(IIII)V

    .line 721
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v11, v9

    move v12, v2

    :goto_da
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    .line 724
    goto/16 :goto_4a

    :cond_df
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 725
    if-eqz v1, :cond_11b

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 726
    if-eqz v1, :cond_106

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 727
    if-eqz v1, :cond_f0

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 729
    :cond_f0
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 730
    if-eqz v1, :cond_116

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_116

    :cond_106
    const/4 v1, 0x0

    .line 735
    :goto_107
    if-ge v1, v7, :cond_116

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    add-int/lit8 v1, v1, 0x1

    .line 738
    goto :goto_107

    :cond_116
    :goto_116
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 741
    :cond_11b
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 23

    move-object/from16 v0, p0

    .line 0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 448
    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 449
    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 450
    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000

    .line 453
    if-eq v1, v7, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_28

    if-ne v1, v6, :cond_23

    goto :goto_47

    :cond_23
    if-nez v1, :cond_47

    const/16 v2, 0x12c

    .line 465
    goto :goto_47

    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_30
    if-nez v3, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3f

    if-nez v3, :cond_47

    const/high16 v3, -0x80000000

    const/16 v4, 0x12c

    .line 477
    goto :goto_47

    :cond_3f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Height must not be UNSPECIFIED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    :goto_47
    const/4 v1, 0x0

    if-eq v3, v6, :cond_5b

    if-eq v3, v7, :cond_4f

    const/4 v4, 0x0

    .line 485
    const/4 v5, 0x0

    goto :goto_67

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 488
    move v5, v4

    goto :goto_67

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 494
    move v5, v4

    const/4 v4, 0x0

    :goto_67
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    .line 496
    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_80

    const-string v10, "SlidingPaneLayout"

    .line 499
    const-string v11, "onMeasure: More than two child views are not supported."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_80
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v13, v4

    move v14, v8

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_88
    const/16 v15, 0x8

    const/16 v16, 0x1

    .line 508
    if-ge v4, v9, :cond_12d

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    .line 509
    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v7, v18

    .line 511
    check-cast v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    .line 512
    if-ne v10, v15, :cond_a4

    iput-boolean v1, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 516
    goto/16 :goto_124

    :cond_a4
    iget v10, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    .line 517
    if-lez v10, :cond_b4

    iget v10, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 521
    add-float/2addr v12, v10

    iget v10, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v10, :cond_b4

    .line 525
    goto/16 :goto_124

    :cond_b4
    iget v10, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v15, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    .line 526
    add-int/2addr v10, v15

    iget v15, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v15, v1, :cond_c9

    sub-int v1, v8, v10

    .line 527
    const/high16 v10, -0x80000000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v10, 0x40000000

    .line 529
    goto :goto_df

    :cond_c9
    iget v1, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_d7

    sub-int v1, v8, v10

    .line 530
    const/high16 v10, 0x40000000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_df

    .line 533
    :cond_d7
    const/high16 v10, 0x40000000

    iget v1, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 537
    move-result v1

    :goto_df
    iget v15, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v15, v10, :cond_eb

    .line 538
    const/high16 v10, -0x80000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 539
    move-result v15

    goto :goto_ff

    :cond_eb
    iget v10, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v10, v15, :cond_f7

    .line 540
    const/high16 v10, 0x40000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_ff

    .line 542
    :cond_f7
    const/high16 v10, 0x40000000

    iget v15, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 545
    move-result v15

    :goto_ff
    invoke-virtual {v6, v1, v15}, Landroid/view/View;->measure(II)V

    .line 546
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 547
    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/high16 v15, -0x80000000

    if-ne v3, v15, :cond_114

    .line 550
    if-le v10, v13, :cond_114

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    :cond_114
    sub-int/2addr v14, v1

    if-gez v14, :cond_119

    const/4 v1, 0x1

    .line 554
    goto :goto_11a

    :cond_119
    const/4 v1, 0x0

    :goto_11a
    iput-boolean v1, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 555
    or-int/2addr v1, v11

    iget-boolean v7, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 556
    if-eqz v7, :cond_123

    iput-object v6, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    :cond_123
    move v11, v1

    :goto_124
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000

    goto/16 :goto_88

    :cond_12d
    if-nez v11, :cond_134

    const/4 v1, 0x0

    cmpl-float v3, v12, v1

    .line 562
    if-lez v3, :cond_22d

    :cond_134
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int v1, v8, v1

    const/4 v3, 0x0

    .line 565
    :goto_139
    if-ge v3, v9, :cond_22d

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    .line 567
    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v15, :cond_14c

    :cond_145
    :goto_145
    move/from16 v19, v1

    :cond_147
    :goto_147
    const/4 v1, 0x0

    const/high16 v6, 0x40000000

    .line 571
    goto/16 :goto_225

    :cond_14c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 573
    check-cast v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v15, :cond_159

    .line 577
    goto :goto_145

    :cond_159
    iget v7, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v7, :cond_166

    iget v7, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-lez v7, :cond_166

    const/4 v7, 0x1

    goto :goto_167

    :cond_166
    const/4 v7, 0x0

    :goto_167
    if-eqz v7, :cond_16b

    .line 578
    const/4 v10, 0x0

    goto :goto_16f

    :cond_16b
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 579
    :goto_16f
    if-eqz v11, :cond_1b9

    iget-object v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 580
    if-eq v4, v15, :cond_1b9

    iget v15, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-gez v15, :cond_145

    if-gt v10, v1, :cond_182

    iget v10, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_145

    .line 587
    :cond_182
    if-eqz v7, :cond_1a7

    iget v7, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v7, v10, :cond_192

    .line 588
    const/high16 v7, -0x80000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v7, 0x40000000

    .line 590
    goto :goto_1b1

    :cond_192
    iget v7, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v7, v10, :cond_19e

    .line 591
    const/high16 v7, 0x40000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1b1

    .line 594
    :cond_19e
    const/high16 v7, 0x40000000

    iget v6, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1b1

    .line 599
    :cond_1a7
    const/high16 v7, 0x40000000

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 598
    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 601
    move-result v6

    :goto_1b1
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 603
    move-result v10

    invoke-virtual {v4, v10, v6}, Landroid/view/View;->measure(II)V

    .line 605
    goto :goto_145

    :cond_1b9
    iget v7, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v7, v7, v15

    .line 607
    if-lez v7, :cond_145

    iget v7, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    .line 609
    if-nez v7, :cond_1e9

    iget v7, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x2

    if-ne v7, v15, :cond_1d4

    .line 610
    const/high16 v7, -0x80000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v15, v17

    const/high16 v7, 0x40000000

    .line 612
    goto :goto_1f5

    :cond_1d4
    iget v7, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v7, v15, :cond_1e0

    .line 613
    const/high16 v7, 0x40000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    goto :goto_1f3

    .line 616
    :cond_1e0
    const/high16 v7, 0x40000000

    iget v15, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    goto :goto_1f3

    .line 621
    :cond_1e9
    const/high16 v7, 0x40000000

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 620
    move-result v15

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    :goto_1f3
    move/from16 v15, v17

    .line 626
    :goto_1f5
    if-eqz v11, :cond_20d

    iget v7, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v6, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v6

    sub-int v6, v8, v7

    move/from16 v19, v1

    .line 628
    const/high16 v7, 0x40000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 631
    if-eq v10, v6, :cond_147

    invoke-virtual {v4, v1, v15}, Landroid/view/View;->measure(II)V

    goto/16 :goto_147

    :cond_20d
    move/from16 v19, v1

    .line 635
    const/4 v1, 0x0

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    .line 636
    move-result v7

    iget v6, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    int-to-float v7, v7

    mul-float v6, v6, v7

    div-float/2addr v6, v12

    float-to-int v6, v6

    add-int/2addr v10, v6

    .line 637
    const/high16 v6, 0x40000000

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 639
    move-result v7

    invoke-virtual {v4, v7, v15}, Landroid/view/View;->measure(II)V

    :goto_225
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v19

    const/16 v15, 0x8

    .line 646
    goto/16 :goto_139

    :cond_22d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    .line 648
    move-result v1

    add-int/2addr v13, v1

    invoke-virtual {v0, v2, v13}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 649
    .line 651
    iput-boolean v11, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-eqz v1, :cond_24b

    .line 653
    if-nez v11, :cond_24b

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    :cond_24b
    return-void
.end method

.method onPanelDragged(I)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_8

    const/4 p1, 0x0

    .line 945
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    return-void

    .line 948
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 949
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 951
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v0, :cond_23

    .line 952
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int p1, v3, v2

    :cond_23
    if-eqz v0, :cond_2a

    .line 954
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    goto :goto_2e

    :cond_2a
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    :goto_2e
    if-eqz v0, :cond_33

    .line 955
    iget v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_35

    :cond_33
    iget v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_35
    add-int/2addr v2, v0

    sub-int/2addr p1, v2

    int-to-float p1, p1

    .line 958
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 960
    iget p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz p1, :cond_47

    .line 961
    iget p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 964
    :cond_47
    iget-boolean p1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz p1, :cond_54

    .line 965
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 967
    :cond_54
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 0
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_8

    .line 1270
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1274
    :cond_8
    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .line 1275
    invoke-virtual {p1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1277
    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v0, :cond_19

    .line 1278
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    goto :goto_1c

    .line 1280
    :cond_19
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    .line 1282
    :goto_1c
    iget-boolean p1, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 0
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1261
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1262
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    goto :goto_16

    :cond_14
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :goto_16
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_8

    const/4 p1, 0x1

    .line 749
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_9

    .line 824
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 827
    :cond_9
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_62

    goto :goto_60

    .line 841
    :pswitch_17
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 844
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v2, v1, v2

    .line 845
    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v3, p1, v3

    .line 846
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    mul-int v4, v4, v4

    int-to-float v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_60

    .line 847
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v1, v1

    float-to-int p1, p1

    .line 848
    invoke-virtual {v2, v3, v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 850
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    goto :goto_60

    .line 833
    :pswitch_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 835
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 836
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    :cond_60
    :goto_60
    return v0

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_54
        :pswitch_17
    .end packed-switch
.end method

.method public openPane()Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 756
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_16

    iget-boolean p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez p2, :cond_16

    .line 757
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, p2, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_16
    return-void
.end method

.method setAllChildrenVisible()V
    .registers 7

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_19

    .line 401
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 402
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16

    .line 403
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 0
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .registers 2
    .param p1    # Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 0
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    return-void
.end method

.method public setParallaxDistance(I)V
    .registers 2

    .line 0
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 282
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 0
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 0
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceRight(I)V
    .registers 3

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSliderFadeColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 0
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return-void
.end method

.method public smoothSlideClosed()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    return-void
.end method

.method public smoothSlideOpen()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    return-void
.end method

.method smoothSlideTo(FI)Z
    .registers 7

    .line 0
    iget-boolean p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v0, 0x0

    if-nez p2, :cond_6

    return v0

    .line 1035
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p2

    .line 1036
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz p2, :cond_32

    .line 1040
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result p2

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr p2, v1

    .line 1041
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1042
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float p2, p2

    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v3, v3

    mul-float p1, p1, v3

    add-float/2addr p2, p1

    int-to-float p1, v1

    add-float/2addr p2, p1

    sub-float/2addr v2, p2

    float-to-int p1, v2

    goto :goto_41

    .line 1044
    :cond_32
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result p2

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    .line 1045
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 1048
    :goto_41
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, p1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 1049
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1050
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_59
    return v0
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .registers 19

    move-object/from16 v0, p1

    .line 0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 355
    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    .line 356
    :goto_16
    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_26

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    .line 357
    move-result v4

    sub-int/2addr v3, v4

    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    .line 358
    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 363
    if-eqz v0, :cond_4c

    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v7

    .line 364
    if-eqz v7, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    .line 365
    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    .line 366
    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    .line 367
    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_50

    :cond_4c
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 372
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_50
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_55
    if-ge v12, v11, :cond_ae

    .line 373
    move-object/from16 v13, p0

    invoke-virtual {v13, v12}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ne v14, v0, :cond_60

    .line 378
    goto :goto_b0

    :cond_60
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v6, 0x8

    if-ne v15, v6, :cond_6b

    move/from16 v16, v1

    goto :goto_a7

    :cond_6b
    if-eqz v1, :cond_6f

    move v6, v3

    .line 383
    goto :goto_70

    :cond_6f
    move v6, v2

    :goto_70
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 382
    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    .line 384
    move-result v6

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    if-eqz v1, :cond_86

    move/from16 v16, v1

    move v0, v2

    goto :goto_89

    :cond_86
    move/from16 v16, v1

    .line 386
    move v0, v3

    :goto_89
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 385
    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 387
    move-result v0

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v6, v7, :cond_a3

    if-lt v15, v9, :cond_a3

    if-gt v0, v8, :cond_a3

    if-gt v1, v10, :cond_a3

    const/4 v6, 0x4

    .line 395
    goto :goto_a4

    :cond_a3
    const/4 v6, 0x0

    :goto_a4
    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_a7
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v16

    move-object/from16 v0, p1

    goto :goto_55

    :cond_ae
    move-object/from16 v13, p0

    :goto_b0
    return-void
.end method
